`timescale 1ns / 1ps


module alu_decoder (
    input [2:0]      funct3,
    input [1:0]      ALUOp, 
    output reg [1:0]be,
    output reg [3:0] ALUCtrl
);

//AluOP signal generation for ALU operation
always @(*) begin
	be = 2'b0;
    case (ALUOp)
        2'b00: begin
					ALUCtrl = 4'b0000;             // addition
					case (funct3)
						3'b001: be = 2'b01;
						3'b010: be = 2'b11;
						default: be = 2'b00;
					endcase
					end
						
        2'b01: begin // Branch operations
            case (funct3)
                3'b000: ALUCtrl = 4'b0001; // BEQ (SUB, check zero flag)
                3'b001: ALUCtrl = 4'b0001; // BNE (SUB, check nonzero flag)
                3'b100: ALUCtrl = 4'b0001; // BLT (SLT signed)
                3'b101: ALUCtrl = 4'b0001; // BGE (SLT signed, invert result)
                3'b110: ALUCtrl = 4'b0110; // BLTU (SLTU unsigned)
                3'b111: ALUCtrl = 4'b0110; // BGEU (SLTU unsigned, invert result)
                default: ALUCtrl = 4'b0000;
            endcase
        end
		  
		  2'b10: begin // R-type and I-type ALU Operations
            case (funct3)
                3'b000: ALUCtrl = 4'b0000; // ADD
                3'b001: ALUCtrl = 4'b0001; // SUB
                3'b101: ALUCtrl = 4'b0111; // SLL (Shift Left Logical)
                3'b010: ALUCtrl = 4'b0101; // SLT (Set Less Than)                3'b111: ALUCtrl = 4'b1001; // SRA (Shift Right Arithmetic)
                3'b011: ALUCtrl = 4'b1000; // SRL (Shift Right Logical)
                3'b100: ALUCtrl = 4'b0011; // OR
                3'b110: ALUCtrl = 4'b0010; // AND
                default: ALUCtrl = 4'b0000;
            endcase
				end
				
			2'b11: begin
			     case (funct3)
			         3'b000: ALUCtrl = 4'b1110;   // FPU addition
			         3'b001: ALUCtrl = 4'b1111;   // FPU multiplication
				     default: ALUCtrl = 4'b0000;
				  endcase
				end  
    endcase
end

endmodule
