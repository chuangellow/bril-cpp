#include "common/instr2str.h"

using json = nlohmann::json;

std::string type2str(const json& type) {
    return type.get<std::string>();
}

std::string value2str(const json& type, const json& value) {
    return value.dump();
}

std::string instr2str(const json& instr) {
    std::ostringstream oss;
    if (instr["op"] == "const") {
        if (instr["type"] == "bool") {
            oss << instr["dest"].get<std::string>() << ": " << type2str(instr["type"]) << " = const " 
                << (instr["value"].get<long long>() != 0 ? "true" : "false");
        }
        else {
            oss << instr["dest"].get<std::string>() << ": " << type2str(instr["type"]) << " = const " 
                << value2str(instr["type"], instr["value"]);
        }
    }
    else if (instr["op"] == "id") {
        oss << instr["dest"].get<std::string>() << ": " << type2str(instr["type"]) << " = id " << instr["args"][0].get<std::string>();
    }
    else {
        std::string rhs = instr["op"].get<std::string>();
        if (instr.contains("funcs")) {
            for (const auto& f : instr["funcs"]) {
                rhs += " @" + f.get<std::string>();
            }
        }
        if (instr.contains("args")) {
            for (const auto& arg : instr["args"]) {
                rhs += " " + arg.get<std::string>();
            }
        }
        if (instr.contains("labels")) {
            for (const auto& label : instr["labels"]) {
                rhs += " ." + label.get<std::string>();
            }
        }
        if (instr.contains("dest")) {
            std::string tyann = instr.contains("type") ? ": " + type2str(instr["type"]) : "";
            oss << instr["dest"].get<std::string>() << tyann << " = " << rhs;
        } else {
            oss << rhs;
        }
    }
    return oss.str();
}