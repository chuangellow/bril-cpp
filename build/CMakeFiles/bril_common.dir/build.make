# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/r11944040/bril/bril-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/r11944040/bril/bril-cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/bril_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bril_common.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bril_common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bril_common.dir/flags.make

CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o: CMakeFiles/bril_common.dir/flags.make
CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o: ../src/buildBlocks.cpp
CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o: CMakeFiles/bril_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o -MF CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o.d -o CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o -c /home/r11944040/bril/bril-cpp/src/buildBlocks.cpp

CMakeFiles/bril_common.dir/src/buildBlocks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bril_common.dir/src/buildBlocks.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/buildBlocks.cpp > CMakeFiles/bril_common.dir/src/buildBlocks.cpp.i

CMakeFiles/bril_common.dir/src/buildBlocks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bril_common.dir/src/buildBlocks.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/buildBlocks.cpp -o CMakeFiles/bril_common.dir/src/buildBlocks.cpp.s

CMakeFiles/bril_common.dir/src/instr2str.cpp.o: CMakeFiles/bril_common.dir/flags.make
CMakeFiles/bril_common.dir/src/instr2str.cpp.o: ../src/instr2str.cpp
CMakeFiles/bril_common.dir/src/instr2str.cpp.o: CMakeFiles/bril_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/bril_common.dir/src/instr2str.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bril_common.dir/src/instr2str.cpp.o -MF CMakeFiles/bril_common.dir/src/instr2str.cpp.o.d -o CMakeFiles/bril_common.dir/src/instr2str.cpp.o -c /home/r11944040/bril/bril-cpp/src/instr2str.cpp

CMakeFiles/bril_common.dir/src/instr2str.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bril_common.dir/src/instr2str.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/instr2str.cpp > CMakeFiles/bril_common.dir/src/instr2str.cpp.i

CMakeFiles/bril_common.dir/src/instr2str.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bril_common.dir/src/instr2str.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/instr2str.cpp -o CMakeFiles/bril_common.dir/src/instr2str.cpp.s

CMakeFiles/bril_common.dir/src/buildCFG.cpp.o: CMakeFiles/bril_common.dir/flags.make
CMakeFiles/bril_common.dir/src/buildCFG.cpp.o: ../src/buildCFG.cpp
CMakeFiles/bril_common.dir/src/buildCFG.cpp.o: CMakeFiles/bril_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/bril_common.dir/src/buildCFG.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bril_common.dir/src/buildCFG.cpp.o -MF CMakeFiles/bril_common.dir/src/buildCFG.cpp.o.d -o CMakeFiles/bril_common.dir/src/buildCFG.cpp.o -c /home/r11944040/bril/bril-cpp/src/buildCFG.cpp

CMakeFiles/bril_common.dir/src/buildCFG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bril_common.dir/src/buildCFG.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/buildCFG.cpp > CMakeFiles/bril_common.dir/src/buildCFG.cpp.i

CMakeFiles/bril_common.dir/src/buildCFG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bril_common.dir/src/buildCFG.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/buildCFG.cpp -o CMakeFiles/bril_common.dir/src/buildCFG.cpp.s

CMakeFiles/bril_common.dir/src/common.cpp.o: CMakeFiles/bril_common.dir/flags.make
CMakeFiles/bril_common.dir/src/common.cpp.o: ../src/common.cpp
CMakeFiles/bril_common.dir/src/common.cpp.o: CMakeFiles/bril_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/bril_common.dir/src/common.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bril_common.dir/src/common.cpp.o -MF CMakeFiles/bril_common.dir/src/common.cpp.o.d -o CMakeFiles/bril_common.dir/src/common.cpp.o -c /home/r11944040/bril/bril-cpp/src/common.cpp

CMakeFiles/bril_common.dir/src/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bril_common.dir/src/common.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/common.cpp > CMakeFiles/bril_common.dir/src/common.cpp.i

CMakeFiles/bril_common.dir/src/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bril_common.dir/src/common.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/common.cpp -o CMakeFiles/bril_common.dir/src/common.cpp.s

CMakeFiles/bril_common.dir/src/logger.cpp.o: CMakeFiles/bril_common.dir/flags.make
CMakeFiles/bril_common.dir/src/logger.cpp.o: ../src/logger.cpp
CMakeFiles/bril_common.dir/src/logger.cpp.o: CMakeFiles/bril_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/bril_common.dir/src/logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bril_common.dir/src/logger.cpp.o -MF CMakeFiles/bril_common.dir/src/logger.cpp.o.d -o CMakeFiles/bril_common.dir/src/logger.cpp.o -c /home/r11944040/bril/bril-cpp/src/logger.cpp

CMakeFiles/bril_common.dir/src/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bril_common.dir/src/logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/logger.cpp > CMakeFiles/bril_common.dir/src/logger.cpp.i

CMakeFiles/bril_common.dir/src/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bril_common.dir/src/logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/logger.cpp -o CMakeFiles/bril_common.dir/src/logger.cpp.s

# Object files for target bril_common
bril_common_OBJECTS = \
"CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o" \
"CMakeFiles/bril_common.dir/src/instr2str.cpp.o" \
"CMakeFiles/bril_common.dir/src/buildCFG.cpp.o" \
"CMakeFiles/bril_common.dir/src/common.cpp.o" \
"CMakeFiles/bril_common.dir/src/logger.cpp.o"

# External object files for target bril_common
bril_common_EXTERNAL_OBJECTS =

libbril_common.a: CMakeFiles/bril_common.dir/src/buildBlocks.cpp.o
libbril_common.a: CMakeFiles/bril_common.dir/src/instr2str.cpp.o
libbril_common.a: CMakeFiles/bril_common.dir/src/buildCFG.cpp.o
libbril_common.a: CMakeFiles/bril_common.dir/src/common.cpp.o
libbril_common.a: CMakeFiles/bril_common.dir/src/logger.cpp.o
libbril_common.a: CMakeFiles/bril_common.dir/build.make
libbril_common.a: CMakeFiles/bril_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libbril_common.a"
	$(CMAKE_COMMAND) -P CMakeFiles/bril_common.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bril_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bril_common.dir/build: libbril_common.a
.PHONY : CMakeFiles/bril_common.dir/build

CMakeFiles/bril_common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bril_common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bril_common.dir/clean

CMakeFiles/bril_common.dir/depend:
	cd /home/r11944040/bril/bril-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/r11944040/bril/bril-cpp /home/r11944040/bril/bril-cpp /home/r11944040/bril/bril-cpp/build /home/r11944040/bril/bril-cpp/build /home/r11944040/bril/bril-cpp/build/CMakeFiles/bril_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bril_common.dir/depend

