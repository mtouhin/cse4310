# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build

# Include any dependencies generated for this target.
include CMakeFiles/cv_raster_graphics_editor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cv_raster_graphics_editor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cv_raster_graphics_editor.dir/flags.make

CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o: CMakeFiles/cv_raster_graphics_editor.dir/flags.make
CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o: ../cv_raster_graphics_editor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o -c /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/cv_raster_graphics_editor.cpp

CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/cv_raster_graphics_editor.cpp > CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.i

CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/cv_raster_graphics_editor.cpp -o CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.s

# Object files for target cv_raster_graphics_editor
cv_raster_graphics_editor_OBJECTS = \
"CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o"

# External object files for target cv_raster_graphics_editor
cv_raster_graphics_editor_EXTERNAL_OBJECTS =

cv_raster_graphics_editor: CMakeFiles/cv_raster_graphics_editor.dir/cv_raster_graphics_editor.cpp.o
cv_raster_graphics_editor: CMakeFiles/cv_raster_graphics_editor.dir/build.make
cv_raster_graphics_editor: /usr/local/lib/libopencv_dnn.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_ml.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_objdetect.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_shape.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_stitching.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_superres.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_videostab.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_calib3d.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_features2d.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_flann.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_highgui.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_photo.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_video.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_videoio.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_imgcodecs.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_imgproc.3.4.1.dylib
cv_raster_graphics_editor: /usr/local/lib/libopencv_core.3.4.1.dylib
cv_raster_graphics_editor: CMakeFiles/cv_raster_graphics_editor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cv_raster_graphics_editor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cv_raster_graphics_editor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cv_raster_graphics_editor.dir/build: cv_raster_graphics_editor

.PHONY : CMakeFiles/cv_raster_graphics_editor.dir/build

CMakeFiles/cv_raster_graphics_editor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cv_raster_graphics_editor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cv_raster_graphics_editor.dir/clean

CMakeFiles/cv_raster_graphics_editor.dir/depend:
	cd /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build /Users/touhinmohammed/Desktop/cse4310_hw/raster_graphics_editor/build/CMakeFiles/cv_raster_graphics_editor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cv_raster_graphics_editor.dir/depend
