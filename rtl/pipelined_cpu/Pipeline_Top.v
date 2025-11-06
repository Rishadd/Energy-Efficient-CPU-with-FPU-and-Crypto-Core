


module Pipeline_Top(clk,rst,
PCSrcE,RegwriteW,RegwriteE,MemwriteE,JumpE,branchE,ALUSrcE,RegwriteM,MemwriteM,
ResultSrcE,ResultSrcM,ResultSrcW,Forward_A_E,Forward_B_E,
ALUControlE,
RdW,RdE,RdM,Rs1E,Rs2E,
PC_TargetE ,PCD,InstrD,ALUResultE,pc_plus4D,ResultW,RD1E,RD2E,immExtE,PCE,pc_plus4E,ALUResultM,WriteDataM,pc_plus4M,
ALUResultW, ReadDataW,pc_plus4W,
PC_F,PCF, pc_plus4F,InstrF,
InstrF_D,PCF_D,pc_plus4F_D);

input clk,rst ;


output PCSrcE,RegwriteW,RegwriteE,MemwriteE,JumpE,branchE,ALUSrcE,RegwriteM,MemwriteM;
output [1:0] ResultSrcE,ResultSrcM,ResultSrcW,Forward_A_E,Forward_B_E;
output [3:0] ALUControlE;
output [2:0] RdW,RdE,RdM,Rs1E,Rs2E;
output [15:0] PC_TargetE ,PCD,InstrD,ALUResultE,pc_plus4D,ResultW,RD1E,RD2E,immExtE,PCE,pc_plus4E,ALUResultM,WriteDataM,pc_plus4M;
output [15:0] ALUResultW, ReadDataW,pc_plus4W;
output [15:0] PC_F,PCF, pc_plus4F,InstrF;
output [15:0] InstrF_D,PCF_D,pc_plus4F_D;

    Fetch_cycle Fetch_cycle
        ( 
            .clk(clk),
            .rst(rst),
            .PCSrcE(PCSrcE),
            .PC_TargetE(PC_TargetE),
            .PCD(PCD),
            .InstrD(InstrD),
            .pc_plus4D(pc_plus4D),
            .PC_F(PC_F),
            .PCF(PCF),
            .pc_plus4F(pc_plus4F),
            .InstrF(InstrF),
            .InstrF_D(InstrF_D),
            .PCF_D(PCF_D),
            .pc_plus4F_D(pc_plus4F_D)
        );


    
    Decode_cycle Decode_cycle
        (
            .clk(clk),
            .rst(rst),
            .PCD(PCD),
            .pc_plus4D(pc_plus4D),
            .InstrD(InstrD),
            .RegwriteW(RegwriteW),
            .RdW(RdW),
            .ResultW(ResultW),
            .RegwriteE(RegwriteE),
            .MemwriteE(MemwriteE),
            .ResultSrcE(ResultSrcE),
            .JumpE(JumpE),
            .branchE(branchE),
            .ALUControlE(ALUControlE),
            .ALUSrcE(ALUSrcE),
            .RD1E(RD1E),
            .RD2E(RD2E),
            .immExtE(immExtE),
            .PCE(PCE),
            .RdE(RdE),
            .pc_plus4E(pc_plus4E),
            .Rs1E(Rs1E),
            .Rs2E(Rs2E)
            
        );
    

    Execute_cycle Execute_cycle
        (
            .clk(clk),
            .rst(rst),
            .RegwriteE(RegwriteE),
            .ResultSrcE(ResultSrcE),
            .ALUSrcE(ALUSrcE),
            .MemwriteE(MemwriteE),
            .JumpE(JumpE),
            .branchE(branchE),
            .ALUControlE(ALUControlE),
            .RdE(RdE),
            .RD1E(RD1E),
            .RD2E(RD2E),
            .PCE(PCE),
            .immExtE(immExtE),
            .pc_plus4E(pc_plus4E),
            .PCSrcE(PCSrcE),
            .RegwriteM(RegwriteM),
            .ResultSrcM(ResultSrcM),
            .MemwriteM(MemwriteM),
            .ALUResultM(ALUResultM),
            .WriteDataM(WriteDataM),
            .RdM(RdM),
            .pc_plus4M(pc_plus4M),
            .PC_TargetE(PC_TargetE),
            .ForwardA_E(Forward_A_E),
            .ForwardB_E(Forward_B_E),
            .ResultW(ResultW)
        );


    Memory_cycle Memory_cycle
        (
            .clk(clk),
            .rst(rst),
            .RegwriteM(RegwriteM),
            .ResultSrcM(ResultSrcM),
            .MemwriteM(MemwriteM),
            .RdM(RdM),
            .ALUResultM(ALUResultM),
            .WriteDataM(WriteDataM),
            .pc_plus4M(pc_plus4M),
            .RegwriteW(RegwriteW),
            .ResultSrcW(ResultSrcW),
            .ALUResultW(ALUResultW),
            .RdW(RdW),
            .ReadDataW(ReadDataW),
            .pc_plus4W(pc_plus4W)

        );


    WriteBack_cycle WriteBack_cycle
        (
            .clk(clk),
            .rst(rst),
            .RegwriteW(RegwriteW),
            .ResultSrcW(ResultSrcW),
            .ALUResultW(ALUResultW),
            .ReadDataW(ReadDataW),
            .RdW(RdW),
            .pc_plus4W(pc_plus4W),
            .ResultW(ResultW)

        );

    Hazard_unit  Hazard
        (
            .rst(rst),
            .RegwriteM(RegwriteM),
            .RegwriteW(RegwriteW),
            .RdM(RdM),
            .RdW(RdW),
            .Rs1E(Rs1E),
            .Rs2E(Rs2E),
            .Forward_A_E(Forward_A_E),
            .Forward_B_E(Forward_B_E)
        );


endmodule