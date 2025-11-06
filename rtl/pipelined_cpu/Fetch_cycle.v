

module Fetch_cycle(clk,rst,PCSrcE,PC_TargetE,PCD,InstrD,pc_plus4D,
PC_F,PCF, pc_plus4F,InstrF,
InstrF_D,PCF_D,pc_plus4F_D);

input PCSrcE,clk,rst;
input [15:0] PC_TargetE;
output [15:0] InstrD,PCD,pc_plus4D;

output [15:0] PC_F,PCF, pc_plus4F,InstrF;
output reg [15:0] InstrF_D,PCF_D,pc_plus4F_D;

mux PC_Mux
(

    .a(pc_plus4F),
    .b(PC_TargetE),
    .c(PC_F),
    .sel(PCSrcE)

);


P_C fetch_pc
(
    .clk(clk),
    .rst(rst),
    .PC(PCF),
    .PCNext(PC_F)

);

instr_Mem Fetch_instr_mem
(
    .A(PCF),
    .Instr(InstrF),
    .rst(rst)

);

PC_Adder pc_adderF
(
    .a(PCF),
    .b(16'h0001),
    .c(pc_plus4F)

);

always @(posedge clk , negedge rst)
begin
    if(!rst) 
    begin
        InstrF_D<=16'h0000;
        PCF_D<=16'h0000;
        pc_plus4F_D<=16'h0000;
    end
    else
    begin
        InstrF_D<=InstrF;
        pc_plus4F_D<=pc_plus4F;
        PCF_D<=PCF;
    end
end

assign InstrD = (!rst) ? 16'h0000 : InstrF_D;
assign PCD = (!rst) ? 16'h0000 : PCF_D ;
assign pc_plus4D = (!rst) ? 16'h0000 : pc_plus4F_D ;


endmodule