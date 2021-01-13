`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/12 11:27:58
// Design Name: 
// Module Name: CacheTest
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


module CacheTest
    #(parameter T = 20)
    ();
    
    // input 
    reg clk;
    reg rst;
    reg [31:0] cache_req_addr;
    reg [31:0] cache_req_data;
    reg cache_req_wen;
    reg cache_req_valid;
    
    // output
    wire [31:0] cache_resp_data;
    wire [31:0] mem_req_addr;
    wire [31:0] mem_req_data;
    wire [31:0] mem_resp_data;
    wire cache_resp_stall;
    wire mem_req_wen;
    wire mem_req_valid;
    wire [2:0] state;
    wire mem_resp_valid;
    wire hit;
    
    CacheL1 cachel1(
        .clk(clk),
        .rst(rst),
        .cache_req_addr(cache_req_addr),
        .cache_req_data(cache_req_data),
        .cache_req_wen(cache_req_wen),
        .cache_req_valid(cache_req_valid),
        .cache_resp_data(cache_resp_data),
        .cache_resp_stall(cache_resp_stall),
        .mem_req_addr(mem_req_addr),
        .mem_req_data(mem_req_data),
        .mem_req_wen(mem_req_wen),
        .mem_req_valid(mem_req_valid),
        .mem_resp_data(mem_resp_data),
        .mem_resp_valid(mem_resp_valid),
        .state_out(state),
        .hit_out(hit)
    );

    wire [31:0] wait_for_read;
    
    LatencyMemory latency_memory_inst(
        .clk(clk),
        .rst(rst),
        .en(mem_req_valid),
        .we(mem_req_wen),
        .addr(mem_req_addr),
        .data_in(mem_req_data),
        .data_out(mem_resp_data),
        .mem_resp_valid(mem_resp_valid),
        .wait_for_read_out(wait_for_read)
    );
    
    integer i;
    
    `define cache_input {cache_req_valid, cache_req_wen, cache_req_addr, cache_req_data}
    
    initial 
    begin
        rst = 1;
        clk = 0;
        cache_req_addr = 0;
        cache_req_data = 0;
        cache_req_wen = 0;
        cache_req_valid = 0;
        #100;
        
        rst = 0;
        fork
            forever begin
                #(T/2) clk = ~clk;
            end
            begin
                `cache_input = {1'b1, 1'b1, 32'h8, 32'h8818};
                #(100 * T) `cache_input = {1'b1, 1'b1, 32'h208, 32'h2074};
                #(100 * T) `cache_input = {1'b1, 1'b0, 32'h8, 32'h0};
                #(100 * T) `cache_input = {1'b1, 1'b0, 32'h208, 32'h0};
            end
        join

    end
endmodule
