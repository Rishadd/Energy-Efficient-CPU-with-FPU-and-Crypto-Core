



module Decode_cycle(clk,rst,funct3E,PCD,a2srcD,pc_plus4D,InstrD,RegwriteW,ResultW,RdD,RdW,
    RegwriteE,MemwriteE,ResultSrcE,JumpE,branchE,ALUControlE,ALUSrcE,RD1E,RD2E,StallD,FlushE,
    immExtE,PCE,RdE,pc_plus4E,Rs1E,Rs2E,ALUControlD,ALUControlD_E,
    RD1D ,RD2D,immExtD,rega2,Rs1D,Rs2D);

input clk,rst,RegwriteW,StallD,FlushE;
input [15:0] PCD,InstrD,pc_plus4D,ResultW;
input [2:0] RdW;
output RegwriteE,MemwriteE,JumpE,branchE,ALUSrcE,a2srcD;   
output [1:0] ResultSrcE ;
output [2:0]funct3E;
output [15:0] RD1E,RD2E,PCE,immExtE,pc_plus4E;
output [2:0] RdD,RdE,Rs1E,Rs2E,Rs1D,Rs2D;
output [3:0] ALUControlE;

assign RdD = InstrD[11:9] ;


wire RegwriteD,MemwriteD,JumpD,branchD,ALUSrcD,Zero;
wire [1:0] ImmSrcD,ResultSrcD,be;
output [2:0] rega2;
output [3:0] ALUControlD;
output [15:0] RD1D ,RD2D,immExtD;


reg RegwriteD_E,MemwriteD_E,JumpD_E,branchD_E,ALUSrcD_E;
reg [1:0] ResultSrcD_E;
output reg[3:0] ALUControlD_E;
reg [15:0] RD1D_E,RD2D_E,PCD_E,immExtD_E,pc_plus4D_E;
reg [2:0] RdD_E,Rs1D_E,Rs2D_E,funct3D_E;

                


control_unit_top control_unit_top0
(
    .op(InstrD[14:12]),
    .regwrite(RegwriteD),
    .memwrite(MemwriteD),
    .resmux(ResultSrcD),
    .ALUSrc(ALUSrcD),
    .a2src(a2srcD),
    .branch(branchD),
    .jump(JumpD),
    .be(be),
    .funct3(InstrD[2:0]),
    .ALUCtrl(ALUControlD)
);

    assign rega2 = a2srcD ? InstrD[5:3] : InstrD[11:9];

    assign Rs1D = InstrD[8:6];
    assign Rs2D = rega2;

  register_file Register_file
    (

        .clk(clk),
        .be(be),
        .rd_addr1(InstrD[8:6]),
        .rd_addr2(rega2),
        .wr_addr(RdW),
        .wr_en(RegwriteW),
        .wr_data(ResultW),
        .rd_data1(RD1D),
        .rd_data2(RD2D)

    );


Sign_Extend Sign_Extend
    (
        .in({InstrD[15],InstrD[5:3]}),
        .imm_ext(immExtD)
    );



    always @(posedge clk , negedge rst)
    begin
        if(!rst)
        begin
            RegwriteD_E<=1'b0;
            ALUControlD_E<=3'b000;
            MemwriteD_E<=1'b0;
            ResultSrcD_E<=2'b00;
            JumpD_E<=1'b0;
            branchD_E<=1'b0;
            ALUSrcD_E<=1'b0;
            RD1D_E<=16'h0000;
            RD2D_E<=16'h0000;
            PCD_E<=16'h0000;
            immExtD_E<=16'h0000;
            pc_plus4D_E<=16'h0000;
            RdD_E<=3'b000;
            Rs1D_E<=3'b000;
            Rs2D_E<=3'b000;
            funct3D_E<=3'b000;
        end
        else if(FlushE)
        begin
            RegwriteD_E<=1'b0;
            ALUControlD_E<=3'b000;
            MemwriteD_E<=1'b0;
            ResultSrcD_E<=2'b00;
            JumpD_E<=1'b0;
            branchD_E<=1'b0;
            ALUSrcD_E<=1'b0;
            RD1D_E<=16'h0000;
            RD2D_E<=16'h0000;
            PCD_E<=16'h0000;
            immExtD_E<=16'h0000;
            pc_plus4D_E<=16'h0000;
            RdD_E<=3'b000;
            Rs1D_E<=3'b000;
            Rs2D_E<=3'b000;
            funct3D_E<=3'b000;
        end        
        else if(!StallD)
        begin
            RegwriteD_E<=RegwriteD;
            ALUControlD_E<=ALUControlD;
            MemwriteD_E<=MemwriteD;
            ResultSrcD_E<=ResultSrcD;
            JumpD_E<=JumpD;
            branchD_E<=branchD;
            ALUSrcD_E<=ALUSrcD;
            RD1D_E<=RD1D;
            RD2D_E<=RD2D;
            PCD_E<=PCD;
            immExtD_E<=immExtD;
            pc_plus4D_E<=pc_plus4D;
            RdD_E<=RdD;
            Rs1D_E<=Rs1D;
            Rs2D_E<=rega2;
            funct3D_E<=InstrD[2:0]; 

        end
    end

assign RegwriteE = (!rst) ? 1'b0 : RegwriteD_E ;
assign MemwriteE = (!rst) ? 1'b0 : MemwriteD_E ;
assign ALUControlE =(!rst) ? 3'b000 : ALUControlD_E ;
assign ResultSrcE = (!rst) ? 2'b00 :ResultSrcD_E ;
assign JumpE = (!rst) ? 1'b0 :JumpD_E ;
assign branchE =(!rst) ? 1'b0 : branchD_E ;
assign ALUSrcE = (!rst) ? 1'b0 : ALUSrcD_E ;
assign RD1E = (!rst) ? 16'h0000 :RD1D_E ;
assign RD2E = (!rst) ? 16'h0000 :RD2D_E ;
assign PCE = (!rst) ? 16'h0000 :PCD_E ;
assign immExtE = (!rst) ? 16'h0000 :immExtD_E ;
assign pc_plus4E = (!rst) ? 16'h0000 :pc_plus4D_E ;
assign RdE = (!rst) ? 3'b000 :RdD_E ;
assign Rs1E = (!rst) ? 3'b000 : Rs1D_E ;    
assign Rs2E = (!rst) ? 3'b000 : Rs2D_E ; 
assign funct3E = (!rst) ? 3'b000 : funct3D_E ;


endmodule