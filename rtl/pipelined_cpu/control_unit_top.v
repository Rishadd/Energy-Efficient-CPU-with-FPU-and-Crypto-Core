`timescale 1ns / 1ps

module control_unit_top(
    funct3,op,
    ALUCtrl,ALUSrc, memwrite, a2src,
    regwrite,resmux,PCSrc,be,
    branch,jump
    );
input [2:0]funct3;
input [3:0]op;
output [3:0]ALUCtrl;
output ALUSrc, memwrite, a2src, regwrite, PCSrc;
output [1:0]resmux,be;

wire [1:0]ALUop;
output branch,jump;

main_decoder md(op,ALUop,resmux, ALUSrc,branch, memwrite,a2src, regwrite, jump);

alu_decoder ad(funct3, ALUop, be, ALUCtrl);


endmodule