module ImmediateGen(instr, immediate);
  
  input [31:0] instr;
  output reg [31:0] immediate;

  assign immediate = $signed(instr[31:20]);
  
endmodule