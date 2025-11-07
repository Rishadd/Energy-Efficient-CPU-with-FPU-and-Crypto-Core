`timescale 1ns / 1ps

module adder_fpu(
    input [15:0] i_a,
    input [15:0] i_b,
    input i_vld,
    output reg [15:0] o_res,
    output reg o_res_vld,
    output reg overflow );

wire [4:0] shift;
wire [10:0] al_man_a, al_man_b;
wire sign_a, sign_b, sign_res;
wire [4:0] exp_a, exp_b, exp_res;
wire [10:0] man_a, man_b, man_res;
wire [11:0] res;
wire operation_overflow;

// unpacking 16-bit half-precision inputs
assign sign_a = i_a[15];
assign sign_b = i_b[15];
assign exp_a = i_a[14:10];
assign exp_b = i_b[14:10];
assign man_a = (exp_a == 5'b0) ? {1'b0, i_a[9:0]} : {1'b1, i_a[9:0]}; //adding explicit 1 for normalized and 0 for denormalised numbers
assign man_b = (exp_b == 5'b0) ? {1'b0, i_b[9:0]} : {1'b1, i_b[9:0]};

wire is_nan_a = ((exp_a == 5'b11111) && (man_a[9:0] != 0)); //only 10 bits of mantissa must be checked excluding the added 1
wire is_nan_b = ((exp_b == 5'b11111) && (man_b[9:0] != 0));
wire is_inf_a = ((exp_a == 5'b11111) && (man_a[9:0] == 0));
wire is_inf_b = ((exp_b == 5'b11111) && (man_b[9:0] == 0));
wire is_zero_a = (i_a[14:0] == 0); //sign bit doesnt contribute anything
wire is_zero_b = (i_b[14:0] == 0);

// module instantiations
compareandshift_fpu u_compareandshift_fpu (
    .exp_a(exp_a),
    .exp_b(exp_b),
    .man_a(man_a),
    .man_b(man_b),
    .al_man_a(al_man_a),
    .al_man_b(al_man_b),
    .shift(shift)
);

addition_fpu u_addition_fpu (
    .sign_a(sign_a),
    .sign_b(sign_b),
    .a(al_man_a),
    .b(al_man_b),
    .res(res),
    .sign_res(sign_res)
);

normalization_fpu u_normalization_fpu (
    .res(res),
    .exp_base((exp_a > exp_b) ? exp_a : exp_b),
    .man_res(man_res),
    .exp_res(exp_res),
    .overflow(operation_overflow)
);

// main combinational logic
always @(*) begin
    if (!i_vld) begin
        o_res_vld = 1'b0;
        o_res = 16'b0;
        overflow = 1'b0;
    end 
    else if (is_nan_a || is_nan_b || (is_inf_a && is_inf_b && (sign_a != sign_b))) begin
        o_res = 16'h7E00; // Quiet NaN in half-precision
        overflow = 1'b1;
        o_res_vld = 1'b1;
    end 
    else if (is_inf_a || is_inf_b) begin
        o_res = is_inf_a ? i_a : i_b;
        overflow = 1'b1;
        o_res_vld = 1'b1;
    end 
    else if (is_zero_a && is_zero_b) begin
        o_res = 16'b0;
        overflow = 1'b0;
        o_res_vld = 1'b1;
    end 
    else begin
        o_res = {sign_res, exp_res, man_res[9:0]};
        o_res_vld = 1'b1;
        overflow = operation_overflow;
    end
end

endmodule