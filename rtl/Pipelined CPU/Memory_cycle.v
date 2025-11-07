


module  Memory_cycle(clk,rst,RegwriteM,ResultSrcM,MemwriteM,RdM,ALUResultM,WriteDataM,pc_plus4M,RegwriteW,ResultSrcW,ALUResultW,RdW,ReadDataW,pc_plus4W);

    input   RegwriteM,MemwriteM,clk,rst;
    input   [1:0] ResultSrcM ;
    input   [2:0] RdM ;
    input   [15:0] ALUResultM,WriteDataM,pc_plus4M ;
    output  RegwriteW;
    output  [1:0] ResultSrcW ;
    output  [2:0] RdW ;
    output  [15:0] ALUResultW,ReadDataW,pc_plus4W ;

   
    wire [15:0] ReadDataM ;

    reg RegwriteM_W;
    reg [1:0] ResultSrcM_W ;
    reg [2:0] RdM_W ;
    reg [15:0] ALUResultM_W,ReadDataM_W,pc_plus4M_W ;

    
    

    data_mem Data_Memory
    (

        .wr_addr(ALUResultM),
        .wr_data(WriteDataM),
        .clk(clk),
        .wr_en(MemwriteM),
        .rd_data_mem(ReadDataM)

    );



always @(negedge rst) begin
    if(!rst) begin
        RegwriteM_W <= 1'b0;
        ResultSrcM_W <= 2'b00;
        RdM_W <= 3'b000;
        ALUResultM_W <= 16'h0000; 
        pc_plus4M_W <= 16'h0000;
        ReadDataM_W <= 16'h0000;

        
    end
end

// Normal operation
always @(posedge clk) begin
    if(rst) begin
        RegwriteM_W <= RegwriteM;
        ResultSrcM_W <= ResultSrcM;
        RdM_W <= RdM;
        ALUResultM_W <= ALUResultM; 
        pc_plus4M_W <= pc_plus4M;
        ReadDataM_W <= ReadDataM;
    end
end

    assign RegwriteW = RegwriteM_W ; 
    assign ResultSrcW =  ResultSrcM_W ;
    assign RdW =   RdM_W ;
    assign ALUResultW =  ALUResultM_W ;
    assign pc_plus4W  =  pc_plus4M_W;
    assign ReadDataW  =  ReadDataM_W ;


endmodule