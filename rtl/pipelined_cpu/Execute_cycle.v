

module Execute_cycle(clk,rst,ResultW,ForwardA_E,ForwardB_E,RegwriteE,ResultSrcE,ALUSrcE,MemwriteE,JumpE,branchE,ALUControlE,RdE,RD1E,RD2E,PCE,immExtE,pc_plus4E,PCSrcE,RegwriteM,ResultSrcM,MemwriteM,ALUResultM,WriteDataM,RdM,pc_plus4M,PC_TargetE);

input RegwriteE,ALUSrcE,MemwriteE,JumpE,branchE,clk,rst;
input [1:0] ResultSrcE,ForwardA_E,ForwardB_E;
input [3:0] ALUControlE ;
input [2:0] RdE ;
input [15:0] RD1E,RD2E,PCE,immExtE,pc_plus4E,ResultW;
output RegwriteM,MemwriteM,PCSrcE;
output [1:0] ResultSrcM ;
output [2:0] RdM ;
output [15:0] ALUResultM,WriteDataM,pc_plus4M,PC_TargetE;

wire [2:0] funct3E;
wire [15:0] Src_A ,Src_B,Src_B_interimm,PC_TargetE,ALUResultE,WriteDataE,ALUoutE;
wire ZeroE,Zero_BranchE;

assign WriteDataE = RD2E;

reg RegwriteE_M,MemwriteE_M;
reg [1:0] ResultSrcE_M;
reg [2:0] RdE_M ;
reg [15:0] ALUResultE_M , WriteDataE_M,pc_plus4E_M;

mux_3_1 src_a_mux
(
    .a(RD1E),
    .b(ResultW),
    .c(ALUResultM),
    .y(Src_A),
    .sel(ForwardA_E)
);

mux_3_1 src_b_mux
(
    .a(RD2E),
    .b(ResultW),
    .c(ALUResultM),
    .y(Src_B_interimm),
    .sel(ForwardB_E)
);

mux alu_srcmux
(
    .a(Src_B_interimm),
    .b(immExtE),
    .sel(ALUSrcE),
    .c(Src_B)
);


PC_Adder target
(
    .a(PCE),
    .b(immExtE),
    .c(PC_TargetE)
);

alu ALU_execute
(
    .a(Src_A),
    .b(Src_B),
    .alu_out(ALUResultE),
    .alu_ctrl(ALUControlE),
    .zero(ZeroE)
);

brancher bm
(.branch(branchE),
 .jump(JumpE), 
 .zero(ZeroE),
 .funct3(funct3E), 
 .ALUout(ALUoutE),
 .PCSrc(PCSrcE)
 );

always @(posedge clk , negedge rst)
begin
    
 if(!rst)
    begin
        RegwriteE_M <=1'b0;
        ResultSrcE_M <=2'b00;
        MemwriteE_M <=1'b0;
        RdE_M <=3'b000;
        ALUResultE_M <=16'h0000; 
        WriteDataE_M <=16'h0000;
        pc_plus4E_M <=16'h0000;
    end

    else 
    begin
        RegwriteE_M <= RegwriteE ;
        ResultSrcE_M <= ResultSrcE;
        MemwriteE_M <=MemwriteE ;
        RdE_M <= RdE;
        ALUResultE_M <=ALUResultE ;
        WriteDataE_M <= WriteDataE;
        pc_plus4E_M <= pc_plus4E;
    end

end

    assign RegwriteM = (!rst) ? 1'b0 :  RegwriteE_M ; 
    assign ResultSrcM = (!rst) ? 2'b00 : ResultSrcE_M ;
    assign MemwriteM = (!rst) ? 1'b0 : MemwriteE_M ;
    assign RdM = (!rst) ? 3'b000 : RdE_M ;
    assign ALUResultM = (!rst) ? 16'h0000 : ALUResultE_M ;
    assign WriteDataM = (!rst) ? 16'h0000 : WriteDataE_M ;
    assign pc_plus4M  = (!rst) ? 16'h0000 : pc_plus4E_M ;



    
endmodule