module right_shift(
input [3:0] A,
input [2:0] opcode,
output [7:0] result
);
assign result = (opcode == 3'b101) ? {4'b0000, (A>>1)} : 8'b00000000;  //opcode is checked, if yes than 4'b0000 is concatenated after the right shift to produce 8 bit output
endmodule