//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Nov 29 13:51:35 2023
//Host        : DESKTOP-M5OR15L running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (biasValid_0,
    biasValue_0,
    config_layer_num_0,
    config_neuron_num_0,
    inNeuronValid_0,
    inNeuron_0,
    outNeuron_0,
    outvalid_0,
    weightValid_0,
    weightValue_0);
  input biasValid_0;
  input [31:0]biasValue_0;
  input [31:0]config_layer_num_0;
  input [31:0]config_neuron_num_0;
  input inNeuronValid_0;
  input [31:0]inNeuron_0;
  output [31:0]outNeuron_0;
  output outvalid_0;
  input weightValid_0;
  input [31:0]weightValue_0;

  wire biasValid_0_1;
  wire [31:0]biasValue_0_1;
  wire [31:0]config_layer_num_0_1;
  wire [31:0]config_neuron_num_0_1;
  wire inNeuronValid_0_1;
  wire [31:0]inNeuron_0_1;
  wire [31:0]neuron_0_outNeuron;
  wire neuron_0_outvalid;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire weightValid_0_1;
  wire [31:0]weightValue_0_1;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign biasValid_0_1 = biasValid_0;
  assign biasValue_0_1 = biasValue_0[31:0];
  assign config_layer_num_0_1 = config_layer_num_0[31:0];
  assign config_neuron_num_0_1 = config_neuron_num_0[31:0];
  assign inNeuronValid_0_1 = inNeuronValid_0;
  assign inNeuron_0_1 = inNeuron_0[31:0];
  assign outNeuron_0[31:0] = neuron_0_outNeuron;
  assign outvalid_0 = neuron_0_outvalid;
  assign weightValid_0_1 = weightValid_0;
  assign weightValue_0_1 = weightValue_0[31:0];
  design_1_neuron_0_1 neuron_0
       (.biasValid(biasValid_0_1),
        .biasValue(biasValue_0_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_layer_num(config_layer_num_0_1),
        .config_neuron_num(config_neuron_num_0_1),
        .inNeuron(inNeuron_0_1),
        .inNeuronValid(inNeuronValid_0_1),
        .outNeuron(neuron_0_outNeuron),
        .outvalid(neuron_0_outvalid),
        .rst(rst_ps8_0_99M_peripheral_aresetn),
        .weightValid(weightValid_0_1),
        .weightValue(weightValue_0_1));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_arready(1'b0),
        .maxigp0_awready(1'b0),
        .maxigp0_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_bresp({1'b0,1'b0}),
        .maxigp0_bvalid(1'b0),
        .maxigp0_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rlast(1'b0),
        .maxigp0_rresp({1'b0,1'b0}),
        .maxigp0_rvalid(1'b0),
        .maxigp0_wready(1'b0),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
