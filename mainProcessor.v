module main (
		input clk,
		input reset,
		//input clknormal,
		//input clkrf,

		output led_indicator,

		wire [7:0] pc_in,
		wire [31:0] pc_out,
		wire [31:0] pc_plus4,

		wire [31:0] instruction,

		wire [4:0] read_addr_1, 
		wire [4:0] read_addr_2, 
		wire [4:0] reg_dest,
		wire [31:0] write_data;
		wire [31:0] read_data_1,
		wire [31:0] read_data_2,

		wire [7:0] addr;
		//input [31:0] write_data;
		wire [31:0] read_data;

		wire reg_dest,
		wire jump,
		wire branch,
		wire mem_read,
		wire mem_to_reg,
		wire mem_write,
		wire aluSrc,
		wire reg_write,
		wire alu0,
		wire alu1,

		wire [1:0] aluop,
		wire [3:0] alu_control_out,

		wire [31:0] extended_immidiate,
		wire [31:0] shifted_immidiate,
		wire [31:0] branch_out,
		wire [31:0] branch_result,
		wire branch_decided,
		wire zero,

		wire [27:0] jump_base28,
		wire [31:0] jump_addr,

		wire [31:0] alu_in_b,
		wire [31:0] alu_out,

		wire  [3:0] tho,
		wire  [3:0] hun,
		wire  [3:0] ten,
		wire  [3:0] one,
		wire  [6:0] thossd,
		wire  [6:0] hunssd,
		wire  [6:0] tenssd,
		wire  [6:0] onessd,

		wire [4:0] multi_purpose_read_addr,
		wire multi_purpose_reg_write
		);

reg clkrf_reg, clk_reg, multi_purpose_reg_write_reg;
reg [4:0] multi_purpose_read_addr_reg;
reg [3:0] tho_reg, hun_reg, ten_reg, one_reg;

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

sign_extension sign_extension_module(
	 .sign_in(instruction[15:0]), 
	 .sign_out(extended_immidiate));
	
  // Instantiate Register File
register_file register_file_module(
    .clk(clk),
    .rst(rst),
    .reg_write_addr(reg_write_addr),
    .reg_write_data(reg_write_data),
    .reg_read_data_1(reg_read_data_1),
    .reg_read_data_2(reg_read_data_2)
    // Add other inputs and outputs here
  );

  // Instantiate Instruction Memory
instruction_memory instruction_memory_module(
    .clk(clk),
    .rst(rst),
    .read_addr(multi_purpose_read_addr),
    .instruction(instruction)
    // Add other inputs and outputs here
  );

  // Instantiate Data Memory
data_memory data_memory_module(
    .clk(clk),
    .rst(rst),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_to_reg(mem_to_reg),
    .alu_out(alu_out),
    .d_mem_read_data(d_mem_read_data),
    .d_mem_write_data(reg_write_data),
    .d_mem_addr(d_mem_addr)
    // Add other inputs and outputs here
  );

  // Instantiate Control Unit
maincontroller maincontroller_module(
	 .opcode(opcode),
    .aluop(aluop)
    // Add other inputs and outputs here
  );

  // Instantiate ALU Control
alu_control alu_control_module(
	 .instr(instr),
    .aluop(aluop),
    .operation(operation)
    // Add other inputs and outputs here
  );

  // Instantiate ALU
alu alu_module(
    .srcA(clk),
    .srcB(rst),
    .opcode(alu_control_out),
    .alu_result(reg_read_data_2),
    .zero(alu_in_b),
    .Comparatorenable(Comparatorenable),
	 .equal_inequal(equal_inequal)
	 ); 