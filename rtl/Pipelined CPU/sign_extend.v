module Sign_Extend(in,imm_ext);

input [3:0] in;
output [15:0] imm_ext;
 
assign imm_ext= {{13{in[2]}},in};              

endmodule