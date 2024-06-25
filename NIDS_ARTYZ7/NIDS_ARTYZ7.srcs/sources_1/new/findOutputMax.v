`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 04:03:54 PM
// Design Name: 
// Module Name: findOutputMax
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

module findOutputMax #(parameter numOfInput = 2, dataWidth=32 )(
  input clk,                 // Clock input
  input [dataWidth-1:0] inData, // Input data
  input inDataValid,             // Input valid signal
  output reg [dataWidth-1:0] outData, // Output maximum value
  output reg outDataValid    // Output valid signal
);


  reg [dataWidth-1:0] maxVal;
  reg [3:0] index;
  reg [3:0] count;

  always @(posedge clk) begin
    if (inDataValid) begin
        if (count == 0 | inData > maxVal) begin
            maxVal <= inData;
            index <= count;     
        end
        count <= count + 1;
    end
    else begin
        count <= 0;
        outDataValid <= 0;
    end
    
    if (count == numOfInput) begin 
        outData <= index;
        outDataValid <= 1;
        count <= 0;
        maxVal <= 0;
    end
     
  end

endmodule
