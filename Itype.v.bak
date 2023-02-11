`timescale 1ns/100ps

module Itype(input clk, input [31:0] pc_out, input reset, output [31:0] ALU_result);

	//PC pc (.clk(clk), .reset(rst))
	
	wire [31:0] instruction;
	wire [1:0] Alu_op;
	wire [3:0] out_to_alu;
   wire [1:0] equal_comp;
	wire [2:0] mem;
	wire RegWrite, MemWrite, MemRead, Branch, ALUSrc,jump, ALU_En, mem_reg,zero;
	
	wire [4:0] read_addr_1; 
	wire [4:0] read_addr_2; 
	wire [4:0] write_addr;
	wire [31:0] write_data;
	wire [31:0] read_data_1;
	wire [31:0] read_data_2;
	wire [6:0] Opcode;
	wire [31:0] immidiate;
	wire [3:0] funct;
	
	//wire reg_w;
	instruction_memory Instruction_memory (
	.read_addr(Inst_addr), 
	.clk(clk), 
	.instruction(inst)
	);
instruction_parser instruction_parser(
		.instruction(inst),
		.rs1(read_addr_1),
		.rs2(read_addr_2),
		.rd(write_addr),
		.opcode(Opcode),
		.imm(immidiate),
		.func(funct)
		);
	
	// for R type instruction
register_file register_file(
    .clk(clk),
    .read_addr_1(read_addr_1),
    .read_addr_2(read_addr_2),
    .write_addr(write_addr),
    .write_data(ALU_result),//..........
    .reg_write(RegW),
    .read_data_1(ReadRegData1),
    .read_data_2(ReadRegData2)
	 );
	
alu_control ALU_control (
	.funct(funct),
	.alu_op(Aluop),
	.out_to_alu(operation),
	.ALU_En(ALU_En),
	.equal_comp(equal_comp),
	.mem(mem)
	);
maincontroller contr(
	.Opcode(Opcode),
	.RegWrite(RegW), 
	.MemWrite(MemW), 
	.MemRead(MemR), 
	.Branch(Branch), 
	.ALUSrc(ALUSrc), 
	.Aluop(Aluop),
	.jump(jump), 
	.ALU_En(ALU_En), 
	.mem_reg(mem_reg)
	);
	
   
	
alu sahan(
	.ScrA(ReadRegData1),
	.ScrB(ReadRegData2),
	.alu_control(operation),
	.ALUResult(ALU_result),
	.zero(zero),
	.equalComp(equal_comp)
	);
endmodule