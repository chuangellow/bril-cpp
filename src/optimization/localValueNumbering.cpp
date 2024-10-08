#include "optimization/localValueNumbering.h"
#include "common/logger.h"

ValueNumbering::ValueNumbering() : _number(0) {}

int ValueNumbering::getNumber(const std::string& name) {
    if (name2number.find(name) == name2number.end()) {
        return -1;
    }
    return name2number[name];
}

int ValueNumbering::addNumber(const std::string& name) {
    int number = getNumber(name);
    if (number != -1) return number;
    number = _number++;
    name2number[name] = number;
    number2name[number] = name;
    return number;
}

int ValueNumbering::refreshNumber(const std::string& name) {
    int number = _number++;
    name2number[name] = number;
    number2name[number] = name;
    return number;
}

long long ValueNumbering::stov(const std::string& value) {
    if (value == "true") return true;
    if (value == "false") return false;
    return stoll(value);
}

long long ValueNumbering::evaluate(const std::string& type1, const std::string& value1, const std::string& type2, const std::string& value2, const std::string& op) {
    long long result;
    if (op == "add") result = stov(value1) + stov(value2);
    else if (op == "sub") result = stov(value1) - stov(value2);
    else if (op == "mul") result = stov(value1) * stov(value2);
    else if (op == "div") result = stov(value1) / stov(value2);
    else if (op == "eq") result = stov(value1) == stov(value2);
    else if (op == "lt") result = stov(value1) < stov(value2);
    else if (op == "gt") result = stov(value1) > stov(value2);
    else if (op == "le") result = stov(value1) <= stov(value2);
    else if (op == "ge") result = stov(value1) >= stov(value2);
    else if (op == "and") result = stov(value1) && stov(value2);
    else if (op == "or") result = stov(value1) || stov(value2);
    return result;
}

IdentityType checkAlgebraicIdentity(std::tuple<int, std::string, int>& nameTuple) {
    auto [arg1Number, op, arg2Number] = nameTuple;
    if (arg1Number == arg2Number) {
        if (op == "and") return IDENTITY_AND;
        if (op == "or") return IDENTITY_OR;
        if (op == "minus") return IDENTITY_MINUS;
        if (op == "eq") return IDENTITY_EQUAL;
        if (op == "le") return IDENTITY_LE;
        if (op == "ge") return IDENTITY_GE;
    }
    return IDENTITY_NONE;
}

void ValueNumbering::update(json& instr, const LVNConfig& config) {
    std::string op = instr["op"];
    std::string dest = instr["dest"];
    if (op == "const") {
        int numberValue = refreshNumber(dest);
        LOG_DEBUG(dest + " <-- " + std::to_string(numberValue));
        if (config.enableConstantFolding) name2const[dest] = {instr["type"], std::to_string(instr["value"].get<long long>())};
        return;
    }
    std::vector<std::string> args;
    for (auto& arg : instr["args"]) {
        args.push_back(arg);
    }
    if (args.size() != 2) return; // Only consider binary operations
    std::string arg1 = args[0], arg2 = args[1];
    int arg1Number = addNumber(arg1), arg2Number = addNumber(arg2);
    std::tuple<int, std::string, int> nameTuple = {arg1Number, op, arg2Number};
    if (config.enableCommutative) checkCommutative(nameTuple);
    if (config.enableConstantFolding) {
        if (name2const.find(arg1) != name2const.end() && name2const.find(arg2) != name2const.end()) {
            auto [arg1Type, arg1Value] = name2const[arg1];
            auto [arg2Type, arg2Value] = name2const[arg2];
            long long result = evaluate(arg1Type, arg1Value, arg2Type, arg2Value, op);
            instr = json::object({
                {"op", "const"},
                {"dest", dest},
                {"type", instr["type"]},
                {"value", result}
            });
            if (instr["type"] == "bool") {
                instr["value"] = result ? true: false;
            }
            name2const[dest] = {instr["type"], std::to_string(instr["value"].get<long long>())};
            return;
        }
    }
    if (config.enableAlgebraicIdentity) {
        IdentityType identityType = checkAlgebraicIdentity(nameTuple);
        if (identityType == IDENTITY_AND || identityType == IDENTITY_OR) {
            instr["op"] = "id";
            instr["args"] = json::array({number2name[std::get<0>(nameTuple)]});
            name2number[dest] = std::get<0>(nameTuple);
            return;
        }
        if (identityType == IDENTITY_MINUS) {
            instr["op"] = "const";
            instr["dest"] = dest;
            instr["type"] = instr["type"];
            instr["value"] = 0;
            name2const[dest] = {instr["type"], std::to_string(instr["value"].get<long long>())};
            return;
        }
        if (identityType == IDENTITY_EQUAL || identityType == IDENTITY_LE || identityType == IDENTITY_GE) {
            instr["op"] = "const";
            instr["dest"] = dest;
            instr["type"] = instr["type"];
            instr["value"] = true;
            name2const[dest] = {instr["type"], std::to_string(instr["value"].get<long long>())};
            return;
        }
    }
    if (hashTable.find(nameTuple) != hashTable.end()) {
        int numberValue = hashTable[nameTuple];
        LOG_DEBUG(dest + "(" + std::to_string(numberValue) + ")" + " <-- " + arg1 + "(" + std::to_string(arg1Number) + ")" + " " + op + " " + arg2 + "(" + std::to_string(arg2Number) + ")");
        if (name2number[number2name[numberValue]] != numberValue) {
            int destNumber = refreshNumber(dest);
            hashTable[nameTuple] = destNumber;
            return;
        }
        instr["op"] = "id";
        instr["args"] = json::array({number2name[hashTable[nameTuple]]});
        name2number[dest] = hashTable[nameTuple];
    }
    else {
        int destNumber = refreshNumber(dest);
        hashTable[nameTuple] = destNumber;
    }
}

void checkCommutative(std::tuple<int, std::string, int>& nameTuple) {
    std::unordered_set<std::string> commutativeOps = {
        "add", "mul", "and", "or", "eq"
    };
    auto [arg1Number, op, arg2Number] = nameTuple;
    nameTuple = {std::min(arg1Number, arg2Number), op, std::max(arg1Number, arg2Number)};
    return;
}

void localValueNumbering(std::vector<std::vector<json>>& blocks, const LVNConfig& config) {
    for (auto& block : blocks) {
        ValueNumbering vn;
        for (auto& instr : block) {
            if (instr.find("dest") != instr.end()) {
                // Only consider value operations
                vn.update(instr, config);
            }
        }
    }
}