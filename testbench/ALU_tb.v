`timescale 1ns/1ps

module ALU_tb;
    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [7:0] result;

    // Make sure ALU module name matches this
    ALU uut (.A(A), .B(B), .opcode(opcode), .result(result));

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Opcode=%b | Result=%b", $time, A, B, opcode, result);

        A = 4'b0101; 
        B = 4'b0000;

        opcode = 3'b000; #10; // ADD
        opcode = 3'b001; #10; // SUB
        opcode = 3'b010; #10; // MUL
        opcode = 3'b011; #10; // DIV
        opcode = 3'b100; #10; // LEFT SHIFT
        opcode = 3'b101; #10; // RIGHT SHIFT
        opcode = 3'b110; #10; // NAND
        opcode = 3'b111; #10; // NOR

        #10 $finish;
    end
endmodule
