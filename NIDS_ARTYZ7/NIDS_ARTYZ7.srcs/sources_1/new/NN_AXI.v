`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 01:59:38 PM
// Design Name: 
// Module Name: NN_AXI
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


module NN_AXI #
	(
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)( 
		input wire  S_AXI_ACLK,
		input wire  S_AXI_ARESETN,
	   //////AXI Lite Interface

		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		input wire [2 : 0] S_AXI_AWPROT,
		input wire  S_AXI_AWVALID,
		output wire  S_AXI_AWREADY,
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		input wire  S_AXI_WVALID,
		output wire  S_AXI_WREADY,
		output wire [1 : 0] S_AXI_BRESP,
		output wire  S_AXI_BVALID,
		input wire  S_AXI_BREADY,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		input wire [2 : 0] S_AXI_ARPROT,
		input wire  S_AXI_ARVALID,
		output wire  S_AXI_ARREADY,
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		output wire [1 : 0] S_AXI_RRESP,
		output wire  S_AXI_RVALID,
		input wire  S_AXI_RREADY, 
		
		 //////AXI Slave STREAM Interface
		 
		output wire  S_AXIS_TREADY,
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXIS_TDATA, // change width here
		input wire  S_AXIS_TVALID, 
		
		//////AXI Master STREAM Interface
		 
		input wire  M_AXIS_TREADY,
		output reg [C_S_AXI_DATA_WIDTH-1 : 0] M_AXIS_TDATA, // change width here
		output reg  M_AXIS_TVALID, 
		output wire  M_AXIS_TLAST,
		
		// Interrupt
		output wire intr
        
    );
    
    
    // State define for data pipelining
    localparam IDLE = 2'b00,
                SEND_DATA = 2'b01;
    
    localparam dataWidth = 32, weightIntWidth = 16;

    wire weightValid;
    wire biasValid;
    wire [31:0] weightValue;
    wire [31:0] biasValue;
    wire [31:0] config_layer_num;
    wire [31:0] config_neuron_num;
    wire [31:0] outNN;
    wire outNNValid;
    wire rst;
    wire clk;
    wire sw_reset;
    
    assign rst = ~S_AXI_ARESETN | sw_reset;
    assign clk = S_AXI_ACLK;
    assign intr = outLayer1Valid[0];
    assign S_AXIS_TREADY = 1'b1;
    assign M_AXIS_TLAST = M_AXIS_TVALID;
    
    
    always @(posedge S_AXI_ACLK) begin
        M_AXIS_TVALID <= outNNValid;
        M_AXIS_TDATA <= outNN;
    end
    
    S_AXI #(.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH), .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH))
    axl (
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
        .weightValid(weightValid),
        .biasValid(biasValid),
        .weightValue(weightValue),
        .biasValue(biasValue),
        .config_layer_num(config_layer_num),
        .config_neuron_num(config_neuron_num),
        .outNN(outNN),
        .outNNValid(outNNValid),
        .sw_reset(sw_reset)
    );
    
    localparam numOfNeuronHiddenLayer1 = 4;
    localparam numOfNeuronHiddenLayer2 = 4;
    localparam numOfNeuronOutputLayer = 2;
    
    
    hidden_layer_1 #(.numOfNeuron(numOfNeuronHiddenLayer1),.layerNo(0),.numOfWeight(13),.dataWidth(dataWidth),.weightIntWidth(weightIntWidth),.actType("relu")) 
    hl1 (
        .clk(clk),
        .rst(rst),
        .inLayer(S_AXIS_TDATA),
        .inLayerValid(S_AXIS_TVALID),
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
