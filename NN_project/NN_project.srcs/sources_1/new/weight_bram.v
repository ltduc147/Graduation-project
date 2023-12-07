

module weight_bram #(parameter numOfWeight = 3, neuronNo=5, layerNo=1, addrWidth=10, dataWidth=32, weightFile="") 
    ( 
    input clk,
    input wen,
    input ren,
    input [addrWidth-1:0] waddr,
    input [addrWidth-1:0] raddr,
    input [dataWidth-1:0] din,
    output reg [dataWidth-1:0] dout);
    
    reg [dataWidth-1:0] mem [numOfWeight-1:0];

    `ifdef preconfig
        initial
		begin
	        $readmemb(weightFile, mem);
	    end
	`else
		always @(posedge clk)
		begin
			if (wen)
			begin
				mem[waddr] <= din;
			end
		end 
    `endif
    
    always @(posedge clk)
    begin
        if (ren)
        begin
            dout <= mem[raddr];
        end
    end 
endmodule