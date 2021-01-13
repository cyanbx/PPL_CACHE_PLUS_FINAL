`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/01 20:55:19
// Design Name: 
// Module Name: Cache
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


module Cache 
# (parameter STORAGE_SIZE_LOG = 6,
   parameter WAY_NUM_LOG = 2,
   parameter BLOCK_SIZE_LOG = 7,
   parameter BLOCK_SIZE = 128)
(
    input clk,
    input rst,

    input [31:0] cache_req_addr,
    input [31:0] cache_req_data,
    input cache_req_wen,
    input cache_req_valid,

    output logic [31:0] cache_resp_data,
    output logic cache_resp_stall,

    output [31:0] mem_req_addr,
    output [BLOCK_SIZE - 1:0] mem_req_data,
    output mem_req_wen,
    output mem_req_valid,

    input [BLOCK_SIZE - 1:0] mem_resp_data,
    input mem_clk,
    
    input [3:0] debug_set,
    input [1:0] debug_way,
    input [1:0] debug_word,
    output [31:0] debug_data,
    output [31:0] debug_info
    
);

    localparam SET_NUM_LOG = STORAGE_SIZE_LOG - WAY_NUM_LOG;
    localparam STORAGE_SIZE = 1 << STORAGE_SIZE_LOG;
    localparam WAY_NUM = 1 << WAY_NUM_LOG;
    localparam SET_NUM = 1 << SET_NUM_LOG;

    logic [SET_NUM - 1:0][WAY_NUM - 1:0][BLOCK_SIZE - 1:0] data;
    logic [SET_NUM - 1:0][WAY_NUM - 1:0][31:0] addr;
    logic [SET_NUM - 1:0][WAY_NUM - 1:0] valid;
    logic [SET_NUM - 1:0][WAY_NUM - 1:0] dirty;

    localparam IDLE = 32'd0, BACK = 32'd1,
               BACK_WAIT = 32'd2, FILL = 32'd3,
               FILL_WAIT = 32'd4;

    int state;

    wire [SET_NUM_LOG - 1:0] cache_req_index;
    assign cache_req_index = cache_req_addr[SET_NUM_LOG + BLOCK_SIZE_LOG - 4:BLOCK_SIZE_LOG - 3];

    logic hit;
    logic [WAY_NUM_LOG - 1:0] inset_position;
    logic [WAY_NUM_LOG - 1:0] rand_position;
    logic [WAY_NUM_LOG - 1:0] allocate_position;
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst == 1) rand_position <= 0;
        else rand_position <= rand_position + 1;
    end

    always_comb begin
        if (rst == 1) begin
            hit = 1'b0;
            inset_position = 0;
        end
        else begin
            for (int i = 0; i < WAY_NUM; i++) begin
                if (valid[cache_req_index][i] == 1 && addr[cache_req_index][i][34 - BLOCK_SIZE_LOG:0] == cache_req_addr[31:BLOCK_SIZE_LOG - 3]) begin
                    inset_position = i;
                    hit = 1'b1;
                    break;
                end
                else hit = 0;
            end
        end
    end

    logic [2:0] sample_mem_clk;
    always_ff @ (negedge clk or posedge rst) begin
        if (rst == 1) begin
            sample_mem_clk <= 3'b0;
        end
        else begin
            sample_mem_clk <= {sample_mem_clk[1:0], mem_clk};
        end
    end
    
    logic posedge_mem_clk;
    assign posedge_mem_clk = ~sample_mem_clk[1] & sample_mem_clk[0];

    wire [BLOCK_SIZE_LOG - 6 : 0] word_in_data_pos;
    assign word_in_data_pos[BLOCK_SIZE_LOG - 6 : 0] = cache_req_addr[BLOCK_SIZE_LOG - 4:2];

    // assign cache_resp_data[31:0] = data[cache_req_index][inset_position][word_in_data_pos * 32 +: 32];
    logic [SET_NUM_LOG - 1:0] cache_req_index_reg;
    always_ff @ (posedge clk) begin
        // adjust the timing
        // this problem might have been found by myself before
        // but i still don't understand why using registers doesn't work
        if (cache_req_valid == 1) begin
            cache_resp_data <= data[cache_req_index][inset_position][word_in_data_pos * 32 +: 32];
        end
    end

    int flag;

    assign cache_resp_stall = (state == IDLE && flag == 0) ? 0 : 1;
    
    int mem_wait;
    int bram_delay;

    always_ff @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            state <= 32'd0;
            allocate_position <= 0;
            dirty <= 0;
            valid <= 0;
            data <= 0;
            addr <= 0;
            flag <= 0;
            mem_wait <= 0;
            bram_delay <= 0;
        end
        else if (cache_req_valid == 1) begin
            case (state)
                IDLE: begin
                    if (hit) begin
                        if (!flag) flag <= 1;
                        else flag <= flag - 1;
                        if (cache_req_wen == 1) begin
                            dirty[cache_req_index][inset_position] <= 1'b1;
                            data[cache_req_index][inset_position][word_in_data_pos * 32 +: 32] <= cache_req_data[31:0];
                        end
                    end
                    
                    else if (!hit) begin
                        if (dirty[cache_req_index][rand_position] == 0) begin   // WRITE
                            state <= FILL;
                        end
                        else begin   // WR_WB
                            state <= BACK;
                        end
                        allocate_position <= rand_position;
                    end
                end

                BACK: begin
                    if (posedge_mem_clk) begin
                        mem_wait <= 1;
                    end
                    else if (mem_wait == 1) begin
                        state <= BACK_WAIT;
                        dirty[cache_req_index][allocate_position] <= 0;
                    end
                     
                    else state <= BACK;
                end

                BACK_WAIT: begin
                    state <= FILL;
                end

                FILL: begin
                    if (posedge_mem_clk) begin
                        if (bram_delay == 0) bram_delay <= 1;
                        else if (bram_delay == 1) begin
                            bram_delay <= 0;
                            mem_wait <= 1;
                        end
                    end
                    else if (mem_wait == 1) begin
                        state <= FILL_WAIT;
                        valid[cache_req_index][allocate_position] <= 1'b1;
                        dirty[cache_req_index][allocate_position] <= 1'b0;
                        data[cache_req_index][allocate_position] <= mem_resp_data;
                        addr[cache_req_index][allocate_position] <= (cache_req_addr >> (BLOCK_SIZE_LOG - 3));
                        mem_wait <= 0;
                    end
                    else state <= FILL;
                end

                FILL_WAIT: begin
                    state <= IDLE;
                    flag <= 2;
//                    if (hit) begin
//                        if (!flag) flag <= 1;
//                        else flag <= 0;
//                        if (cache_req_wen == 1) begin
//                            dirty[cache_req_index][inset_position] <= 1'b1;
//                            data[cache_req_index][inset_position][word_in_data_pos * 32 +: 32] <= cache_req_data[31:0];
//                        end
//                    end
//                    if (hit && cache_req_wen == 1) begin
//                        dirty[cache_req_index][inset_position] <= 1'b1;
//                        data[cache_req_index][inset_position][word_in_data_pos * 32 +: 32] <= cache_req_data[31:0];
//                    end
                end
            endcase
        end
    end
    
    assign mem_req_valid = (state == BACK || state == FILL) ? 1 : 0;
    assign mem_req_wen = (state == BACK) ? 1 : 0; 
    assign mem_req_addr = cache_req_addr;
    assign mem_req_data = data[cache_req_index][allocate_position];
    
    assign debug_data = data[debug_set][debug_way][debug_word * 32 +:32];
    assign debug_info[31:0] = {valid[debug_set][debug_way], dirty[debug_set][debug_way], addr[debug_set][debug_way][29:0]};

endmodule
