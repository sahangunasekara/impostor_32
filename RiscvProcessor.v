module RiscvProcessor(reset,d_mem_addr);
	input reset;
	
	//pc signals
	wire [31:0] pc_in, pc_out;
	wire [31:0] pc_origin_al, pc_out_unsign_extended, pc_plus4;
	
	// I-MEM signals
	wire [31:0] instruction;
	
	//reg file signals
	wire [4:0] reg_write_addr;
	wire [31:0] reg_write_data, reg_read_data; 
	
	//Data mem signals
	input [7:0] d_mem_addr;
	wire [31:0] d_mem_read_data;
	
	//control signals
	wire RegWrite, MemWrite, MemRead, Branch, ALUSrc,jump, ALU_En, mem_reg;
	wire [1:0] aluop;
	wire [3:0] alu_contol_out
endmodule
	