`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 14:36:06
// Design Name: 
// Module Name: PPL_RV32I
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


module PPL_RV32I(
    input clk,
    input aresetn,
    input step,
    
    output[31:0] data_address,
    output[31:0] data_out,
    input [31:0] data_in,
    
    output[31:0] inst_addr,
    input [31:0] inst_in,
    
    input [31:0] chip_debug_in,
    output[31:0] chip_debug_out0,
    output[31:0] chip_debug_out1,
    output[31:0] chip_debug_out2,
    output[31:0] chip_debug_out3,
    output MemWrite,
    output[2:0] stall_num_out,
    output[31:0] test_state,
    
    input [4:0] reg_checker,

    input [127:0] mem_resp_data,
    input mem_clk,
    output [31:0] mem_req_addr,
    output [127:0] mem_req_data,
    output mem_req_wen,
    output mem_req_valid,

    output [31:0] cache_req_addr_out,
    output [31:0] cache_req_data_out,
    output cache_req_wen_out,
    output cache_req_valid_out,
    output [31:0] cache_resp_data_out,
    output cache_resp_stall_out,
    output [2:0] cache_state,

    output[31:0] rom_req_addr,
    output rom_req_valid,
    input [31:0] rom_resp_inst,
    input rom_resp_valid,
    
    input debug_option,
    input [3:0] debug_set,
    input [1:0] debug_way,
    input [1:0] debug_word,
    output [31:0] debug_output
    );
    
    wire [1:0] PCSource;
    wire RegWrite;
    
    wire [1:0] ALUSrcB;
    wire [1:0] MemtoReg;
    
    assign chip_debug_out1[31:0] = inst_in[31:0];
    
    Datapath datapath(
        .clk(clk),
        .rst(~aresetn),
        .inst(inst_in),
        .MemoryData(data_in),
        .pc_out(inst_addr),
        .ALUOut_out(data_address),
        .DataOut(data_out),
        .reg_checker(reg_checker),
        .check_reg(chip_debug_out0),
        .imm_out(chip_debug_out2),
        .data2register(chip_debug_out3),
        .MemWrite(MemWrite),
        .stall_num_out(stall_num_out),
        .test_state(test_state),
        .mem_resp_data(mem_resp_data),
        .mem_clk(mem_clk),
        .mem_req_addr(mem_req_addr),
        .mem_req_data(mem_req_data),
        .mem_req_wen(mem_req_wen),
        .mem_req_valid(mem_req_valid),
        .cache_req_addr_out(cache_req_addr_out),
        .cache_req_data_out(cache_req_data_out),
        .cache_req_wen_out(cache_req_wen_out),
        .cache_req_valid_out(cache_req_valid_out),
        .cache_resp_data_out(cache_resp_data_out),
        .cache_resp_stall_out(cache_resp_stall_out),
        .state(cache_state),
        .rom_req_addr(rom_req_addr),
        .rom_req_valid(rom_req_valid),
        .rom_resp_inst(rom_resp_inst),
        .rom_resp_valid(rom_resp_valid),
        .debug_option(debug_option),
        .debug_set(debug_set),
        .debug_way(debug_way),
        .debug_word(debug_word),
        .debug_output(debug_output)
    );
    
endmodule
