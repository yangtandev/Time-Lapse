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
include api/tests/CMakeFiles/api_tester_h264_media_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include api/tests/CMakeFiles/api_tester_h264_media_server.dir/compiler_depend.make

# Include the progress variables for this target.
include api/tests/CMakeFiles/api_tester_h264_media_server.dir/progress.make

# Include the compile flags for this target's objects.
include api/tests/CMakeFiles/api_tester_h264_media_server.dir/flags.make

api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o: api/tests/CMakeFiles/api_tester_h264_media_server.dir/flags.make
api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o: ../api/tests/h264_media_server.c
api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o: api/tests/CMakeFiles/api_tester_h264_media_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gini/NVR/ZLMediaKit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o"
	cd /home/gini/NVR/ZLMediaKit/build/api/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o -MF CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o.d -o CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o -c /home/gini/NVR/ZLMediaKit/api/tests/h264_media_server.c

api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.i"
	cd /home/gini/NVR/ZLMediaKit/build/api/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gini/NVR/ZLMediaKit/api/tests/h264_media_server.c > CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.i

api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.s"
	cd /home/gini/NVR/ZLMediaKit/build/api/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gini/NVR/ZLMediaKit/api/tests/h264_media_server.c -o CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.s

# Object files for target api_tester_h264_media_server
api_tester_h264_media_server_OBJECTS = \
"CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o"

# External object files for target api_tester_h264_media_server
api_tester_h264_media_server_EXTERNAL_OBJECTS =

../release/linux/Debug/api_tester_h264_media_server: api/tests/CMakeFiles/api_tester_h264_media_server.dir/h264_media_server.c.o
../release/linux/Debug/api_tester_h264_media_server: api/tests/CMakeFiles/api_tester_h264_media_server.dir/build.make
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libmk_api.so
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libsrt.a
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libzlmediakit.a
../release/linux/Debug/api_tester_h264_media_server: /usr/lib/x86_64-linux-gnu/libssl.so
../release/linux/Debug/api_tester_h264_media_server: /usr/lib/x86_64-linux-gnu/libcrypto.so
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libjsoncpp.a
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libflv.a
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libmov.a
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libmpeg.a
../release/linux/Debug/api_tester_h264_media_server: ../release/linux/Debug/libzltoolkit.a
../release/linux/Debug/api_tester_h264_media_server: api/tests/CMakeFiles/api_tester_h264_media_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gini/NVR/ZLMediaKit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../release/linux/Debug/api_tester_h264_media_server"
	cd /home/gini/NVR/ZLMediaKit/build/api/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/api_tester_h264_media_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
api/tests/CMakeFiles/api_tester_h264_media_server.dir/build: ../release/linux/Debug/api_tester_h264_media_server
.PHONY : api/tests/CMakeFiles/api_tester_h264_media_server.dir/build

api/tests/CMakeFiles/api_tester_h264_media_server.dir/clean:
	cd /home/gini/NVR/ZLMediaKit/build/api/tests && $(CMAKE_COMMAND) -P CMakeFiles/api_tester_h264_media_server.dir/cmake_clean.cmake
.PHONY : api/tests/CMakeFiles/api_tester_h264_media_server.dir/clean

api/tests/CMakeFiles/api_tester_h264_media_server.dir/depend:
	cd /home/gini/NVR/ZLMediaKit/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gini/NVR/ZLMediaKit /home/gini/NVR/ZLMediaKit/api/tests /home/gini/NVR/ZLMediaKit/build /home/gini/NVR/ZLMediaKit/build/api/tests /home/gini/NVR/ZLMediaKit/build/api/tests/CMakeFiles/api_tester_h264_media_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : api/tests/CMakeFiles/api_tester_h264_media_server.dir/depend

