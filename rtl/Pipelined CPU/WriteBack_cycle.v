//`include "mux3to1.v"

module WriteBack_cycle(clk,rst,RegwriteW,ResultSrcW,ALUResultW,ReadDataW,RdW,pc_plus4W,ResultW);

input clk,rst,RegwriteW;
input [1:0] ResultSrcW ;
input [2:0] RdW ;
input [15:0] ALUResultW,ReadDataW,pc_plus4W ;
output [15:0] ResultW ;

mux_3_1 mux_write
(
    .a(ALUResultW),
    .b(ReadDataW),
    .c(pc_plus4W),
    .sel(ResultSrcW),
    .y(ResultW)
);


endmodule