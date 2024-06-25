`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 12:41:30 PM
// Design Name: 
// Module Name: NN
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


module NN #(parameter dataWidth=32,weightIntWidth=16,actType="relu")(
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
    output [dataWidth-1:0] outNN,
    output outNNValid
    );
    
    // State define for data pipelining
    localparam IDLE = 2'b00,
                SEND_DATA = 2'b01;
  
    
    localparam numOfNeuronHiddenLayer1 = 4;
    localparam numOfNeuronHiddenLayer2 = 4;
    localparam numOfNeuronOutputLayer = 2;
    
    hidden_layer_1 #(.numOfNeuron(numOfNeuronHiddenLayer1),.layerNo(0),.numOfWeight(13),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType("relu")) 
    hl1 (
        .clk(clk),
        .rst(rst),
        .inLayer(inLayer),
        .inLayerValid(inLayerValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outLayer(outLayer1),
        .outLayerValid(outLayer1Valid)
    );
    
    wire [numOfNeuronHiddenLayer1*dataWidth-1:0] outLayer1;
    reg [numOfNeuronHiddenLayer1*dataWidth-1:0] outLayer1Reg;
    wire [numOfNeuronHiddenLayer1-1:0] outLayer1Valid;
    reg [dataWidth-1:0]outLayer1Data;
    reg outLayer1DataValid;
    reg [3:0] counter1;
    reg [1:0] state1;
    
    always@(posedge clk) begin
      if (rst) begin
        state1 <= IDLE;
        counter1 <= 0;
        outLayer1Reg <= 0;
        outLayer1Data <= 0;
        outLayer1DataValid <= 0;
      end else begin
        case (state1)
          IDLE:
            begin
              counter1 <= 0;
              outLayer1DataValid <= 0;
              if (outLayer1Valid[0] == 1'b1) begin
                state1 <= SEND_DATA;
                outLayer1Reg <= outLayer1;
              end
            end
          SEND_DATA:
            begin
                outLayer1Data <= outLayer1Reg[dataWidth*counter1 +: dataWidth];
                outLayer1DataValid <= 1;
                counter1 <= counter1 + 1;
                if (counter1 == numOfNeuronHiddenLayer1) begin
                  state1 <= IDLE;
                  outLayer1DataValid <= 0;
                end
            end
        endcase
      end
    end
    
    hidden_layer_2 #(.numOfNeuron(numOfNeuronHiddenLayer2),.layerNo(1),.numOfWeight(4),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType("relu")) 
    hl2 (
        .clk(clk),
        .rst(rst),
        .inLayer(outLayer1Data),
        .inLayerValid(outLayer1DataValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outLayer(outLayer2),
        .outLayerValid(outLayer2Valid)
    );
    
    wire [numOfNeuronHiddenLayer2*dataWidth-1:0] outLayer2;
    reg [numOfNeuronHiddenLayer2*dataWidth-1:0] outLayer2Reg;
    wire [numOfNeuronHiddenLayer2-1:0] outLayer2Valid;
    reg [dataWidth-1:0]outLayer2Data;
    reg outLayer2DataValid;
    reg [3:0] counter2;
    reg [1:0] state2;
    
    always@(posedge clk) begin
      if (rst) begin
        state2 <= IDLE;
        counter2 <= 0;
        outLayer2Reg <= 0;
        outLayer2Data <= 0;
        outLayer2DataValid <= 0;
      end else begin
        case (state2)
          IDLE:
            begin
              counter2 <= 0;
              outLayer2DataValid <= 0;
              if (outLayer2Valid[0] == 1'b1) begin
                state2 <= SEND_DATA;
                outLayer2Reg <= outLayer2;
              end
            end
          SEND_DATA:
            begin
                outLayer2Data <= outLayer2Reg[dataWidth*counter2 +: dataWidth];
                outLayer2DataValid <= 1;
                counter2 <= counter2 + 1;
                if (counter2 == numOfNeuronHiddenLayer2) begin
                  state2 <= IDLE;
                  outLayer2DataValid <= 0;
                end
            end
        endcase
      end
    end
    
    output_layer #(.numOfNeuron(numOfNeuronOutputLayer),.layerNo(2),.numOfWeight(4),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType("relu")) 
    ol1 (
        .clk(clk),
        .rst(rst),
        .inLayer(outLayer2Data),
        .inLayerValid(outLayer2DataValid),
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outLayer(outLayer3),
        .outLayerValid(outLayer3Valid)
    );
    
    wire [numOfNeuronOutputLayer*dataWidth-1:0] outLayer3;
    reg [numOfNeuronOutputLayer*dataWidth-1:0] outLayer3Reg;
    wire [numOfNeuronOutputLayer-1:0] outLayer3Valid;
    reg [dataWidth-1:0]outLayer3Data;
    reg outLayer3DataValid;
    reg [3:0] counter3;
    reg [1:0] state3;
    
    always@(posedge clk) begin
      if (rst) begin
        state3 <= IDLE;
        counter3 <= 0;
        outLayer3Reg <= 0;
        outLayer3Data <= 0;
        outLayer3DataValid <= 0;
      end else begin
        case (state3)
          IDLE:
            begin
              counter3 <= 0;
              outLayer3DataValid <= 0;
              if (outLayer3Valid[0] == 1'b1) begin
                state3 <= SEND_DATA;
                outLayer3Reg <= outLayer3;
              end
            end
          SEND_DATA:
            begin
                outLayer3Data <= outLayer3Reg[dataWidth*counter3 +: dataWidth];
                outLayer3DataValid <= 1;
                counter3 <= counter3 + 1;
                if (counter3 == numOfNeuronOutputLayer) begin
                  state3 <= IDLE;
                  outLayer3DataValid <= 0;
                end
            end
        endcase
      end
    end
    
    findOutputMax #(.numOfInput(2),.dataWidth(dataWidth))
    findMax (
        .clk(clk),
        .inData(outLayer3Data),
        .inDataValid(outLayer3DataValid),
        .outData(outNN),
        .outDataValid(outNNValid)
    );
    
    
    
endmodule
