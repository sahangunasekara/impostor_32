`timescale 1ns/100ps

module RV32I_tb;

    reg clk, rst;
	 reg [31:0]Inst_addr;
    wire[31:0]result;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 10;  
    top_RV32I UUT (clk, Inst_addr, rst, result);
    
    initial begin
            // values for a and b
            clk = 0;
				rst = 1;
				Inst_addr = 32'h0000_0000;
				#5;rst = 0;
				#200
				$stop;
				$finish;
	 end
	 always begin #10 clk =~clk; end
	 always @(posedge clk) begin
				Inst_addr <= Inst_addr + 32'd4;
				end
endmodule