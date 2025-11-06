

module alu #(parameter WIDTH = 16) (
    input       [WIDTH-1:0] a, b,       // operands
    input       [3:0] alu_ctrl,         // ALU control
    output reg  [WIDTH-1:0] alu_out,    // ALU output
    output      zero                    // zero flag
    // output overflow                  // overflow flag
);

wire [15:0] fpu_out;
wire fpu_overflow; //wire to be connected somewhere

// FPU is always enabled
wire fpu_en = (alu_ctrl == 4'b1110 || alu_ctrl == 4'b1111) ? 1'b1 : 1'b0;

fpu u_fpu (
    .i_vld(fpu_en),
    .i_a(a),
    .i_b(b),
    .opcode(alu_ctrl),
    .o_res(fpu_out),
    .overflow(fpu_overflow)
);


always @(a, b, alu_ctrl) begin
    case (alu_ctrl)
        4'b0000: alu_out = a + b; // ADD
        4'b0001: alu_out = a - b; // SUB
        4'b0010: alu_out = a & b; // AND
        4'b0011: alu_out = a | b; // OR
        4'b0100: alu_out = a ^ b; // XOR
        4'b0101: begin
            alu_out = ($signed(a) < $signed(b)) ? 16'd1 : 16'd0; // SLT (signed)
				end
        4'b0110: begin
            alu_out = (a < b) ? 16'd1 : 16'd0; // SLTU (unsigned)
				 end
        4'b0111: alu_out = a << b[3:0];   // SLL
        4'b1000: alu_out = a >> b[3:0];   // SRL
        4'b1001: alu_out = $signed(a) >>> b[3:0]; // SRA
        4'b1110: alu_out = fpu_out; // FPU addition
        4'b1111: alu_out = fpu_out; // FPU multiplication
                
        default: alu_out = 0;
    endcase
end

assign zero = (alu_out == 0) ? 1'b1 : 1'b0;
assign overflow = fpu_overflow;

endmodule
