module nand_gate(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output [7:0] result
);

assign result = (opcode == 3'b110) ? {4'b0000, ~(A & B)} : 8'b00000000; //If the opcode is 010, A and B are multiplied while concatenating 4 zeros to make an 8-bit result otherwise the output is 0 
endmodule