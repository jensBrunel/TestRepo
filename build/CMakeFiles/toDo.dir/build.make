# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /work/jens/workspace/johnlampcmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/jens/workspace/johnlampcmake/build

# Include any dependencies generated for this target.
include CMakeFiles/toDo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/toDo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/toDo.dir/flags.make

CMakeFiles/toDo.dir/main.cpp.o: CMakeFiles/toDo.dir/flags.make
CMakeFiles/toDo.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /work/jens/workspace/johnlampcmake/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/toDo.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/toDo.dir/main.cpp.o -c /work/jens/workspace/johnlampcmake/main.cpp

CMakeFiles/toDo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/toDo.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /work/jens/workspace/johnlampcmake/main.cpp > CMakeFiles/toDo.dir/main.cpp.i

CMakeFiles/toDo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/toDo.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /work/jens/workspace/johnlampcmake/main.cpp -o CMakeFiles/toDo.dir/main.cpp.s

CMakeFiles/toDo.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/toDo.dir/main.cpp.o.requires

CMakeFiles/toDo.dir/main.cpp.o.provides: CMakeFiles/toDo.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/toDo.dir/build.make CMakeFiles/toDo.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/toDo.dir/main.cpp.o.provides

CMakeFiles/toDo.dir/main.cpp.o.provides.build: CMakeFiles/toDo.dir/main.cpp.o

# Object files for target toDo
toDo_OBJECTS = \
"CMakeFiles/toDo.dir/main.cpp.o"

# External object files for target toDo
toDo_EXTERNAL_OBJECTS =

toDo: CMakeFiles/toDo.dir/main.cpp.o
toDo: ToDoCore/libtoDoCore.so
toDo: CMakeFiles/toDo.dir/build.make
toDo: CMakeFiles/toDo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable toDo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/toDo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/toDo.dir/build: toDo
.PHONY : CMakeFiles/toDo.dir/build

CMakeFiles/toDo.dir/requires: CMakeFiles/toDo.dir/main.cpp.o.requires
.PHONY : CMakeFiles/toDo.dir/requires

CMakeFiles/toDo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/toDo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/toDo.dir/clean

CMakeFiles/toDo.dir/depend:
	cd /work/jens/workspace/johnlampcmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/jens/workspace/johnlampcmake /work/jens/workspace/johnlampcmake /work/jens/workspace/johnlampcmake/build /work/jens/workspace/johnlampcmake/build /work/jens/workspace/johnlampcmake/build/CMakeFiles/toDo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/toDo.dir/depend
