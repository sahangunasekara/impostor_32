//warahan athule danne main eke thyna variable
module main (

		input clk,
		input reset,
		
		// control signals
		wire branch,mem_write, ALU_En, reg_write, ALUsrc, mem_reg, mem_read, J_type, 
		wire [1:0] ALU_op,
		
		//input clknormal,
		//input clkrf,

		output led_indicator,
		
		// pc
		wire [31:0] pc_in,
		wire [31:0] pc_out,
		wire [31:0] pc_plus4,

		wire [31:0] instruction,

		// register file
		wire [4:0] read_addr_1, 
		wire [4:0] read_addr_2, 
		wire [4:0] write_addr,
		wire [31:0] write_data;
		wire [31:0] read_data_1,
		wire [31:0] read_data_2,
		
		//data memory
		wire [31:0] ALU_result;
		wire [31:0] read_data;

		wire [31:0] register_write_data;

		//ALU controller
		wire [3:0] out_to_ALU,
		wire [2:0] mem,
		wire [1:0] equal_comp,
		wire [3:0] funct,
		
		//Branching ALU block
		wire [31:0] immidiate,
		wire [31:0] branch_out,
		wire zero,
		
		//ALU
		wire [31:0] ScrB,
		wire [31:0] ScrA,
		wire [31:0] alu_out,
		
		//mainconroller
		wire [6:0] Opcode,
		);



// Instantiate the modules
program_counter program_counter_module (
	.clk(clk),
	.pc_in(pc_in),
	.pc_out(pc_out)
	);

instruction memory instruction memory_module (
	.clk(clk),
	.pc_out(pc_out),
	.instruction(instruction)
	);

	
  // Instantiate Register File
register_file register_file_module(
    .clk(clk),
    .reset(reset),
    .write_addr(write_addr),
    .write_data(write_data),
    .read_data_1(read_data_1),
    .read_data_2(read_data_2),
    .read_addr_1(read_addr_1),
    .read_addr_2(read_addr_2),
    .reg_write(reg_write)
  );

  // Instantiate Instruction Memory


  // Instantiate Data Memory
data_memory data_memory_module(
    .clk(clk),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .DATA_MEM_In(mem)
    .read_data(read_data),
    .write_data(read_data_2),
    .addr(ALU_result)
    // Add other inputs and outputs here
  );

  // Instantiate Control Unit
maincontroller maincontroller_module(
    . Opcode( Opcode),
    . Aluop(ALU_op)
    . RegWrite(reg_write)
    . MemWrite(mem_write)
    . MemRead(mem_read)
    . Branch(branch)
    . ALUSrc(ALUsrc)
    . jump(J_type)
    . ALU_En(ALU_En)
    . mem_reg(mem_reg)

  );

  // Instantiate ALU Control
alu_control alu_control_module(
    .alu_op(ALU_op),
    .out_to_alu(out_to_ALU)
    .funct(funct)
    .equal_comp(equal_comp)
    .mem(mem)
    .ALU_En(ALU_En)
    // Add other inputs and outputs here
  );

  // Instantiate ALU
alu alu_module(
    .ScrA(ScrA),
    .ScrB(ScrB),
    .alu_control(out_to_ALU),
    .ALUResult(alu_out),
    .zero(zero),
    .equalComp(equal_comp)
	 ); 
mux_N_bit #(32) jumper (
		.in0(register_write_data), 
		.in1(pc_plus4), 
		.mux_out(write_data), 
		.control( J_type)
		);
mux_N_bit #(32) ALU_mux (
		.in0(read_data_2), 
		.in1(immidiate), 
		.mux_out(ScrB), 
		.control( ALUsrc)
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
		.in_b(32'b0100), 
		.add_out(pc_plus4)
		); // pc + 4
		
alu_add_only pc_branching (
		.in_a(pc_out), 
		.in_b(immidiate), 
		.add_out(branch_out)
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