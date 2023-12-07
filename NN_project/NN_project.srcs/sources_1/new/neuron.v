`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2023 09:37:02 PM
// Design Name: 
// Module Name: neuron
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
`include "config.v"

module neuron #(parameter layerNo=0,neuronNo=0,numOfWeight=10,dataWidth=32,weightIntWidth=16,actType="relu",biasFile="",weightFile="")(
    input clk,
    input rst,
    input [dataWidth-1:0] inNeuron,
    input inNeuronValid,
    input weightValid,
    input biasValid,
    input [31:0] weightValue,
    input [31:0] biasValue,
    input [31:0] config_layer_num,
    input [31:0] config_neuron_num,
    output reg [dataWidth-1:0] outNeuron,
    output reg outvalid
    
    );
    
    // calculate address width
    localparam addrWidth = $clog2(numOfWeight) + 1;
    //bram interface
    wire wen;
    wire ren;
    reg [addrWidth-1:0] waddr;
    reg [addrWidth-1:0] raddr;
    wire [dataWidth-1:0] din;
    wire [dataWidth-1:0] dout;
    
    // neuron variable
    reg [2*dataWidth-1:0]  mul; 
    reg [2*dataWidth-1:0]  sum;
    reg [2*dataWidth-1:0]  bias;
    
    reg [31:0]    biasMem[0:0];
    wire [2*dataWidth:0] accumulateSum;
    wire [2*dataWidth:0] biasSum;
    reg  [dataWidth-1:0] inNeuronD;
    
    //Control signal
    reg weight_valid;
    reg mult_valid;
    wire mux_valid;
    reg sigValid;
    reg muxValid_d;
    reg muxValid_f;
    reg sload;
    
    
    //Bram Instantiation 
    weight_bram #(.numOfWeight(numOfWeight),.neuronNo(neuronNo),.layerNo(layerNo),.addrWidth(addrWidth),.dataWidth(dataWidth),.weightFile(weightFile)) 
    WBram(
        .clk(clk),
        .wen(wen),
        .ren(ren),
        .waddr(waddr),
        .raddr(raddr),
        .din(din),
        .dout(dout)
    );
    
    assign din = weightValue;
    assign wen = weightValid & (config_layer_num == layerNo) & (config_neuron_num == neuronNo);
    //Loading weight values into the bram
    always @(posedge clk)
    begin
        if(rst)
        begin
            waddr <= 0;
        end
        else if(weightValid & (config_layer_num == layerNo) & (config_neuron_num == neuronNo))
        begin
            waddr <= waddr + 1;
        end

    end
    
    //Loading bias value
    `ifdef preconfig
		initial
		begin
			$readmemb(biasFile,biasMem);
		end
		always @(posedge clk)
		begin
            bias <= {biasMem[0][dataWidth-1:0],{dataWidth{1'b0}}};
        end
	`else
		always @(posedge clk)
		begin
			if(biasValid & (config_layer_num == layerNo) & (config_neuron_num == neuronNo))
			begin
			    if (biasValue[dataWidth-1]) // negative
				    bias <= {{16{1'b1}},biasValue[dataWidth-1:0],{16{1'b1}}};
				else
				    bias <= {{16{1'b0}},biasValue[dataWidth-1:0],{16{1'b0}}};
				    
			end
		end
	`endif
	
	// Read data from weight ram
	assign ren = inNeuronValid;
	
	always @(posedge clk)
    begin
        if(rst|outvalid)
            raddr <= 0;
        else if(inNeuronValid) begin
            raddr <= raddr + 1;
        end
    end
    
    // neuron function
    assign mux_valid = mult_valid;
    assign accumulateSum = mul + sum;
    assign biasSum = bias + sum;
     
    always @(posedge clk)
    begin
        if (weight_valid) 
            mul  <= $signed(inNeuronD) * $signed(dout);
        else 
            mul <= 0;
    end
    
    // accumulate sum until reach the num of weight
    // saturate the result to avoid overflow and underflow
    always @(posedge clk)
    begin
        if(rst|outvalid)
            sum <= 0;
        else if((raddr == numOfWeight) & muxValid_f)
        begin
            if(!bias[2*dataWidth-1] &!sum[2*dataWidth-1] & biasSum[2*dataWidth-1]) 
            begin
                sum[2*dataWidth-1] <= 1'b0;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
            end
            else if(bias[2*dataWidth-1] & sum[2*dataWidth-1] &  !biasSum[2*dataWidth-1])
            begin
                sum[2*dataWidth-1] <= 1'b1;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
            end
            else
                sum <= biasSum; 
        end
        else if(mux_valid)
        begin
            if(!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & accumulateSum[2*dataWidth-1])
            begin
                sum[2*dataWidth-1] <= 1'b0;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
            end
            else if(mul[2*dataWidth-1] & sum[2*dataWidth-1] & !accumulateSum[2*dataWidth-1])
            begin
                sum[2*dataWidth-1] <= 1'b1;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
            end
            else
                sum <= accumulateSum; 
        end
    end
    
	
	always @(posedge clk)
    begin
        inNeuronD <= inNeuron;
        weight_valid <= inNeuronValid;
        mult_valid <= weight_valid;
        sigValid <= ((raddr == numOfWeight) & muxValid_f) ? 1'b1 : 1'b0;
        outvalid <= sigValid;
        muxValid_d <= mux_valid;
        muxValid_f <= !mux_valid & muxValid_d; //Detect negedge of mux_valid
    end
    
    
    // Relu activation
    always @(posedge clk)
    begin
        if($signed(sum) >= 0)
        begin
            if(|sum[2*dataWidth-1-:weightIntWidth+1]) //over flow to sign bit of integer part
                outNeuron <= {1'b0,{(dataWidth-1){1'b1}}}; //positive saturate
            else
                outNeuron <= sum[2*dataWidth-1-weightIntWidth-:dataWidth];
        end
        else 
            outNeuron <= 0;      
    end
    
    always @(posedge clk)
    begin
        if(outvalid)
            $display("%b",outNeuron);
    end
    
endmodule
