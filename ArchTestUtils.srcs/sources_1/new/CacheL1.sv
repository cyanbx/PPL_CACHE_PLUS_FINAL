`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/08 14:44:52
// Design Name: 
// Module Name: CacheL1
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

module CacheL1(
    input clk,
    input rst,

    input [31:0] cache_req_addr,
    input [31:0] cache_req_data,
    input cache_req_wen,
    input cache_req_valid,
    
    output [31:0] cache_resp_data,
    output cache_resp_stall,

    output [31:0] mem_req_addr,
    output [31:0] mem_req_data,
    output mem_req_wen,
    output mem_req_valid,

    input [31:0] mem_resp_data,
    input mem_resp_valid,

    output [2:0] state_out,

    output hit_out,
    
    input debug,
    input [6:0] debug_pos,
    output [31:0] info,
    output [31:0] content
    
);

    wire [6:0] cache_req_index;
    wire [22:0] cache_req_tag;

    assign cache_req_index[6:0] = cache_req_addr[8:2];
    assign cache_req_tag[22:0] = cache_req_addr[31:9];

    logic [127:0][22:0] tag;
    logic [127:0] valid;
    logic [127:0] dirty;

    wire hit;
    wire write_cache;
    assign hit = (cache_req_tag == tag[cache_req_index] && valid[cache_req_index] == 1'b1) ? 1 : 0;

    assign hit_out = hit;

    wire cache_input_source;
    wire write_cache_from_mem;
    wire cache_we_direct;

    wire [31:0] cache_data_input_direct;

    MUX2T1_32 mux_cache_write_data (
        .i1(cache_req_data),
        .i2(mem_resp_data),
        .s(cache_input_source),
        .o(cache_data_input_direct)
    );

    MUX2T1 mux_cache_write_enable (
        .i0(write_cache),
        .i1(write_cache_from_mem),
        .s(cache_input_source),
        .o(cache_we_direct)
    );

    CacheL1Storage cachel1storage(
        .addra(cache_req_index),
        .clka(clk),
        .dina(cache_data_input_direct),
        .douta(cache_resp_data),
        .wea(cache_we_direct),
        .ena(1'b1)
    );

    // controller
    int state;
    /*
        IDLE: 0
        BACK: 1
        BACK_WAIT: 2
        FILL: 3
        FILL_WAIT: 4
        IDEL_WAIT: 5
    */

    int i;
    
    int stall_num;

    reg [31:0] addr_buf;
    
    assign write_cache = (cache_req_valid && cache_req_wen && hit && (state == 0)) ? 1 : 0;

    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            state <= 3'd0;
            valid <= 128'b0;
            for (i = 0; i < 128; i++) tag[i] <= 23'b0; 
            dirty <= 128'b0;
            stall_num <= 0;
            addr_buf <= 0;
        end
        else if (cache_req_valid == 1) begin
            case (state)
                3'd0: begin
                    if (!hit && dirty[cache_req_index] == 1) begin
                        state <= 3'd1;
                    end 
                    else if (!hit && dirty[cache_req_index] == 0) begin
                        state <= 3'd3;
                    end 
                    else begin
                        state <= 3'd0;
                        if (cache_req_wen == 1) begin
                            // tag[cache_req_index] <= cache_req_tag;
                            // valid[cache_req_index] <= 1'b1;
                            dirty[cache_req_index] <= 1'b1;
                            if (stall_num == 0) begin
                                stall_num <= 1;
                            end
                            else if (stall_num > 0) stall_num--;
                        end
                        else if (cache_req_valid) begin
                            if (stall_num == 0 && cache_req_addr != addr_buf) begin
                                stall_num <= 2;
                                addr_buf <= cache_req_addr;
                            end 
                            else if (stall_num > 0) stall_num--;
                        end 
                    end 
                end
                3'd1: begin
                    if (mem_resp_valid) begin
                        state <= 3'd2;
                        dirty[cache_req_index] <= 1'b0;
                    end 
                    else state <= 3'd1;
                end
                3'd2: begin
                    state <= 3'd3;       
                end 
                3'd3: begin
                    if (mem_resp_valid) begin
                        state <= 3'd4;
                        valid[cache_req_index] <= 1'b1;
                        dirty[cache_req_index] <= 1'b0;
                        tag[cache_req_index] <= cache_req_tag;
                    end 
                    else state <= 3'd3;
                end
                3'd4: begin
                    state <= 3'd0;
                    if (cache_req_wen == 1) begin
                        // tag[cache_req_index] <= cache_req_tag;
                        // valid[cache_req_index] <= 1'b1;
                        dirty[cache_req_index] <= 1'b1;
                        if (stall_num == 0) begin
                            stall_num <= 1;
                        end
                        else if (stall_num > 0) stall_num--;
                    end
                    else if (cache_req_valid) begin
                        if (stall_num == 0 && cache_req_addr != addr_buf) begin
                            stall_num <= 2;
                            addr_buf <= cache_req_addr;
                        end 
                        else if (stall_num > 0) stall_num--;
                    end 
                end 
            endcase
        end
    end

    assign cache_resp_stall = (state == 0 && stall_num == 0) ? 0 : 1;
    assign cache_input_source = (state == 3 || state == 4) ? 1 : 0;
    assign write_cache_from_mem = state == 4 ? 1 : 0;

    assign mem_req_valid = (state == 1 || state == 3) ? 1 : 0;
    assign mem_req_wen = (state == 1) ? 1 : 0;
    assign mem_req_data[31:0] = cache_resp_data[31:0];
    assign mem_req_addr[31:0] = (state == 1) ? {{tag[cache_req_index]}, {cache_req_index}, 2'b0} : cache_req_addr[31:0];

    assign state_out[2:0] = state[2:0];

endmodule
