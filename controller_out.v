
module anotherModule(

	// inputs and outputs of anotherModule here
	input [6:0] Opcode,
	output reg RegWrite, MemWrite, MemRead, Branch, ALUSrc, Alu0, Alu1,jump
	);
	
	
	// Instantiate the mainController module
	mainController controllerInstance(
		.Opcode(Opcode),
		.RegWrite(RegWrite),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Branch(Branch),
		.ALUSrc(ALUSrc),
		.Alu0(Alu0),
		.Alu1(Alu1),
		.jump(jump)
		
	);
endmodule