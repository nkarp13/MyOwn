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
include utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/compiler_depend.make

# Include the progress variables for this target.
include utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/progress.make

# Include the compile flags for this target's objects.
include utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/flags.make

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/codegen:
.PHONY : utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/codegen

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o: utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/flags.make
utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o: /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw.cpp
utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o: utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o -MF CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o.d -o CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o -c /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw.cpp

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.i"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw.cpp > CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.i

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.s"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw.cpp -o CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.s

# Object files for target shiftSTLraw
shiftSTLraw_OBJECTS = \
"CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o"

# External object files for target shiftSTLraw
shiftSTLraw_EXTERNAL_OBJECTS =

/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/shiftSTLraw.cpp.o
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/build.make
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: libpalabos.a
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: /opt/homebrew/Cellar/open-mpi/5.0.6/lib/libmpi.dylib
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: /opt/homebrew/lib/libhdf5.310.5.1.dylib
/Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw: utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw"
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shiftSTLraw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/build: /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw/shiftSTLraw
.PHONY : utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/build

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/clean:
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw && $(CMAKE_COMMAND) -P CMakeFiles/shiftSTLraw.dir/cmake_clean.cmake
.PHONY : utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/clean

utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/depend:
	cd /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vbva/Desktop/nikita/MyOwn/palabos-master /Users/vbva/Desktop/nikita/MyOwn/palabos-master/utility/stl/shiftSTLraw /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw /Users/vbva/Desktop/nikita/MyOwn/palabos-master/build/utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : utility/stl/shiftSTLraw/CMakeFiles/shiftSTLraw.dir/depend

