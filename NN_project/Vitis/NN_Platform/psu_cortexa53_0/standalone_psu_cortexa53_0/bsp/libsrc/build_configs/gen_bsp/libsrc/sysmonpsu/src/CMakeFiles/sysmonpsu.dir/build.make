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
CMAKE_SOURCE_DIR = D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj -c D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj -c D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj -c D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj -c D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj -c D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && D:/Xilinx/Vitis/2023.2/gnu/aarch64/nt/aarch64-none/bin/aarch64-none-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s

# Object files for target sysmonpsu
sysmonpsu_OBJECTS = \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj"

# External object files for target sysmonpsu
sysmonpsu_EXTERNAL_OBJECTS =

libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build.make
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libsysmonpsu.a"
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -P CMakeFiles/sysmonpsu.dir/cmake_clean_target.cmake
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysmonpsu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build: libsrc/sysmonpsu/src/libsysmonpsu.a
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/clean:
	cd D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -P CMakeFiles/sysmonpsu.dir/cmake_clean.cmake
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/clean

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/sysmonpsu/src D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src D:/Graduation_Project/NN_project/Vitis/NN_Platform/psu_cortexa53_0/standalone_psu_cortexa53_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend
