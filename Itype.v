`timescale 1ns/100ps

module Itype(input clk, input reset, output [6:0]HEX0,output [6:0]HEX1,output [6:0]HEX2,output [6:0]HEX3,output [6:0]HEX4,output [6:0]HEX5,output [6:0]HEX6,output [6:0]HEX7);

	//PC pc (.clk(clk), .reset(rst))
	
  wire [31:0] instruction,ScrB,register_write_data;
	wire [1:0] Alu_op;
	wire [3:0] out_to_alu;
   wire [1:0] equal_comp;
	wire [2:0] mem;
	wire RegWrite, MemWrite, MemRead, branch, ALUSrc,jump, ALU_En, mem_reg,zero,branch_zero;
	
	wire [4:0] read_addr_1; 
	wire [4:0] read_addr_2; 
	wire [4:0] write_addr;
	wire [31:0] write_data;
	wire [31:0] read_data_1;
	wire [31:0] read_data_2;
	wire [6:0] Opcode;
	wire [31:0] immidiate;
	wire [3:0] funct;
	wire [31:0] read_data;
	wire [31:0] branch_out;
	wire [31:0] ALU_result;

	// pc
		wire [31:0] pc_in;
		wire [31:0] pc_out;
		wire [31:0] pc_plus4;
	
segment Segment7(
.clk(clk),
.ALU_result(ALU_result),
.HEX0(HEX0),
.HEX1(HEX1),
.HEX2(HEX2),
.HEX3(HEX3),
.HEX4(HEX4),  	
.HEX5(HEX5),	
.HEX6(HEX6),
.HEX7(HEX7)	
);	
	//wire reg_w;
instruction_memory Instruction_memory (
	.read_addr(pc_out), 
	.clk(clk), 
	.instruction(instruction)
	);
program_counter program_counter_module (
	.clk(clk),
	.reset(reset),
	.pc_in(pc_in),
	.pc_out(pc_out)
	);
	

instruction_parser instruction_parser(
		.instruction(instruction),
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
    .write_data(write_data),//..........
    .reg_write(RegW),
  	 .read_data_1(read_data_1),
    .read_data_2(read_data_2)
	 );
	
alu_control ALU_control (
	.funct(funct),
	.alu_op(Alu_op),
	.out_to_alu(out_to_alu),
	.ALU_En(ALU_En),
	.equal_comp(equal_comp),
	.mem(mem)
 
	);
maincontroller contr(
	.Opcode(Opcode),
	.RegWrite(RegW), 
	.MemWrite(MemW), 
	.MemRead(MemR), 
	.Branch(branch), 
	.ALUSrc( ALUSrc), 
	.Aluop(Alu_op),
	.jump(jump), 
	.ALU_En(ALU_En), 
	.mem_reg(mem_reg)
	);
	
data_memory data_memory_module(
    .clk(clk),
    .mem_read(MemR),
    .mem_write(MemW),
    .DATA_MEM_In(mem),
    .read_data(read_data),
    .write_data(read_data_2),
    .addr(ALU_result)
    // Add other inputs and outputs here
  );
  	
alu sahan(
  	.ScrA(read_data_1),
  	.ScrB(ScrB),
	.alu_control(out_to_alu),
	.ALUResult(ALU_result),
	.zero(zero),
	.equalComp(equal_comp)
	);

mux_N_bit #(32) jumper (
		.in0(register_write_data), 
		.in1(pc_plus4), 
		.mux_out(write_data), 
		.control( jump)
		);
mux_N_bit #(32) ALU_mux (
		.in0(read_data_2), 
		.in1(immidiate), 
		.mux_out(ScrB), 
		.control( ALUSrc)
		);
mux_N_bit #(32) data_memory_mux (
		.in0(ALU_result), 
		.in1(read_data), 
		.mux_out(register_write_data), 
		.control(mem_reg)
		);
mux_N_bit #(32) branching_mux (
		.in0(pc_plus4), 
		.in1(branch_out), 
		.mux_out(pc_in), 
		.control(branch_zero)
		);
and_gate branching_and(
		.branch(branch),
		.zero(zero),
		.branch_zero(branch_zero)
		);
alu_add_only program_counter_4 (
		.in_a(pc_out), 
		.in_b($signed(32'b0100)), 
		//.in_b(32'h0004), 
		.add_out(pc_plus4)
		); // pc + 4
		
alu_add_only pc_branching (
		.in_a(pc_out), 
		.in_b(immidiate), 
		.add_out(branch_out)
		); 
endmodule