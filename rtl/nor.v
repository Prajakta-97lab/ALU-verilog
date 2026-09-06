    module nor_gate(
        input [3:0] A,              
        input [3:0] B,  
        input [2:0] opcode,            
        output[7:0] result         // Output result
    );
    
    assign result = (opcode == 3'b111) ? {4'b0000, ~(A | B)} : 8'b00000000; //checks opcode, if yes then perform NOR operation
    
    endmodule
