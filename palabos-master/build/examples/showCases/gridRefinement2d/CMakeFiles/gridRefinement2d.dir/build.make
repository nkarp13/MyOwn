# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vbva/Desktop/nikita/MyOwn/palabos-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build

# Include any dependencies generated for this target.
include examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/progress.make

# Include the compile flags for this target's objects.
include examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/flags.make

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/codegen:
.PHONY : examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/codegen

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o: examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/flags.make
examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o: /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/dipole.cpp
examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o: examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o -MF CMakeFiles/gridRefinement2d.dir/dipole.cpp.o.d -o CMakeFiles/gridRefinement2d.dir/dipole.cpp.o -c /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/dipole.cpp

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gridRefinement2d.dir/dipole.cpp.i"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/dipole.cpp > CMakeFiles/gridRefinement2d.dir/dipole.cpp.i

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gridRefinement2d.dir/dipole.cpp.s"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/dipole.cpp -o CMakeFiles/gridRefinement2d.dir/dipole.cpp.s

# Object files for target gridRefinement2d
gridRefinement2d_OBJECTS = \
"CMakeFiles/gridRefinement2d.dir/dipole.cpp.o"

# External object files for target gridRefinement2d
gridRefinement2d_EXTERNAL_OBJECTS =

/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/dipole.cpp.o
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/build.make
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: libpalabos.a
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: /opt/homebrew/Cellar/open-mpi/5.0.6/lib/libmpi.dylib
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: /opt/homebrew/lib/libhdf5.310.5.1.dylib
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d: examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gridRefinement2d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/build: /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d/gridRefinement2d
.PHONY : examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/build

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/clean:
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d && $(CMAKE_COMMAND) -P CMakeFiles/gridRefinement2d.dir/cmake_clean.cmake
.PHONY : examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/clean

examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/depend:
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vbva/Desktop/nikita/MyOwn/palabos-master /Users/vbva/Desktop/nikita/MyOwn/palabos-master/examples/showCases/gridRefinement2d /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/showCases/gridRefinement2d/CMakeFiles/gridRefinement2d.dir/depend

