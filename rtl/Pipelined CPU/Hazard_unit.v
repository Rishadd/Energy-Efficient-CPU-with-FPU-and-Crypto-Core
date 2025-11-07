
module Hazard_unit(rst,RdE,PCSrcE,Rs1D,Rs2D,RegwriteM,ResultSrcE0,RegwriteW,RdM,RdW,Rs1E,Rs2E,Forward_A_E,Forward_B_E,StallF,StallD,FlushD,FlushE);

input RegwriteM,RegwriteW,ResultSrcE0,PCSrcE,rst;
input [2:0] RdM,RdW,Rs1E,Rs2E;
input [2:0] Rs1D,Rs2D,RdE;
output StallF,StallD,FlushD,FlushE;
output [1:0] Forward_A_E,Forward_B_E;

assign Forward_A_E= (!rst) ? 2'b00 : (RegwriteM==1) & (RdM!=3'b000) & (RdM==Rs1E) ? 2'b10 :
                                   (RegwriteW==1) & (RdW!=3'b000) & (RdW==Rs1E) ? 2'b01 : 2'b00 ;

assign Forward_B_E= (!rst) ? 2'b00 : (RegwriteM==1) & (RdM!=3'b000) & (RdM==Rs2E) ? 2'b10 :
                                   (RegwriteW==1) & (RdW!=3'b000) & (RdW==Rs2E) ? 2'b01 : 2'b00 ;

wire lwstall;

assign lwstall = ResultSrcE0 && ((Rs1D==RdE)||(Rs2D==RdE));

assign StallF = lwstall ;
assign StallD = lwstall ;

assign FlushD = PCSrcE ;
assign FlushE = lwstall | PCSrcE ;


endmodule

