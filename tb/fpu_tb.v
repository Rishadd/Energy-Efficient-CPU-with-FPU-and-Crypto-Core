`timescale 1ns / 1ps

module tb_fpu();
    reg i_vld;
    reg [15:0] i_a, i_b;
    reg [3:0] opcode;
    wire [15:0] o_res;
    wire overflow;
    
    // Instantiate the FPU
    fpu u_fpu (
        .i_vld(i_vld),
        .i_a(i_a),
        .i_b(i_b),
        .opcode(opcode),
        .o_res(o_res),
        .overflow(overflow)
    );
    
    initial begin
        $display("==========================================");
        $display("FPU Test Results");
        $display("==========================================");
        $display("Op | Input A | Input B | Output  | Overflow");
        $display("---|---------|---------|---------|---------");
        
        // Initialize
        i_vld = 0;
        i_a = 0;
        i_b = 0;
        opcode = 4'b1110;
        #10;
        
        // Test addition operations (opcode = 0)
        i_vld = 1;
        opcode = 4'b1110;
        
        // Test 1: 1.0 + 2.0 = 3.0
        i_a = 16'h3C00; // 1.0
        i_b = 16'h4000; // 2.0
        #10;
        $display("0  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 2: 5.0 + 3.0 = 8.0
        i_a = 16'h4500; // 5.0
        i_b = 16'h4200; // 3.0
        #10;
        $display("0  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 3: -1.5 + 2.5 = 1.0
        i_a = 16'hBE00; // -1.5
        i_b = 16'h4100; // 2.5
        #10;
        $display("0  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 4: Infinity + 5.0 = Infinity
        i_a = 16'h7C00; // +Inf
        i_b = 16'h4500; // 5.0
        #10;
        $display("0  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 5: 0.0 + 0.0 = 0.0
        i_a = 16'h0000; // 0.0
        i_b = 16'h0000; // 0.0
        #10;
        $display("0  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test multiplication operations (opcode = 1)
        opcode = 4'b1111;
        
        // Test 6: 2.0 * 3.0 = 6.0
        i_a = 16'h4000; // 2.0
        i_b = 16'h4200; // 3.0
        #10;
        $display("1  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 7: 1.5 * 4.0 = 6.0
        i_a = 16'h3E00; // 1.5
        i_b = 16'h4400; // 4.0
        #10;
        $display("1  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 8: -2.0 * 3.0 = -6.0
        i_a = 16'hC000; // -2.0
        i_b = 16'h4200; // 3.0
        #10;
        $display("1  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        // Test 9: Infinity * 2.0 = Infinity
        i_a = 16'h7C00; // +Inf
        i_b = 16'h4000; // 2.0
        #10;
        $display("1  | %4h     | %4h     | %4h    | %1b", i_a, i_b, o_res, overflow);
        
        $display("==========================================");
        $finish;
    end
    
endmodule