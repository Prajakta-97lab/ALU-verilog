module add(
    input [3:0] A,//4-bit input operand A
    input [3:0] B,//4-bit input operand B
    input [2:0] opcode,//3-bit opcode (to select operation)
    output [7:0] result //8-bit output
    );
    assign result= (opcode==3'b000) ? {4'b0000,(A+B)}:8'b00000000;// If opcode is 3'b000, perform addition else output zero
endmodule
