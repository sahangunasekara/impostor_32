module data_memory (addr, write_data, read_data, clk, mem_read, mem_write, signed_unsigned, mem_size);

	input [7:0] addr;
	input [31:0] write_data;
	output reg [31:0] read_data;

	input clk, mem_read, mem_write, signed_unsigned;
    input [1:0] mem_size;

	reg [31:0] dmemory [63:0];
	reg [31:0] write_data_in;

	wire [5:0] shifted_addr;
	wire [2:0] DATA_MEM_In;
	wire [31:0] DATA;
	
	assign shifted_addr = addr[7:2];

	assign DATA_MEM_In = {signed_unsigned,mem_size};
	assign DATA = (mem_read) ? dmemory[addr] : 32'bx;

	always @(posedge clk)
	begin
		if (mem_read == 1'b1) 

			begin

				case(DATA_MEM_In)
				3'b001: begin if(DATA[7] ==1'b0) read_data = {24'b000000000000000000000000, DATA[7:0]};
					else read_data = {24'b111111111111111111111111, DATA[7:0]};
					end

				3'b010:begin if(DATA[16] ==1'b0) read_data = {16'b0000000000000000, DATA[15:0]};
					else read_data = {16'b1111111111111111, DATA[15:0]};
					end

				3'b011: read_data = DATA;
				3'b101: read_data = {24'b000000000000000000000000, DATA[7:0]};
				3'b110: read_data= {16'b0000000000000000, DATA[15:0]};
				endcase

			end

		else if (mem_write == 1'b1)

			begin 

 				case(DATA_MEM_In)
 				3'b001: begin 
					write_data_in = {24'b000000000000000000000000, write_data[7:0]};
					dmemory[addr] = write_data_in;
				end
 				3'b010:begin 
					write_data_in = {16'b0000000000000000, write_data[15:0]};
					dmemory[addr] = write_data_in;
				end

 				3'b011:begin
					dmemory[addr] = write_data;
				end
 				endcase
			end

	end
	
endmodule