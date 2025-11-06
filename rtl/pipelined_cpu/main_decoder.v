`timescale 1ns / 1ps

module main_decoder(
    input [3:0]op,
    output reg [1:0]ALUop,resmux,
    output reg ALUSrc, branch, memwrite,
    output reg a2src, regwrite, jump);
    
    
always @(*)begin
case(op)
    4'b0000: begin  //R-Type
        ALUop=2'b10;
        ALUSrc=1'b0;
        branch=1'b0;
        memwrite=1'b0;
        a2src=1'b1;
        regwrite=1'b1;
        resmux=2'b00;
        jump=1'b0;
        end
        
    4'b0001: begin  //L-Type
        ALUop=2'b00;
        ALUSrc=1'b1;
        branch=1'b0;
        memwrite=1'b0;
        a2src=1'b0;
        regwrite=1'b1;
        resmux=2'b01;
        jump=1'b0;
        end
        
    4'b0010: begin  //S-Type
        ALUop=2'b00;
        ALUSrc=1'b1;
        branch=1'b0;
        memwrite=1'b1;
        a2src=1'b0;
        regwrite=1'b0;
        resmux=2'b01;
        jump=1'b0;
        end
        
    4'b0011: begin  //I-Type
        ALUop=2'b10;
        ALUSrc=1'b1;
        branch=1'b0;
        memwrite=1'b0;
        a2src=1'b0;
        regwrite=1'b1;
        resmux=2'b00;
        jump=1'b0;
        end
        
    4'b0100: begin  //B-Type
        ALUop=2'b01;
        ALUSrc=1'b0;
        branch=1'b1;
        memwrite=1'b0;
        a2src=1'b0;
        regwrite=1'b0;
        resmux=2'b10;
        jump=1'b0;
        end
        
    4'b0101: begin  //J-Type
        ALUop=2'b00;
        ALUSrc=1'b0;
        branch=1'b0;
        memwrite=1'b0;
        a2src=1'b0;
        regwrite=1'b1;
        resmux=2'b10;
        jump=1'b1;
        end
endcase
end
endmodule
