`timescale 1ns / 1ps

module key_expander (input [15:0] key_in, output reg [127:0] key_out);

integer i;
reg [15:0]  seed;
reg [127:0] expanded;

always @(*) begin
    seed     = key_in;
    expanded = 128'h0;
    for (i = 0; i < 8; i = i + 1) begin
        seed = seed ^ (seed << 7);
        seed = seed ^ (seed >> 9);
        seed = seed ^ (seed << 8);
        expanded[i*16 +: 16] = seed;
    end
    key_out = expanded;
end
endmodule

module round_function (input [15:0] round_data_in, round_key_in, output [15:0] round_data_out); 

wire [7:0] L_in, R_in;
wire [7:0] L_out, R_out;
wire [7:0] F_result;

assign L_in = round_data_in[15:8];
assign R_in = round_data_in[7:0];
assign F_result = (R_in ^ round_key_in[7:0]) + round_key_in[15:8];
assign L_out = R_in;
assign R_out = L_in ^ F_result;
assign round_data_out = {L_out, R_out};
    
endmodule

module crypto_coproc (input [15:0] data_in, input rst, enc, dec, output [15:0] data_out,output result_ready);

parameter KEY = 16'hABCD;
    
wire [127:0] expanded_key;
wire [15:0] round_data [0:8];
wire [15:0] round_keys [0:7];
wire [15:0] encrypt_key, decrypt_key;
    
key_expander u_key_expander (.key_in(KEY), .expanded_key(expanded_key));

genvar i;
generate
     for (i = 0; i < 8; i = i + 1) begin : round_key_gen
        assign encrypt_key = expanded_key[(i*16)+15 : (i*16)];
        assign decrypt_key = expanded_key[((7-i)*16)+15 : ((7-i)*16)];
        assign round_keys[i] = (enc) ? encrypt_key : (dec) ? decrypt_key : 16'b0;
     end
endgenerate

assign round_data[0] = data_in;

generate
    for (i = 0; i < 8; i = i + 1) begin : round_instances
        round_function u_round_function (
            .round_data_in(round_data[i]),
            .round_key_in(round_keys[i]),
            .round_data_out(round_data[i+1])
        );
    end
endgenerate

assign data_out = (enc | dec) ? round_data[8] : 16'b0;
assign result_ready = enc | dec;
    
endmodule
