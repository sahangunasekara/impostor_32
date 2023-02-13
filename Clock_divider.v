module Clock_divider(clock_in,clock_out
    );
input clock_in; // input clock on FPGA
output reg clock_out; // output clock after dividing the input clock by divisor
reg[31:0] counter=32'd0;
parameter DIVISOR = 32'd50000000;

always @(posedge clock_in)
begin
 counter <= counter + 32'd1;
 if(counter>=(DIVISOR-1))
  counter <= 32'd0;
 clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
end
endmodule