`timescale 1ns / 1ns
// RV32I_tb.v

module RV32I_tb;

    reg clk, rst;
	 reg [31:0]Inst_addr;
    wire[31:0]result;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    RV32I UUT (clk, Inst_addr, rst, result);
    
    initial // initial block executes only once
        begin
            // values for a and b
            clk <= 0;
            rst <= 0;
				#period;
				rst <= 1;
				#period
				rst <= 0;
				Inst_addr = 32'h0000_000c;
            #period; // wait for period 
            clk <= 1;
            #period;
        end
endmodule