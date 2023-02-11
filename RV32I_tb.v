`timescale 1ns/100ps
// RV32I_tb.v

module RV32I_tb;

    reg clk, rst;
	 reg [31:0]Inst_addr;
    wire[31:0]result;
	 
    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    always begin #10 clk=~clk; end
    
    initial // initial block executes only once
        begin
            // values for a and b
				clk=0;
            Inst_addr = 32'h0;
        end
endmodule