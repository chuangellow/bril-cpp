Bril-cpp
=======
# Introduction

Bril-cpp is a collection of tools for Bril IR, including:

- `build_blocks`: Builds blocks from a Bril program.
- `build_cfg`: Builds a CFG from a Bril program.
- `local_value_numbering`: Performs local value numbering on a Bril program.

This project using [nlohmann/json](https://github.com/nlohmann/json) for parsing JSON.

# How to Build

To build `bril-cpp` project, follow these steps:
1. Make sure you have CMake (version 3.10 or higher) installed on your system.
2. Clone the repository and navigate to the project directory.
3. Create a build directory and navigate into it:

```bash
mkdir build
cd build
```

4. Generate the build system using CMake:

```bash
cmake ..
```

5. Build the project by running:

```bash
make
```

6. After successful compilation, you can find the executable files `build_blocks` and `build_cfg` in the build directory.

# Usage

You can run the following commands combined the `bril2json` with `build_cfg` or `build_blocks` using pipe:
```bash
bril2json < ./test/add.bril | ./build/build_cfg
```