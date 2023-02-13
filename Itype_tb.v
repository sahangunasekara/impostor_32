`timescale 1ns/100ps

module Itype_tb;

reg clk,reset;

Itype UUT (clk, reset, ALU_result);
	
initial 
begin
	clk = 0;
	reset = 1;
	#15;reset = 0;
	#400
	$stop;
	//$finish;
end
always begin #10 clk=~clk; end				
endmodule