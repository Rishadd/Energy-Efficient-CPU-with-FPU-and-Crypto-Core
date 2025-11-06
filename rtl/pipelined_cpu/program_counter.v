module P_C(PCNext, PC,rst,clk);

input [15:0] PCNext;
input clk,rst;
output  reg [15:0] PC;
always @(posedge clk)       
begin                    
    if(!rst)   
    PC<=16'h0000;
    else
    PC<=PCNext;
end

endmodule