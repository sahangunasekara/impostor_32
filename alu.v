`timescale 1ns/100ps

/*ALU operations
0000 - AND
0001 - OR
0010 - ADD
0011 - XOR
0100 - SLL
0101 - SLL
0110 - SUB
0111 - Unsigned Branch
1000 - SRL
1001 - SRA
1010
1011

*/

module alu (ScrA,ScrB,alu_control,ALUResult,zero,equalComp);
    input  [31:0] ScrA,ScrB;
    input  [3:0] alu_control;
    output reg [31:0] ALUResult;
	output  reg zero;
    input [1:0]equalComp;

    wire equal_inequal;
    wire Comparatorenable; 

    assign {equal_inequal,Comparatorenable} = equalComp;
    

always @ (*)
begin

    ALUResult='d0;
    zero='b0;

    case(alu_control)
    4'b0000: begin//AND 
		  zero=0;
        ALUResult = ScrA & ScrB;
    end
    4'b0001: begin//OR
		  zero=0;
        ALUResult = ScrA | ScrB;
    end
    4'b0010: begin//ADD
		  zero=0;
        ALUResult = ScrA + ScrB;
    end
    4'b0011: begin//XOR
        ALUResult = ScrA ^ ScrB;
		  zero=0;
        if (Comparatorenable=='b1) begin
            if (equal_inequal=='b1) begin
                zero=(ALUResult==32'b0);
            end 
				else begin
                zero=(ALUResult!=32'b0);
            end
        end
    end
    4'b0100:begin//SLL
        ALUResult = ScrA << ScrB;
    end
    4'b0101:begin//SLT set less than
        ALUResult = ($signed(ScrA) < $signed(ScrB));// less than Correction
        if (Comparatorenable=='b1) begin
            if (equal_inequal=='b1) begin
                zero=(ALUResult!=32'b0);
            end else begin
                zero=(ALUResult==32'b0);
            end
        end
    end
    4'b0110://SUB
        begin
        ALUResult = $signed (ScrA)-$signed(ScrB);
        zero = ($signed(ALUResult)==$signed(1'd0));
        end
    4'b0111://SLTU
        begin
            ALUResult=(ScrA<ScrB);
            if (Comparatorenable=='b1) begin
            if (equal_inequal=='b1) begin
                zero=(ALUResult!=32'b0);
            end else begin
                zero=(ALUResult==32'b0);
            end
        end
        end
    4'b1000:begin//SRL
        ALUResult = ScrA >> ScrB;
    end
    4'b1001:begin//SRLA
        ALUResult = $signed(ScrA) >>> ScrB;
    end
    

    default:begin
        ALUResult= 'b0;
    end
    endcase
    

end
    
endmodule
