# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /home/dyz/Downloads/cmake-3.1.3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/dyz/Downloads/cmake-3.1.3-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dyz/kurento-tutorial-js/gsthello

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dyz/kurento-tutorial-js/gsthello/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/kmsgsthellointerface.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/kmsgsthellointerface.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/kmsgsthellointerface.dir/flags.make

src/server/cpp_interface_internal.generated: ../src/server/interface/gsthello.kmd.json
src/server/cpp_interface_internal.generated: ../src/server/interface/gsthello.gsthello.kmd.json
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyz/kurento-tutorial-js/gsthello/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating cpp_interface_internal.generated, interface/generated-cpp/gsthelloInternal.cpp, interface/generated-cpp/gsthelloInternal.hpp"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /home/dyz/Downloads/cmake-3.1.3-Linux-x86_64/bin/cmake -E touch cpp_interface_internal.generated
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/kurento-module-creator -c /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp -r /home/dyz/kurento-tutorial-js/gsthello/src/server/interface -dr /usr/share/kurento/modules -dr /usr/share/kurento/modules -it cpp_interface_internal

src/server/interface/generated-cpp/gsthelloInternal.cpp: src/server/cpp_interface_internal.generated

src/server/interface/generated-cpp/gsthelloInternal.hpp: src/server/cpp_interface_internal.generated

src/server/cpp_interface.generated: ../src/server/interface/gsthello.kmd.json
src/server/cpp_interface.generated: ../src/server/interface/gsthello.gsthello.kmd.json
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyz/kurento-tutorial-js/gsthello/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating cpp_interface.generated, interface/generated-cpp/gsthello.cpp, interface/generated-cpp/gsthello.hpp"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /home/dyz/Downloads/cmake-3.1.3-Linux-x86_64/bin/cmake -E touch cpp_interface.generated
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/kurento-module-creator -c /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp -r /home/dyz/kurento-tutorial-js/gsthello/src/server/interface -dr /usr/share/kurento/modules -dr /usr/share/kurento/modules -it cpp_interface

src/server/interface/generated-cpp/gsthello.cpp: src/server/cpp_interface.generated

src/server/interface/generated-cpp/gsthello.hpp: src/server/cpp_interface.generated

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o: src/server/CMakeFiles/kmsgsthellointerface.dir/flags.make
src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o: src/server/interface/generated-cpp/gsthelloInternal.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyz/kurento-tutorial-js/gsthello/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o -c /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthelloInternal.cpp

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.i"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthelloInternal.cpp > CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.i

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.s"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthelloInternal.cpp -o CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.s

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.requires

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.provides: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmsgsthellointerface.dir/build.make src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.provides

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.provides.build: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o: src/server/CMakeFiles/kmsgsthellointerface.dir/flags.make
src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o: src/server/interface/generated-cpp/gsthello.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyz/kurento-tutorial-js/gsthello/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o -c /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthello.cpp

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.i"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthello.cpp > CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.i

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.s"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dyz/kurento-tutorial-js/gsthello/build/src/server/interface/generated-cpp/gsthello.cpp -o CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.s

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.requires:
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.requires

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.provides: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/kmsgsthellointerface.dir/build.make src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.provides

src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.provides.build: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o

# Object files for target kmsgsthellointerface
kmsgsthellointerface_OBJECTS = \
"CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o" \
"CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o"

# External object files for target kmsgsthellointerface
kmsgsthellointerface_EXTERNAL_OBJECTS =

src/server/libkmsgsthellointerface.a: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o
src/server/libkmsgsthellointerface.a: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o
src/server/libkmsgsthellointerface.a: src/server/CMakeFiles/kmsgsthellointerface.dir/build.make
src/server/libkmsgsthellointerface.a: src/server/CMakeFiles/kmsgsthellointerface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libkmsgsthellointerface.a"
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/kmsgsthellointerface.dir/cmake_clean_target.cmake
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kmsgsthellointerface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/kmsgsthellointerface.dir/build: src/server/libkmsgsthellointerface.a
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/build

src/server/CMakeFiles/kmsgsthellointerface.dir/requires: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthelloInternal.cpp.o.requires
src/server/CMakeFiles/kmsgsthellointerface.dir/requires: src/server/CMakeFiles/kmsgsthellointerface.dir/interface/generated-cpp/gsthello.cpp.o.requires
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/requires

src/server/CMakeFiles/kmsgsthellointerface.dir/clean:
	cd /home/dyz/kurento-tutorial-js/gsthello/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/kmsgsthellointerface.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/clean

src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/cpp_interface_internal.generated
src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/interface/generated-cpp/gsthelloInternal.cpp
src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/interface/generated-cpp/gsthelloInternal.hpp
src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/cpp_interface.generated
src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/interface/generated-cpp/gsthello.cpp
src/server/CMakeFiles/kmsgsthellointerface.dir/depend: src/server/interface/generated-cpp/gsthello.hpp
	cd /home/dyz/kurento-tutorial-js/gsthello/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dyz/kurento-tutorial-js/gsthello /home/dyz/kurento-tutorial-js/gsthello/src/server /home/dyz/kurento-tutorial-js/gsthello/build /home/dyz/kurento-tutorial-js/gsthello/build/src/server /home/dyz/kurento-tutorial-js/gsthello/build/src/server/CMakeFiles/kmsgsthellointerface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/kmsgsthellointerface.dir/depend

