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
include ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/depend.make

# Include the progress variables for this target.
include ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/progress.make

# Include the compile flags for this target's objects.
include ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/flags.make

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/flags.make
ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o: ../ToDoCore/unit_test/ToDoTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /work/jens/workspace/johnlampcmake/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o"
	cd /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o -c /work/jens/workspace/johnlampcmake/ToDoCore/unit_test/ToDoTest.cpp

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ToDoTest.dir/ToDoTest.cpp.i"
	cd /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /work/jens/workspace/johnlampcmake/ToDoCore/unit_test/ToDoTest.cpp > CMakeFiles/ToDoTest.dir/ToDoTest.cpp.i

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ToDoTest.dir/ToDoTest.cpp.s"
	cd /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /work/jens/workspace/johnlampcmake/ToDoCore/unit_test/ToDoTest.cpp -o CMakeFiles/ToDoTest.dir/ToDoTest.cpp.s

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.requires:
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.requires

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.provides: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.requires
	$(MAKE) -f ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/build.make ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.provides.build
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.provides

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.provides.build: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o

# Object files for target ToDoTest
ToDoTest_OBJECTS = \
"CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o"

# External object files for target ToDoTest
ToDoTest_EXTERNAL_OBJECTS =

ToDoCore/unit_test/ToDoTest: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o
ToDoCore/unit_test/ToDoTest: ToDoCore/libtoDoCore.so
ToDoCore/unit_test/ToDoTest: gmock/libgmock_main.a
ToDoCore/unit_test/ToDoTest: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/build.make
ToDoCore/unit_test/ToDoTest: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ToDoTest"
	cd /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ToDoTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/build: ToDoCore/unit_test/ToDoTest
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/build

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/requires: ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/ToDoTest.cpp.o.requires
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/requires

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/clean:
	cd /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test && $(CMAKE_COMMAND) -P CMakeFiles/ToDoTest.dir/cmake_clean.cmake
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/clean

ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/depend:
	cd /work/jens/workspace/johnlampcmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/jens/workspace/johnlampcmake /work/jens/workspace/johnlampcmake/ToDoCore/unit_test /work/jens/workspace/johnlampcmake/build /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test /work/jens/workspace/johnlampcmake/build/ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ToDoCore/unit_test/CMakeFiles/ToDoTest.dir/depend

