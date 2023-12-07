`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 01:28:56 PM
// Design Name: 
// Module Name: NN_tb
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


module NN_tb;

parameter dataWidth=32;
    reg clk;
    reg rst;
    reg [dataWidth-1:0] inLayer;
    reg inLayerValid;
    reg weightValid;
    reg biasValid;
    reg [31:0] weightValue;
    reg [31:0] biasValue;
    reg [31:0] config_layer_num;
    reg [31:0] config_neuron_num;
    wire [dataWidth-1:0] outNN;
    wire outNNValid;
    
   NN uut (
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
        .outNN(outNN),
        .outNNValid(outNNValid)
   ); 
   
   reg [8*31:0] fileName;
   wire [31:0] numofNeurons[31:0];
   wire [31:0] numofWeights[31:0];
   
   assign numofNeurons[0] = 4;
   assign numofNeurons[1] = 4;
   assign numofNeurons[2] = 2;
    
   assign numofWeights[0] = 32;
   assign numofWeights[1] = 4;
   assign numofWeights[2] = 4;
    
    
   task configWeight();
   integer i,j,k;
   reg [dataWidth-1:0] config_mem [31:0];
   begin
    @(posedge clk);
    //Layer loop
    for (i=0; i < 3; i=i+1) begin
        config_layer_num <= i;

        for (j=0; j<numofNeurons[i]; j=j+1) begin
            config_neuron_num <= j;
            fileName = {"config/w_",i+48,"_",j+48,".cfg"};
            
            $readmemb(fileName, config_mem);
            @(posedge clk);
      
              for (k=0; k < numofWeights[i]; k = k+1)begin
                 @(posedge clk);
                 weightValue <= config_mem[k];
                 weightValid <= 1;
              end
              @(posedge clk);
              
              weightValid = 0;
            
        end
    end
    
   end
   
   endtask
   
   task configBias();
   integer i,j,k;
   reg [dataWidth-1:0] config_bias [0:0];
   begin
    @(posedge clk);
    //Layer loop
    for (i=0; i < 3; i=i+1) begin
        config_layer_num <= i;
        
        for (j=0; j<numofNeurons[i]; j=j+1) begin
            config_neuron_num <= j;
            
            fileName = {"config/b_",i+48,"_",j+48,".cfg"};
            $readmemb(fileName, config_bias);
            
            @(posedge clk);
              biasValid <= 1;
              biasValue <= config_bias[0];
              @(posedge clk);
              
              biasValid <= 0;
            
        end
    end
    
   end
   
   endtask
   
   initial
   begin
        clk = 0;
        rst = 1;
        config_layer_num = 0;
        config_neuron_num = 0;
        inLayerValid = 0;
        weightValid = 0 ;
        biasValid = 0;
        weightValue = 0;
        biasValue = 0;
        inLayer = 0;
   end
   
   always #5 clk = ~clk;
   
   integer i,j, k, true = 0, total_test=10000, current_test;
   reg [8*4-1:0] testNo;
   reg [dataWidth-1:0] inputTest[32:0];
   reg [dataWidth-1:0] expected;
   initial begin
        
      @(posedge clk);
      #5 rst = 0;
      
      @(posedge clk);
      configWeight();
      configBias();
      
      @(posedge clk);
      for (j=0; j < total_test; j = j+1) begin
           current_test = j;
           k = 0;
           testNo = "0000";
           @(posedge clk);
           while (current_test > 0) begin
                  k = k+1;
                  case (k) 
                    1 : begin
                        testNo[7:0] = current_test % 10 + 48;

                    end
                    2: begin
                        testNo[8*2-1:8] = current_test % 10 + 48;

                    end
                    3: begin
                        testNo[8*3-1:8*2] = current_test % 10 + 48;

                    end
                    4: begin
                        testNo[8*4-1:8*3] = current_test % 10 + 48;

                    end
                  endcase
                     
                  current_test = current_test/10;
           end
           fileName = {"testfile/test_",testNo};

           
           $display("file Name: %s", fileName);
           $readmemb(fileName, inputTest);
           for (i=0; i < 32; i = i+1) begin
                @(posedge clk);
                inLayer <= inputTest[i];
                inLayerValid <= 1;
           end
           @(posedge clk);
           inLayerValid <= 0;
           expected <= inputTest[i];
           @(posedge outNNValid);
           if (outNN == expected) begin
               true = true + 1;            
           end
            
           $display("Test %0d. Accuracy: %f, Attack detect: %0x, Expected: %0x",j+1,true*100.0/(j+1),outNN,expected);
      end
      
      
      
   end
endmodule
