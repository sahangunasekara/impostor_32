module mainController(

	input [6:0] Opcode,
	output [1:0] Aluop);//ALUSrc,MemtoReg,RegWrite, MemRead, MemWrite, Branch,jump,
	reg [8:0] control;
	assign {RegWrite, MemWrite, MemRead, Branch, ALUSrc, Alu0, Alu1,jump} = control;

	always @(*)
	begin
		case(Opcode)
			7'b0110011 : control <= 8'b10000000; // R-type
			7'b0000011 : control <= 8'b10101100; // I-type load
			7'b0010011 : control <= 8'b10001010; // I-type imm
			7'b0100011 : control <= 8'b01001100; // s-type
			7'b1100011 : control <= 8'b00010110; // sb-type
			default : control    <= 8'bxxxxxxxx;
		endcase
		
		case(Opcode)
			7'b1101111 : control <= 8'b10001xx1; // jal-type
			7'b0110111 : control <= 8'b10001xx0; // lui-type
			7'b0010111 : control <= 8'b00000xx0; // auipc-type
			default : control    <= 8'bxxxxxxxx;
		endcase
		
	end

endmodule
