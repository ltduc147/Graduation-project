`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 04:13:30 PM
// Design Name: 
// Module Name: NN_AXI_tb
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


module NN_AXI_tb;
 
    parameter dataWidth=32;
    parameter C_S_AXI_ADDR_WIDTH = 5;
    parameter C_S_AXI_DATA_WIDTH = 32;
    reg  S_AXI_ACLK;
	reg  S_AXI_ARESETN;
		
	   //////AXI Lite Interface

	reg [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR;
	reg [2 : 0] S_AXI_AWPROT;
	reg  S_AXI_AWVALID;
	wire  S_AXI_AWREADY;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA;
	reg [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB;
	reg  S_AXI_WVALID;
	wire  S_AXI_WREADY;
	wire [1 : 0] S_AXI_BRESP;
	wire  S_AXI_BVALID;
	reg  S_AXI_BREADY;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR;
	reg [2 : 0] S_AXI_ARPROT;
	reg  S_AXI_ARVALID;
	wire  S_AXI_ARREADY;
	wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA;
	wire [1 : 0] S_AXI_RRESP;
	wire  S_AXI_RVALID;
	reg  S_AXI_RREADY;
		
	 //////AXI STREAM Interface
	wire  S_AXIS_TREADY;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] S_AXIS_TDATA; // change width here
	reg S_AXIS_TVALID;
	
	reg  M_AXIS_TREADY;
    wire [C_S_AXI_DATA_WIDTH-1 : 0] M_AXIS_TDATA; // change width here
	wire M_AXIS_TVALID;
	wire M_AXIS_TLAST;
		
	// Interrupt
	wire intr;
    
   NN_AXI #(.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)) 
   uut  (
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWPROT(S_AXI_AWPROT),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARPROT(S_AXI_ARPROT),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .intr(intr)
   ); 
   
   reg [8*50:0] fileName;
   wire [31:0] numofNeurons[31:0];
   wire [31:0] numofWeights[31:0];
   
   assign numofNeurons[0] = 4;
   assign numofNeurons[1] = 4;
   assign numofNeurons[2] = 2;
    
   assign numofWeights[0] = 13;
   assign numofWeights[1] = 4;
   assign numofWeights[2] = 4;
   
   
   always @(posedge S_AXI_ACLK)
    begin
        S_AXI_BREADY <= S_AXI_BVALID;
        S_AXI_RREADY <= S_AXI_RVALID;
    end
    
   task writeToSlaveAxi(
    input [31:0] address,
    input [31:0] data
    );
    begin
        @(posedge S_AXI_ACLK);
        S_AXI_AWVALID <= 1'b1;
        S_AXI_AWADDR <= address;
        S_AXI_WDATA <= data;
        S_AXI_WVALID <= 1'b1;
        wait(S_AXI_WREADY);
        @(posedge S_AXI_ACLK);
        S_AXI_AWVALID <= 1'b0;
        S_AXI_WVALID <= 1'b0;
        @(posedge S_AXI_ACLK);
    end
    endtask
    
   task configWeight();
   integer i,j,k;
   reg [dataWidth-1:0] config_mem [31:0];
   begin
    @(posedge S_AXI_ACLK);
    //Layer loop
    for (i=0; i < 3; i=i+1) begin
        writeToSlaveAxi(0,i);

        for (j=0; j<numofNeurons[i]; j=j+1) begin
            writeToSlaveAxi(4,j);
            fileName = {"./../../../config/w_",i+48,"_",j+48,".cfg"};
            
            $readmemb(fileName, config_mem);
      
              for (k=0; k < numofWeights[i]; k = k+1)begin
                   writeToSlaveAxi(8,config_mem[k]);
              end
        end
    end
    
   end
   
   endtask
   
   task configBias();
   integer i,j,k;
   reg [dataWidth-1:0] config_bias [0:0];
   begin
    @(posedge S_AXI_ACLK);
    //Layer loop
    for (i=0; i < 3; i=i+1) begin
        writeToSlaveAxi(0,i);
        
        for (j=0; j<numofNeurons[i]; j=j+1) begin
            writeToSlaveAxi(4,j);
            
            fileName = {"./../../../config/b_",i+48,"_",j+48,".cfg"};
            $readmemb(fileName, config_bias);
            
            writeToSlaveAxi(12,config_bias[0]);
            
        end
    end
    
   end
   
   endtask
   
   initial
   begin
        S_AXI_ACLK = 0;
        S_AXI_ARESETN = 0;
        S_AXI_AWVALID = 1'b0;
        S_AXI_BREADY = 1'b0;
        S_AXI_WVALID = 1'b0;
        S_AXI_ARVALID = 1'b0;
        S_AXI_AWPROT = 0;
        S_AXI_ARPROT = 0;
        S_AXI_WSTRB = 4'hf;
   end
   
   always #5 S_AXI_ACLK = ~S_AXI_ACLK;
   
   integer i,j, k, true = 0, total_test=82332, current_test;
   reg [8*5-1:0] testNo;
   reg [dataWidth-1:0] inputTest[32:0];
   reg [dataWidth-1:0] expected;
   initial begin
        
      @(posedge S_AXI_ACLK);
      #5 S_AXI_ARESETN = 1;
      
      @(posedge S_AXI_ACLK);
      writeToSlaveAxi(16,1);
      writeToSlaveAxi(16,0);
      configWeight();
      configBias();
      @(posedge S_AXI_ACLK);
      for (j=0; j < total_test; j = j+1) begin
           current_test = j;
           k = 0;
           testNo = "00000";
           @(posedge S_AXI_ACLK);
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
                    5: begin
                        testNo[8*5-1:8*4] = current_test % 10 + 48;

                    end
                  endcase
                     
                  current_test = current_test/10;
           end
           fileName = {"./../../../testfile/test_",testNo};
           $readmemb(fileName, inputTest);
           for (i=0; i < 13; i = i+1) begin
                @(posedge S_AXI_ACLK);
                S_AXIS_TDATA <= inputTest[i];
                S_AXIS_TVALID <= 1;
           end
           @(posedge S_AXI_ACLK);
           S_AXIS_TVALID <= 0;
           expected <= inputTest[i];
           @(posedge intr);
           @(posedge M_AXIS_TVALID);
           if (M_AXIS_TDATA == expected) begin
               true = true + 1;            
           end
            
           $display("Test %0d. Accuracy: %f, Attack detect: %0x, Expected: %0x",j+1,true*100.0/(j+1),M_AXIS_TDATA,expected);
      end
      
      
      
   end
endmodule