# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = D:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = D:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata

# Utility rule file for xadcps_example.

# Include any custom commands dependencies for this target.
include CMakeFiles/xadcps_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/xadcps_example.dir/progress.make

CMakeFiles/xadcps_example:
	lopper -f -O D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/xadcps D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 D:/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/xadcps_v2_7/examples drvcmake_metadata

xadcps_example: CMakeFiles/xadcps_example
xadcps_example: CMakeFiles/xadcps_example.dir/build.make
.PHONY : xadcps_example

# Rule to build all files generated by this target.
CMakeFiles/xadcps_example.dir/build: xadcps_example
.PHONY : CMakeFiles/xadcps_example.dir/build

CMakeFiles/xadcps_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xadcps_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xadcps_example.dir/clean

CMakeFiles/xadcps_example.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata D:/Graduation_Project/NIDS_ARTYZ7/Vitis/NIDS_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata/CMakeFiles/xadcps_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xadcps_example.dir/depend
