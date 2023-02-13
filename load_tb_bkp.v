`timescale 1ns/100ps

module load_tb;

reg clk,reset;
reg [31:0] instr_addr;
wire [31:0] ALU_result;

load UUT (clk, instr_addr, reset, ALU_result);
	
initial 
begin
	clk = 0;
	reset = 1;
	instr_addr = 32'h0000_0000;
	#5;reset = 0;
	#200
	$stop;
	//$finish;
end
	
always begin #10 clk=~clk; end

always @(posedge clk) begin
instr_addr <= instr_addr + 32'd4;
end
				
endmodule