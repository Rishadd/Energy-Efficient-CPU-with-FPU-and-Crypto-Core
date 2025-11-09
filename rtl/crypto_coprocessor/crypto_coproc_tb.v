`timescale 1ns/1ps

module crypto_coproc_tb;

    reg [15:0] data_in;
    reg rst, enc, dec;
    wire [15:0] data_out;
    wire result_ready;

    reg [15:0] test_plaintext [0:3];
    reg [15:0] test_ciphertext [0:3];
    reg [15:0] expected_encrypted [0:3];
    reg [15:0] expected_decrypted [0:3];
    
    integer i, error_count;

    crypto_coproc uut (
        .data_in(data_in),
        .rst(rst),
        .enc(enc),
        .dec(dec),
        .data_out(data_out),
        .result_ready(result_ready)
    );

    initial begin
        test_plaintext[0] = 16'h0000;
        test_plaintext[1] = 16'h1234;
        test_plaintext[2] = 16'h5678;
        test_plaintext[3] = 16'hFFFF;
        
        expected_encrypted[0] = 16'h0000;
        expected_encrypted[1] = 16'h0000;
        expected_encrypted[2] = 16'h0000;
        expected_encrypted[3] = 16'h0000;

        expected_decrypted[0] = test_plaintext[0];
        expected_decrypted[1] = test_plaintext[1];
        expected_decrypted[2] = test_plaintext[2];
        expected_decrypted[3] = test_plaintext[3];
    end

    initial begin
        error_count = 0;
        
        $display("==========================================");
        $display("Starting Crypto Coprocessor Testbench");
        $display("==========================================");
        $display("Time\t Test\t\t Input\t Output\t Expected\t Status");
        $display("==========================================");
        
        // Test 1: Reset behavior
        $display("\n--- Test 1: Reset Behavior ---");
        rst = 1'b1;
        enc = 1'b0;
        dec = 1'b0;
        data_in = 16'h1234;
        #10;
        
        // Test 2: Idle state (no enc/dec)
        $display("\n--- Test 2: Idle State ---");
        rst = 1'b0;
        enc = 1'b0;
        dec = 1'b0;
        data_in = 16'h1234;
        #10;
        
        // Test 3: Encryption tests
        $display("\n--- Test 3: Encryption Tests ---");
        rst = 1'b0;
        enc = 1'b1;
        dec = 1'b0;
        
        for (i = 0; i < 4; i = i + 1) begin
            data_in = test_plaintext[i];
            #10;
            test_ciphertext[i] = data_out; // Store ciphertext for decryption test
            $display("%0t\t Encrypt%0d\t %4h\t %4h\t %4h\t %s", 
                     $time, i, data_in, data_out, expected_encrypted[i],
                     (data_out === expected_encrypted[i]) ? "PASS" : "FAIL");
            if (data_out !== expected_encrypted[i]) error_count = error_count + 1;
        end
        
        // Test 4: Decryption tests
        $display("\n--- Test 4: Decryption Tests ---");
        rst = 1'b0;
        enc = 1'b0;
        dec = 1'b1;
        
        for (i = 0; i < 4; i = i + 1) begin
            data_in = test_ciphertext[i]; // Use encrypted data as input
            #10;
            $display("%0t\t Decrypt%0d\t %4h\t %4h\t %4h\t %s", 
                     $time, i, data_in, data_out, expected_decrypted[i],
                     (data_out === expected_decrypted[i]) ? "PASS" : "FAIL");
            if (data_out !== expected_decrypted[i]) error_count = error_count + 1;
        end
        
        // Test 5: Simultaneous enc/dec (should be handled by priority)
        $display("\n--- Test 5: Conflict Handling ---");
        rst = 1'b0;
        enc = 1'b1;
        dec = 1'b1;
        data_in = 16'h1234;
        #10;
        $display("%0t\t Enc+Dec\t %4h\t %4h\t - \t CHECK", $time, data_in, data_out);
        
        // Test 6: Reset during operation
        $display("\n--- Test 6: Reset During Operation ---");
        rst = 1'b0;
        enc = 1'b1;
        data_in = 16'h1234;
        #5;
        rst = 1'b1; // Assert reset during operation
        #5;
        
        // Test 7: Quick enc/dec switching
        $display("\n--- Test 7: Mode Switching ---");
        rst = 1'b0;
        
        // Encrypt
        enc = 1'b1; dec = 1'b0;
        data_in = 16'hABCD;
        #10;
        $display("%0t\t Quick Enc\t %4h\t %4h\t - \t DONE", $time, data_in, data_out);
        
        // Immediately decrypt
        enc = 1'b0; dec = 1'b1;
        data_in = data_out;
        #10;
        $display("%0t\t Quick Dec\t %4h\t %4h\t - \t DONE", $time, data_in, data_out);
        
        // Summary
        $display("\n==========================================");
        $display("Test Summary:");
        $display("Total Errors: %0d", error_count);
        if (error_count == 0)
            $display("*** ALL TESTS PASSED ***");
        else
            $display("*** %0d TESTS FAILED ***", error_count);
        $display("==========================================");
        
        #10 $finish;
    end
    
    // Monitor to track signal changes
    initial begin
        $monitor("Time=%0t: rst=%b, enc=%b, dec=%b, data_in=%h, data_out=%h, ready=%b",
                 $time, rst, enc, dec, data_in, data_out, result_ready);
    end
    
endmodule