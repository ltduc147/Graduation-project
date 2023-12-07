//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Nov 29 13:55:08 2023
//Host        : DESKTOP-M5OR15L running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire biasValid_0;
  wire [31:0]biasValue_0;
  wire [31:0]config_layer_num_0;
  wire [31:0]config_neuron_num_0;
  wire inNeuronValid_0;
  wire [31:0]inNeuron_0;
  wire [31:0]outNeuron_0;
  wire outvalid_0;
  wire weightValid_0;
  wire [31:0]weightValue_0;

  design_1 design_1_i
       (.biasValid_0(biasValid_0),
        .biasValue_0(biasValue_0),
        .config_layer_num_0(config_layer_num_0),
        .config_neuron_num_0(config_neuron_num_0),
        .inNeuronValid_0(inNeuronValid_0),
        .inNeuron_0(inNeuron_0),
        .outNeuron_0(outNeuron_0),
        .outvalid_0(outvalid_0),
        .weightValid_0(weightValid_0),
        .weightValue_0(weightValue_0));
endmodule
