
module Hazard_unit(rst,RegwriteM,RegwriteW,RdM,RdW,Rs1E,Rs2E,Forward_A_E,Forward_B_E);

input RegwriteM,RegwriteW,rst;
input [2:0] RdM,RdW,Rs1E,Rs2E;
output [1:0] Forward_A_E,Forward_B_E;

assign Forward_A_E= (!rst) ? 2'b00 : (RegwriteM==1) & (RdM!=3'b000) & (RdM==Rs1E) ? 2'b10 :
                                   (RegwriteW==1) & (RdW!=3'b000) & (RdW==Rs1E) ? 2'b01 : 2'b00 ;

assign Forward_B_E= (!rst) ? 2'b00 : (RegwriteM==1) & (RdM!=3'b000) & (RdM==Rs2E) ? 2'b10 :
                                   (RegwriteW==1) & (RdW!=3'b000) & (RdW==Rs2E) ? 2'b01 : 2'b00 ;

endmodule

