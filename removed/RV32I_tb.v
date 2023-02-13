`timescale 1ns/100ps

module RV32I_tb;

    reg clk, rst;
    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    //localparam period = 10;  
    top_RV32I UUT (clk, rst);
    
    initial begin
            // values for a and b
            clk = 0;
				rst = 0;
				#5;rst = 1;
				#5;rst= 0;
				#100
				$stop;
				$finish;
	 end
	 always begin #10 clk =~clk; end
endmodule