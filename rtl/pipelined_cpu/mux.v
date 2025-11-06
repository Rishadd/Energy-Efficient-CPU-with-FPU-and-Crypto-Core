
module  mux(a,b,c,sel);
input [15:0] a,b;
input sel;
output [15:0] c;
    
    assign c = sel ? b : a ;
 
endmodule

