`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/18 16:39:21
// Design Name: 
// Module Name: HazardDetector
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


module HazardDetector(
    input clk,
    input rst,
    input [31:0] inst,
    
    input signal id_ex_sgn_out,
    input [4:0] id_ex_rd_out,
    input [31:0] id_ex_data1_out,

    input signal ex_mem_sgn_out,
    input [4:0] ex_mem_rd_out,
    input [31:0] ex_mem_alu_out,
    input [1:0] pcctrl,

    input signal mem_wb_sgn_out,
    input [4:0] mem_wb_rd_out,

    input cache_resp_stall,

    output pc_lock,
    output if_id_lock,
    output if_id_invalid,
    output id_ex_stall,

    output id_ex_lock,
    output ex_mem_lock,
    output mem_wb_lock,
    
    output [2:0] stall_num_out,
    output reg [31:0] test_state
    );

    logic [2:0] stall_num;
    logic on_branch;

    always @ (negedge clk or posedge rst) begin
        if (rst == 1) begin
            stall_num <= 3'b0;
            on_branch <= 1'b0;
            test_state <= 32'd0;
        end

        else if (id_ex_sgn_out.PCSource != 2'b00) begin
            stall_num <= 3'd2;
            on_branch <= 1'b1;
            test_state <= 32'd1;
        end

        else if (inst[6:0] == 7'b0110011 || inst[6:0] == 7'b1100011 || inst[6:0] == 7'b0100011) begin      // R-TYPE, BRANCH and STORE
            if (id_ex_sgn_out.RegWrite == 1 && (id_ex_rd_out == inst[19:15] || id_ex_rd_out == inst[24:20]) && id_ex_rd_out != 0) begin
                stall_num <= 3'd3;
                test_state <= 32'd2;
            end
            else if (ex_mem_sgn_out.RegWrite == 1 && (ex_mem_rd_out == inst[19:15] || ex_mem_rd_out == inst[24:20]) && ex_mem_rd_out != 0) begin
                stall_num <= 3'd2;
                test_state <= 32'd3;
            end
            else if (mem_wb_sgn_out.RegWrite == 1 && (mem_wb_rd_out == inst[19:15] || mem_wb_rd_out == inst[24:20]) && mem_wb_rd_out != 0) begin
                stall_num <= 3'd1;
                test_state <= 32'd4;
            end
            else if (stall_num[2:0] != 3'b0) begin
                stall_num <= stall_num - 1;
                test_state <= 32'd5;
            end
        end

        else if (inst[6:0] == 7'b0010011 || inst[6:0] == 7'b0000011) begin                 // I-TYPE, LOAD
            if (id_ex_sgn_out.RegWrite == 1 && id_ex_rd_out == inst[19:15] && id_ex_rd_out != 0) begin
                stall_num <= 3'd3;
                test_state <= 32'd6;
            end
            else if (ex_mem_sgn_out.RegWrite == 1 && ex_mem_rd_out == inst[19:15] && ex_mem_rd_out != 0) begin
                stall_num <= 3'd2;
                test_state <= 32'd7;
            end

            else if (mem_wb_sgn_out.RegWrite == 1 && mem_wb_rd_out == inst[19:15] && mem_wb_rd_out != 0) begin
                stall_num <= 3'd1;
                test_state <= 32'd8;
            end

            else if (stall_num[2:0] != 3'b0) begin
                stall_num <= stall_num - 1;
                test_state <= 32'd9;
            end
        end

        else if (stall_num[2:0] != 3'b0) begin
            stall_num <= stall_num - 1;
            test_state <= 32'd10;
        end
        
        else if (stall_num[2:0] == 3'b0 && on_branch == 1) begin
            on_branch <= 1'b0;
            test_state <= 32'd11;
        end
        
    end
    
    assign pc_lock = (cache_resp_stall == 1 || stall_num > 1 || (stall_num == 1 && ! (on_branch == 1 && pcctrl != 2'b00))) ? 1 : 0;
    assign if_id_lock = pc_lock;
    assign if_id_invalid = (stall_num == 1 && on_branch == 1 && pcctrl != 2'b00) ? 1 : 0;
    assign id_ex_stall = (stall_num > 0) ? 1 : 0;
    assign id_ex_lock = cache_resp_stall;
    assign ex_mem_lock = cache_resp_stall;
    assign mem_wb_lock = cache_resp_stall;

//    always @ (stall_num[2:0]) begin
//        if (stall_num > 0) begin
//            if (on_branch == 1'b1 && stall_num == 1 && pcctrl != 2'b00) begin
//                pc_lock <= 1'b0;
//                if_id_lock <= 1'b0;
//                if_id_invalid <= 1'b1;
//            end
//            else begin
//                pc_lock <= 1'b1;
//                if_id_lock <= 1'b1;
//                if_id_invalid <= 1'b0;
//            end 
//            id_ex_stall <= 1'b1;
//            if (on_branch == 1'b1 && stall_num == 1) begin
//                on_branch <= 1'b0;
//            end
//        end 
//        else begin
//            pc_lock <= 1'b0;
//            if_id_lock <= 1'b0;
//            if_id_invalid <= 1'b0;
//            id_ex_stall <= 1'b0;
//            on_branch <= 1'b0;
//        end
//    end
    
    assign stall_num_out[2:0] = stall_num[2:0];

endmodule
