`timescale 1ns / 1ps

module data_mem #(parameter DATA_WIDTH = 16, ADDR_WIDTH = 16, MEM_SIZE = 256) (
    input clk,
    input wr_en,
    input [1:0] be,                     // 2 byte enables
    input [ADDR_WIDTH-1:0] wr_addr,
    input [DATA_WIDTH-1:0] wr_data,
    output [DATA_WIDTH-1:0] rd_data_mem
);

    // Array of 256 16-bit words
    reg [DATA_WIDTH-1:0] data_ram [0:MEM_SIZE-1];
    
    // Word address (divide by 2)
    wire [ADDR_WIDTH-2:0] word_addr = wr_addr[ADDR_WIDTH-1:0];
    
    reg [DATA_WIDTH-1:0] current_word;
    
    integer i;
initial begin
    for (i = 0; i < MEM_SIZE; i = i + 1)
        data_ram[i] = 16'b0;   // ensure defined values

end
    // Combinational read logic
    assign rd_data_mem = data_ram[word_addr];

    // Synchronous write logic
    always @(posedge clk) begin
        if (wr_en) begin
            current_word = data_ram[word_addr];
            
            // Handle byte-level writes if needed (LB/SB)
            if (be[0]) current_word[7:0]  = wr_data[7:0];
            if (be[1]) current_word[15:8] = wr_data[15:8];

            data_ram[word_addr] <= current_word;
        end
    end
endmodule