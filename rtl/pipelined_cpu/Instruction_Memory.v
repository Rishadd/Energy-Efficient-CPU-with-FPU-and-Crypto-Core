
module  instr_Mem(A,rst,Instr);
input [15:0] A;
input rst;
output  [15:0] Instr;
 
reg [15:0]  instr_ram [0:511];    //  Creating memory to store instructions

initial
begin

$readmemh("rv16i_test.txt", instr_ram);
end

assign Instr = instr_ram[A];

endmodule