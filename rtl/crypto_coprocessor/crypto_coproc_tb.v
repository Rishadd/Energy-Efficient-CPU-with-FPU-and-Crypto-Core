`timescale 1ns/1ps

module crypto_coproc_tb;

    reg  [15:0] data_in;
    reg  rst, enc, dec;
    wire [15:0] data_out;
    wire result_ready;

    integer infile, outfile, encfile, decfile, csvfile;
    integer status;
    reg [15:0] input_values [0:1023];  // Array to store input values
    reg [15:0] encrypted_values [0:1023];  // Array to store encrypted values
    reg [15:0] decrypted_values [0:1023];  // Array to store decrypted values
    integer count;
    integer i;

    crypto_coproc uut (
        .data_in(data_in),
        .enc(enc),
        .dec(dec),
        .data_out(data_out)
    );

    initial begin
        // Open files for encryption
        infile  = $fopen("input_data.txt", "r");
        outfile = $fopen("encrypted.txt", "w");

        if (infile == 0 || outfile == 0) begin
            $finish;
        end

        // Reset
        enc = 1'b0;
        dec = 1'b0;
        data_in = 16'h0000;
        #10;
        rst = 1'b0;

        // Enable encryption
        enc = 1'b1;
        dec = 1'b0;

        count = 0;

        // Read until EOF and encrypt
        while (!$feof(infile)) begin
            status = $fscanf(infile, "%h\n", data_in);
            if (status == 1) begin
                input_values[count] = data_in;  // Store input
                #10; // allow encryption
                encrypted_values[count] = data_out;  // Store encrypted
                $fwrite(outfile, "%04h\n", data_out);
                count = count + 1;
            end
        end

        // Close encryption files
        $fclose(infile);
        $fclose(outfile);

        #10;

        // Open files for decryption
        encfile = $fopen("encrypted.txt", "r");
        decfile = $fopen("decrypted.txt", "w");

        if (encfile == 0 || decfile == 0) begin
            $finish;
        end

        // Enable decryption
        enc = 1'b0;
        dec = 1'b1;

        i = 0;

        // Read encrypted data and decrypt
        while (!$feof(encfile)) begin
            status = $fscanf(encfile, "%h\n", data_in);
            if (status == 1) begin
                #10; // allow decryption
                decrypted_values[i] = data_out;  // Store decrypted
                $fwrite(decfile, "%04h\n", data_out);
                i = i + 1;
            end
        end

        // Close decryption files
        $fclose(encfile);
        $fclose(decfile);

        #10;

        // Create CSV file
        csvfile = $fopen("crypto_results.csv", "w");
        
        // Write header
        $fwrite(csvfile, "INPUT,ENCRYPTED,DECRYPTED\n");
        
        // Write data rows
        for (i = 0; i < count; i = i + 1) begin
            $fwrite(csvfile, "%04h,%04h,%04h\n", 
                    input_values[i], 
                    encrypted_values[i], 
                    decrypted_values[i]);
        end
        
        $fclose(csvfile);
        
        $display("CSV file created successfully with %0d entries!", count);

        #10 $finish;
    end

endmodule
