`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/02 15:43:07
// Design Name: 
// Module Name: LatencyMemoryVon
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LatencyMemoryVon(
    input clk,
    input rst,
    input we,
    input [31:0] addr,
    input [127:0] data_in,
    output mem_clk,
    output[127:0] data_out
    );
    
    logic [31:0] clkdiv = 0;
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst == 1) clkdiv <= 32'b0;
        else clkdiv <= clkdiv + 1;
    end
    
    assign mem_clk = clkdiv[3];
    
//    MemoryCore memory (
//        .a(addr[14:4]),
//        .d(data_in),
//        .clk(mem_clk),
//        .we(we),
//        .spo(data_out)
//    );

    Memory_core memcore(
        .addra(addr[15:4]),
        .clka(mem_clk),
        .dina(data_in),
        .douta(data_out),
        .ena(1'b1),
        .wea(we)
    );
    
endmodule
