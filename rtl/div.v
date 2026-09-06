module div(
input [3:0] A, B,
input [2:0] opcode,
output [7:0] result
);
wire [3:0] quotient;
wire [3:0] remainder;

assign quotient = (B != 0) ? (A/B) : 4'b0000;   //(condition) ? (if true) : (if false)
assign remainder = (B != 0) ? (A%B) : A;       //if divided by zero, remainder is the output
assign result = (opcode == 3'b011) ? {remainder, quotient} : 8'b00000000;    //checks opcode, if yes then remainder and quotient concatenate else zero
endmodule