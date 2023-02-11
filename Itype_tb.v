`timescale 1ns/100ps

module Itype_tb;

reg clk,reset;
reg [31:0] instr_addr;
wire [31:0] ALU_result;

Itype u1(
	
	.clk(clk),
	.pc_out(instr_addr),
	.ALU_result(ALU_result)
	);
	
initial 
begin
	clk = 0;
	reset = 0;
	instr_addr = 32'b0;
	//ALU_result = 32'h0;
	#100
	$stop;
	$finish;
end
	
always begin #10 clk=~clk; end
	
always @ (posedge clk) begin 

instr_addr = instr_addr + 32'b0100;

end	
	
endmodule