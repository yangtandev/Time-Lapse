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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/gini/NVR/ZLMediaKit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gini/NVR/ZLMediaKit/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_httpApi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_httpApi.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_httpApi.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_httpApi.dir/flags.make

tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o: tests/CMakeFiles/test_httpApi.dir/flags.make
tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o: ../tests/test_httpApi.cpp
tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o: tests/CMakeFiles/test_httpApi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gini/NVR/ZLMediaKit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o"
	cd /home/gini/NVR/ZLMediaKit/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o -MF CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o.d -o CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o -c /home/gini/NVR/ZLMediaKit/tests/test_httpApi.cpp

tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_httpApi.dir/test_httpApi.cpp.i"
	cd /home/gini/NVR/ZLMediaKit/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gini/NVR/ZLMediaKit/tests/test_httpApi.cpp > CMakeFiles/test_httpApi.dir/test_httpApi.cpp.i

tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_httpApi.dir/test_httpApi.cpp.s"
	cd /home/gini/NVR/ZLMediaKit/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gini/NVR/ZLMediaKit/tests/test_httpApi.cpp -o CMakeFiles/test_httpApi.dir/test_httpApi.cpp.s

# Object files for target test_httpApi
test_httpApi_OBJECTS = \
"CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o"

# External object files for target test_httpApi
test_httpApi_EXTERNAL_OBJECTS =

../release/linux/Debug/test_httpApi: tests/CMakeFiles/test_httpApi.dir/test_httpApi.cpp.o
../release/linux/Debug/test_httpApi: tests/CMakeFiles/test_httpApi.dir/build.make
../release/linux/Debug/test_httpApi: /usr/lib/x86_64-linux-gnu/libssl.so
../release/linux/Debug/test_httpApi: /usr/lib/x86_64-linux-gnu/libcrypto.so
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libjsoncpp.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libflv.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libmov.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libmpeg.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libzltoolkit.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libzlmediakit.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libsrt.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libzlmediakit.a
../release/linux/Debug/test_httpApi: /usr/lib/x86_64-linux-gnu/libssl.so
../release/linux/Debug/test_httpApi: /usr/lib/x86_64-linux-gnu/libcrypto.so
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libjsoncpp.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libflv.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libmov.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libmpeg.a
../release/linux/Debug/test_httpApi: ../release/linux/Debug/libzltoolkit.a
../release/linux/Debug/test_httpApi: tests/CMakeFiles/test_httpApi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gini/NVR/ZLMediaKit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../release/linux/Debug/test_httpApi"
	cd /home/gini/NVR/ZLMediaKit/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_httpApi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_httpApi.dir/build: ../release/linux/Debug/test_httpApi
.PHONY : tests/CMakeFiles/test_httpApi.dir/build

tests/CMakeFiles/test_httpApi.dir/clean:
	cd /home/gini/NVR/ZLMediaKit/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_httpApi.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_httpApi.dir/clean

tests/CMakeFiles/test_httpApi.dir/depend:
	cd /home/gini/NVR/ZLMediaKit/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gini/NVR/ZLMediaKit /home/gini/NVR/ZLMediaKit/tests /home/gini/NVR/ZLMediaKit/build /home/gini/NVR/ZLMediaKit/build/tests /home/gini/NVR/ZLMediaKit/build/tests/CMakeFiles/test_httpApi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_httpApi.dir/depend

