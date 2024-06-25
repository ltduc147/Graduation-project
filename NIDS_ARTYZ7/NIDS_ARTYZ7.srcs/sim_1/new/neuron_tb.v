`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 02:29:07 PM
// Design Name: 
// Module Name: neuron_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module neuron_tb;

parameter dataWidth=32;
    reg clk;
    reg rst;
    reg [dataWidth-1:0] inNeuron;
    reg inNeuronValid;
    reg weightValid;
    reg biasValid;
    reg [31:0] weightValue;
    reg [31:0] biasValue;
    reg [31:0] config_layer_num;
    reg [31:0] config_neuron_num;
    wire [dataWidth-1:0] outNeuron;
    wire outvalid;
    
   neuron #(.layerNo(0),.neuronNo(0),.numOfWeight(13),.dataWidth(dataWidth),.weightIntWidth(16),.actType("relu"),.biasFile(""),.weightFile("")) 
   uut (
        .clk(clk),
        .rst(rst),
        .inNeuron(inNeuron),
        .inNeuronValid(inNeuronValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outNeuron(outNeuron),
        .outvalid(outvalid)
   ); 
   
   initial
   begin
        clk = 0;
        rst = 1;
        config_layer_num = 0;
        config_neuron_num = 0;
        inNeuronValid = 0;
        weightValid = 0 ;
        biasValid = 0;
        weightValue = 0;
        biasValue = 0;
        inNeuron = 0;
   end
   
   always #5 clk = ~clk;
   
   integer i;
   initial begin
      @(posedge clk);
      #5 rst = 0;
      @(posedge clk);
      
      for (i=0; i < 13; i = i+1)begin
         @(posedge clk);
         weightValue <= i+1;
         weightValid <= 1;
      end
      @(posedge clk);
      
      weightValid = 0;
      
      @(posedge clk);
      biasValid <= 1;
      biasValue <= 4;
      @(posedge clk);
      
      biasValid <= 0;
      
      @(posedge clk);
      
      
      for (i=0; i < 13; i = i+1) begin
        @(posedge clk);
        inNeuron <= i+1;
        inNeuronValid <= 1;
        
      end
      
      @(posedge clk);
      inNeuronValid <= 0;
      
   end
endmodule