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
include CMakeFiles/build_blocks.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/build_blocks.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/build_blocks.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/build_blocks.dir/flags.make

CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o: CMakeFiles/build_blocks.dir/flags.make
CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o: ../src/buildBlocksMain.cpp
CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o: CMakeFiles/build_blocks.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o -MF CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o.d -o CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o -c /home/r11944040/bril/bril-cpp/src/buildBlocksMain.cpp

CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/r11944040/bril/bril-cpp/src/buildBlocksMain.cpp > CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.i

CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/r11944040/bril/bril-cpp/src/buildBlocksMain.cpp -o CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.s

# Object files for target build_blocks
build_blocks_OBJECTS = \
"CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o"

# External object files for target build_blocks
build_blocks_EXTERNAL_OBJECTS =

build_blocks: CMakeFiles/build_blocks.dir/src/buildBlocksMain.cpp.o
build_blocks: CMakeFiles/build_blocks.dir/build.make
build_blocks: libbril_common.a
build_blocks: CMakeFiles/build_blocks.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/r11944040/bril/bril-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable build_blocks"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/build_blocks.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/build_blocks.dir/build: build_blocks
.PHONY : CMakeFiles/build_blocks.dir/build

CMakeFiles/build_blocks.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/build_blocks.dir/cmake_clean.cmake
.PHONY : CMakeFiles/build_blocks.dir/clean

CMakeFiles/build_blocks.dir/depend:
	cd /home/r11944040/bril/bril-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/r11944040/bril/bril-cpp /home/r11944040/bril/bril-cpp /home/r11944040/bril/bril-cpp/build /home/r11944040/bril/bril-cpp/build /home/r11944040/bril/bril-cpp/build/CMakeFiles/build_blocks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/build_blocks.dir/depend

