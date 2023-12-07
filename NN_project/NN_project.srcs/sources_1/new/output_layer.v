`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 12:48:26 AM
// Design Name: 
// Module Name: hidden_layer_1
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

module output_layer #(parameter numOfNeuron=2,layerNo=2,numOfWeight=4,dataWidth=32,weightIntWidth=4,actType="relu")(
    input clk,
    input rst,
    input [dataWidth-1:0] inLayer,
    input inLayerValid,
    input weightValid,
    input biasValid,
    input [31:0] weightValue,
    input [31:0] biasValue,
    input [31:0] config_layer_num,
    input [31:0] config_neuron_num,
    output [numOfNeuron*dataWidth-1:0] outLayer,
    output [numOfNeuron-1:0] outLayerValid
    );
     
    neuron #(.layerNo(layerNo),.neuronNo(0),.numOfWeight(numOfWeight),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType(actType),.biasFile(""),.weightFile("")) 
    neuron_2_0 (
        .clk(clk),
        .rst(rst),
        .inNeuron(inLayer),
        .inNeuronValid(inLayerValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outNeuron(outLayer[0*dataWidth+:dataWidth]),
        .outvalid(outLayerValid[0])
    );
    
    neuron #(.layerNo(layerNo),.neuronNo(1),.numOfWeight(numOfWeight),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType(actType),.biasFile(""),.weightFile("")) 
    neuron_2_1 (
        .clk(clk),
        .rst(rst),
        .inNeuron(inLayer),
        .inNeuronValid(inLayerValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outNeuron(outLayer[1*dataWidth+:dataWidth]),
        .outvalid(outLayerValid[1])
    );
    
    
    
endmodule