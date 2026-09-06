module mul(

input [3:0] A, // 4-bit input operand A
input [3:0] B, // 4-bit input operand B
input [2:0] opcode, //3-bit opcode or operation selector
output [7:0] result // 8-bit result
);

assign result = (opcode == 3'b010) ? {4'b0000, (A * B)} : 8'b00000000;//If the opcode is 010, A and B are multiplied while concatenating 4 zeros to make an 8-bit result otherwise the output is 0
endmodule