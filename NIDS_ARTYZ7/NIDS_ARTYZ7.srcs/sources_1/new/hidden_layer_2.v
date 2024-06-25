`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 12:24:37 AM
// Design Name: 
// Module Name: hidden_layer_2
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


module hidden_layer_2 #(parameter numOfNeuron=4,layerNo=1,numOfWeight=4,dataWidth=32,weightIntWidth=16,actType="relu")(
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
    neuron_1_0 (
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
    neuron_1_1 (
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
    
    neuron #(.layerNo(layerNo),.neuronNo(2),.numOfWeight(numOfWeight),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType(actType),.biasFile(""),.weightFile("")) 
    neuron_1_2 (
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
        .outNeuron(outLayer[2*dataWidth+:dataWidth]),
        .outvalid(outLayerValid[2])
    );
    
    neuron #(.layerNo(layerNo),.neuronNo(3),.numOfWeight(numOfWeight),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType(actType),.biasFile(""),.weightFile("")) 
    neuron_1_3 (
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
        .outNeuron(outLayer[3*dataWidth+:dataWidth]),
        .outvalid(outLayerValid[3])
    );
    
endmodule
