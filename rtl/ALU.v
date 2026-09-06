module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output [7:0] result
);

// Wires for each operation's output
wire [7:0] add_out, sub_out, mul_out, div_out;
wire [7:0] lshift_out, rshift_out, nand_out, nor_out;

// Instantiate all operation modules
add        U1 (.A(A), .B(B), .opcode(opcode), .result(add_out));
sub        U2 (.A(A), .B(B), .opcode(opcode), .result(sub_out));
mul        U3 (.A(A), .B(B), .opcode(opcode), .result(mul_out));
div        U4 (.A(A), .B(B), .opcode(opcode), .result(div_out));
left_shift U5 (.A(A), .opcode(opcode), .result(lshift_out));
right_shift U6 (.A(A), .opcode(opcode), .result(rshift_out));
nand_gate  U7 (.A(A), .B(B), .opcode(opcode), .result(nand_out));
nor_gate   U8 (.A(A), .B(B), .opcode(opcode), .result(nor_out));

// Select the active output
assign result = add_out | sub_out | mul_out | div_out |
                lshift_out | rshift_out | nand_out | nor_out;

endmodule