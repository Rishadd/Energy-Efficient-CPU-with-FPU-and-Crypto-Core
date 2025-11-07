module P_C(PCNext,PC,rst,clk,StallF);

input [15:0] PCNext;
input clk,rst,StallF;
output  reg [15:0] PC;
always @(posedge clk)       
begin                    
    if(!rst)   
    PC<=16'h0000;
    else if(!StallF)
    PC<=PCNext;
end

endmodule