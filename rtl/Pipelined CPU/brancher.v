`timescale 1ns / 1ps


module brancher(
    input branch,          // High for branch instructions
    input jump,            // High for JAL, JALR
    input zero,            // ALU Zero Flag
    input [2:0]funct3,  // Branch condition type
    input signed [15:0] ALUout, // ALU result for signed comparisons
    output reg PCSrc       // Control signal for PC selection
);

    always @(*) begin
        case(funct3)
            3'b000: PCSrc = branch & zero;             // BEQ (Branch if Equal)
            3'b001: PCSrc = branch & ~zero;            // BNE (Branch if Not Equal)
            3'b100: PCSrc = branch & (ALUout < 0);  // BLT (Branch if Less Than)
            3'b011: PCSrc = branch & (ALUout >= 0); // BGE (Branch if Greater or Equal)
        
        
            default: PCSrc = 0;                        // Default: Don't branch
        endcase

        // JAL and JALR always cause a jump
        if (jump) PCSrc = 1'b1;

            
    end

endmodule
