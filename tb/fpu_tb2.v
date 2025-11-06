`timescale 1ns / 1ps

module fpu_tb2();
    reg [15:0] a, b;
    reg [3:0] alu_ctrl;
    wire [15:0] alu_out;
    wire zero, overflow;
    
    // Instantiate the ALU
    alu u_alu (
        .a(a),
        .b(b),
        .alu_ctrl(alu_ctrl),
        .alu_out(alu_out),
        .zero(zero),
        .overflow(overflow)
    );
    
    initial begin
        $display("===============================");
        $display("ALU FPU Test Results");
        $display("===============================");
        $display("Op | Input A | Input B | Output  | Overflow");
        $display("---|---------|---------|---------|---------");
        
        // Test FPU addition (opcode 1110)
        alu_ctrl = 4'b1110;
        
        // Test 1: 1.0 + 2.0 = 3.0
        a = 16'h3C00; // 1.0
        b = 16'h4000; // 2.0
        #10;
        $display("E  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        // Test 2: 5.0 + 3.0 = 8.0
        a = 16'h4500; // 5.0
        b = 16'h4200; // 3.0
        #10;
        $display("E  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        // Test 3: -1.5 + 2.5 = 1.0
        a = 16'hBE00; // -1.5
        b = 16'h4100; // 2.5
        #10;
        $display("E  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        // Test FPU multiplication (opcode 1111)
        alu_ctrl = 4'b1111;
        
        // Test 4: 2.0 * 3.0 = 6.0
        a = 16'h4000; // 2.0
        b = 16'h4200; // 3.0
        #10;
        $display("F  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        // Test 5: 1.5 * 4.0 = 6.0
        a = 16'h3E00; // 1.5
        b = 16'h4400; // 4.0
        #10;
        $display("F  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        // Test 6: -2.0 * 3.0 = -6.0
        a = 16'hC000; // -2.0
        b = 16'h4200; // 3.0
        #10;
        $display("F  | %4h     | %4h     | %4h    | %1b", a, b, alu_out, overflow);
        
        $finish;
    end
    
endmodule
