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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/lishundong/Desktop/make future/project/FastCSVParser"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/lishundong/Desktop/make future/project/FastCSVParser/build"

# Include any dependencies generated for this target.
include CMakeFiles/FastCSVParser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FastCSVParser.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FastCSVParser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FastCSVParser.dir/flags.make

CMakeFiles/FastCSVParser.dir/src/main.cpp.o: CMakeFiles/FastCSVParser.dir/flags.make
CMakeFiles/FastCSVParser.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/FastCSVParser.dir/src/main.cpp.o: CMakeFiles/FastCSVParser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lishundong/Desktop/make future/project/FastCSVParser/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FastCSVParser.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FastCSVParser.dir/src/main.cpp.o -MF CMakeFiles/FastCSVParser.dir/src/main.cpp.o.d -o CMakeFiles/FastCSVParser.dir/src/main.cpp.o -c "/Users/lishundong/Desktop/make future/project/FastCSVParser/src/main.cpp"

CMakeFiles/FastCSVParser.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastCSVParser.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lishundong/Desktop/make future/project/FastCSVParser/src/main.cpp" > CMakeFiles/FastCSVParser.dir/src/main.cpp.i

CMakeFiles/FastCSVParser.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastCSVParser.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lishundong/Desktop/make future/project/FastCSVParser/src/main.cpp" -o CMakeFiles/FastCSVParser.dir/src/main.cpp.s

# Object files for target FastCSVParser
FastCSVParser_OBJECTS = \
"CMakeFiles/FastCSVParser.dir/src/main.cpp.o"

# External object files for target FastCSVParser
FastCSVParser_EXTERNAL_OBJECTS =

FastCSVParser: CMakeFiles/FastCSVParser.dir/src/main.cpp.o
FastCSVParser: CMakeFiles/FastCSVParser.dir/build.make
FastCSVParser: CMakeFiles/FastCSVParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lishundong/Desktop/make future/project/FastCSVParser/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FastCSVParser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FastCSVParser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FastCSVParser.dir/build: FastCSVParser
.PHONY : CMakeFiles/FastCSVParser.dir/build

CMakeFiles/FastCSVParser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FastCSVParser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FastCSVParser.dir/clean

CMakeFiles/FastCSVParser.dir/depend:
	cd "/Users/lishundong/Desktop/make future/project/FastCSVParser/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lishundong/Desktop/make future/project/FastCSVParser" "/Users/lishundong/Desktop/make future/project/FastCSVParser" "/Users/lishundong/Desktop/make future/project/FastCSVParser/build" "/Users/lishundong/Desktop/make future/project/FastCSVParser/build" "/Users/lishundong/Desktop/make future/project/FastCSVParser/build/CMakeFiles/FastCSVParser.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/FastCSVParser.dir/depend

