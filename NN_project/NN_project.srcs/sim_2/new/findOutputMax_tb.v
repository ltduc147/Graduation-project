`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 04:15:31 PM
// Design Name: 
// Module Name: findOutputMax_tb
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


module findOutputMax_tb;

    reg clk;               // Clock input
    reg [dataWidth-1:0] inData; // Input data
    reg inDataValid;             // Input valid signal
    wire [dataWidth-1:0] outData; // Output maximum value
    wire outDataValid;    // Output valid signal
    
    parameter dataWidth=32;
    
    findOutputMax uut (
        .clk(clk),
        .inData(inData),
        .inDataValid(inDataValid),
        .outData(outData),
        .outDataValid(outDataValid)
    );
    
    initial
   begin
        clk = 0;
        inDataValid = 0;
        inData = 0;
   end
   
   always #5 clk = ~clk;
   
   integer i;
   initial 
   begin
        @(posedge clk);
        for (i = 0; i < 2; i=i+1) begin
            @(posedge clk);
            inData <= 5 - i;
            inDataValid <= 1;
        end
        
        @(posedge clk);
        inDataValid <= 0;
        
   
   end
    

endmodule
