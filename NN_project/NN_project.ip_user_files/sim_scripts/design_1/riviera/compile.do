transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_15
vlib riviera/zynq_ultra_ps_e_vip_v1_0_15
vlib riviera/xil_defaultlib
vlib riviera/lib_pkg_v1_0_3
vlib riviera/fifo_generator_v13_2_9
vlib riviera/lib_fifo_v1_0_18
vlib riviera/lib_srl_fifo_v1_0_3
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_31
vlib riviera/axi_sg_v4_1_17
vlib riviera/axi_dma_v7_1_30
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/axi_register_slice_v2_1_29
vlib riviera/axi_data_fifo_v2_1_28
vlib riviera/axi_crossbar_v2_1_30
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/xlconstant_v1_1_8
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_converter_v2_1_29

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 riviera/axi_vip_v1_1_15
vmap zynq_ultra_ps_e_vip_v1_0_15 riviera/zynq_ultra_ps_e_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_pkg_v1_0_3 riviera/lib_pkg_v1_0_3
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap lib_fifo_v1_0_18 riviera/lib_fifo_v1_0_18
vmap lib_srl_fifo_v1_0_3 riviera/lib_srl_fifo_v1_0_3
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_31 riviera/axi_datamover_v5_1_31
vmap axi_sg_v4_1_17 riviera/axi_sg_v4_1_17
vmap axi_dma_v7_1_30 riviera/axi_dma_v7_1_30
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 riviera/axi_register_slice_v2_1_29
vmap axi_data_fifo_v2_1_28 riviera/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 riviera/axi_crossbar_v2_1_30
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_29 riviera/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -incr "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_15  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_3 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_18 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/1531/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_31 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/d786/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_17 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/1b4d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_30 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ddec/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_1/sim/design_1_rst_ps8_0_99M_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_NN_AXI_0_1/sim/design_1_NN_AXI_0_1.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../../NN_project.gen/sources_1/bd/design_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/2fcd/hdl" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../NN_project.gen/sources_1/bd/design_1/ipshared/35de/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l zynq_ultra_ps_e_vip_v1_0_15 -l xil_defaultlib -l lib_pkg_v1_0_3 -l fifo_generator_v13_2_9 -l lib_fifo_v1_0_18 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_datamover_v5_1_31 -l axi_sg_v4_1_17 -l axi_dma_v7_1_30 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_29 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

