`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 14:34:08
// Design Name: 
// Module Name: Datapath
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

typedef struct {
    logic [31:0] imm;
    logic [ 3:0] ALU_funct;
    logic [ 1:0] MemtoReg;
    logic ALUSrcB;
    logic RegWrite;
    logic MemWrite;
    logic [ 1:0] PCSource;
} signal;

module Datapath(
    input clk,
    input rst,
    input [31:0] inst,
    input [31:0] MemoryData,
    input [4:0] reg_checker,
    output MemWrite,
    output[31:0] check_reg,
    output[31:0] pc_out,
    output[31:0] ALUOut_out,
    output[31:0] DataOut,
    output[31:0] imm_out,
    output[31:0] data2register,
    output[ 2:0] stall_num_out,
    output[31:0] test_state,

    output[31:0] rom_req_addr,
    output rom_req_valid,
    input [31:0] rom_resp_inst,
    input rom_resp_valid,

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
    output [2:0] state,
    
    input debug_option,
    input [3:0] debug_set,
    input [1:0] debug_way,
    input [1:0] debug_word,
    output [31:0] debug_output
    );

    // .cache_req_addr(ALUOut_out),
    // .cache_req_data(data2_EX_MEM_REG_out),
    // .cache_req_wen(sgn_mem_wb_reg_out.MemWrite),
    // .cache_req_valid(cache_req_valid),
    // .cache_resp_data(cache_resp_data),
    // .cache_resp_stall(cache_resp_stall),

    // wire [31:0] mem_req_addr;
    // wire [31:0] mem_req_data;
    // wire mem_req_wen;
    // wire mem_req_valid;
    // wire [31:0] mem_resp_data;
    // wire mem_resp_valid;
    
    wire [31:0] pc_in;
    wire [31:0] pc_if_reg_out;
    wire [31:0] pc_id_ex_out;
    wire [31:0] inst_if_reg_out;
    wire [31:0] pc_from_jalr;
    
    wire [31:0] data1_in;
    wire [31:0] data2_in;
    
    wire [31:0] data1_out;
    wire [31:0] data2_out;
    
    wire [31:0] ALUopB;
    
    wire [31:0] ALUOut;
    
    // wire [4:0] rd;
    wire [31:0] data2reg;
    
    wire [31:0] inst_id_ex_reg_out;
    wire [31:0] pc_id_ex_reg_out;
    wire [ 4:0] rd_MEM_WB_REG_2_Reg;
    
    wire [4:0] rd_ID_EX_REG_out;
    wire [4:0] rd_EX_MEM_REG_out;
    
    wire [31:0] pc_from_add_4;
    wire [31:0] pc_from_branch;
    wire [31:0] pc_from_branch_ex_mem_reg_out;

    wire [1:0] PCSource_ctrl; 

    wire pc_lock;
    wire if_id_lock;
    wire id_ex_stall;
    wire if_id_invalid;

    // wire [2:0] stall_num_out;

    signal sgn_decoder_out;

    MUX4T1_32 mux_pcsource(
        .i0(pc_from_add_4),
        .i1(pc_from_branch_ex_mem_reg_out),
        .i2(pc_from_jalr),
        .i3(32'b0),
        .s(PCSource_ctrl),
        .o(pc_in)
    );

    wire [31:0] inst_from_cache;
    wire icache_stall;

    REG32 pc(
        .clk(clk),
        .rst(rst),
        .WE(1'b1),
        .data_in(pc_in),
        .data_out(pc_out),
        .lock(pc_lock)
    );
        
    ADD pc_plus_4(
        .a(pc_out[31:0]),
        .b(32'd4),
        .c(pc_from_add_4)
    );

    wire [31:0] pc_plus4_if_id_reg_out;
    wire [31:0] pc_plus4_id_ex_reg_out;
    wire [31:0] pc_plus4_ex_mem_reg_out;
    wire [31:0] pc_plus4_mem_wb_reg_out;

    wire id_ex_lock;
    wire ex_mem_lock;
    wire mem_wb_lock;

//    CacheL1 Icache(
//        .clk(~clk),
//        .rst(rst),
//        .cache_req_addr(pc_out),
//        .cache_req_data(),
//        .cache_req_wen(),
//        .cache_req_valid(1'b1),
//        .cache_resp_data(inst_from_cache),
//        .cache_resp_stall(icache_stall),
//        .mem_req_addr(rom_req_addr),
//        .mem_req_data(),
//        .mem_req_wen(),
//        .mem_req_valid(rom_req_valid),
//        .mem_resp_data(rom_resp_inst),
//        .mem_resp_valid(rom_resp_valid),
//        .state_out(),
//        .debug(debug),
//        .debug_pos(debug_pos),
//        .info(icache_info),
//        .content(icache_content)
//    );

    IF_ID_REG if_id_reg(
        .clk(clk),
        .rst(rst),
        .pc_in(pc_out),
        .pc_out(pc_if_reg_out),
        .inst_in(inst),
        .inst_out(inst_if_reg_out),
        .pc_plus4_in(pc_from_add_4),
        .pc_plus4_out(pc_plus4_if_id_reg_out),
        .lock(if_id_lock),
        .invalid(if_id_invalid)
    );
    
    Reg_ reg_(
        .clk(clk),
        .rst(rst),
        .rs1(inst_if_reg_out[19:15]),
        .rs2(inst_if_reg_out[24:20]),
        .rd(rd_MEM_WB_REG_2_Reg),
        .W_data(data2reg[31:0]),
        .RegWrite(sgn_mem_wb_reg_out.RegWrite),
        .rDataA(data1_in),
        .rDataB(data2_in),
        .reg_checker(reg_checker),
        .check_reg(check_reg)
    );
        
    Decoder decoder(
        .inst(inst_if_reg_out),
        .sgn(sgn_decoder_out)
    ); 

    signal sgn_id_ex_reg_out;
    
    ID_EX_REG id_ex_reg(
        .clk(clk),
        .rst(rst),
        .data1_in(data1_in),
        .data1_out(data1_out),
        .data2_in(data2_in),
        .data2_out(data2_out),
        .pc_in(pc_if_reg_out),
        .pc_out(pc_id_ex_out),
        .rd_in(inst_if_reg_out[11:7]),
        .rd_out(rd_ID_EX_REG_out),
        .signal_in(sgn_decoder_out),
        .signal_out(sgn_id_ex_reg_out),
        .pc_plus4_in(pc_plus4_if_id_reg_out),
        .pc_plus4_out(pc_plus4_id_ex_reg_out),
        .stall(id_ex_stall),
        .lock(id_ex_lock)
    );
    
    MUX2T1_32 ALUSrcB(
        .i1(data2_out),
        .i2(sgn_id_ex_reg_out.imm),
        .o(ALUopB),
        .s(sgn_id_ex_reg_out.ALUSrcB)
    );

    ADD pc_branch(
        .a(pc_id_ex_out),
        .b(sgn_id_ex_reg_out.imm),
        .c(pc_from_branch)
    );
    
    ALU alu(
        .a(data1_out),
        .b(ALUopB),
        .o(ALUOut),
        .funct(sgn_id_ex_reg_out.ALU_funct)    
    );
    
    wire [31:0] data2_EX_MEM_REG_out;
    wire [31:0] imm_EX_MEM_REG_out;
    
    signal sgn_ex_mem_reg_out;
    
    EX_MEM_REG ex_mem_reg(
        .clk(clk),
        .rst(rst),
        .ALUOut_in(ALUOut),
        .ALUOut_out(ALUOut_out),
        .rd_in(rd_ID_EX_REG_out),
        .rd_out(rd_EX_MEM_REG_out),
        .pc_in(pc_from_branch),
        .pc_out(pc_from_branch_ex_mem_reg_out),
        .data2_in(data2_out),
        .data2_out(data2_EX_MEM_REG_out),
        .sgn_in(sgn_id_ex_reg_out),
        .sgn_out(sgn_ex_mem_reg_out),
        .pc_plus4_in(pc_plus4_id_ex_reg_out),
        .pc_plus4_out(pc_plus4_ex_mem_reg_out),
        .lock(ex_mem_lock)
    );

    PCCtrl pcctrl(
        .PCSource(sgn_ex_mem_reg_out.PCSource),
        .ALUOut(ALUOut_out),
        .PCSource_ctrl(PCSource_ctrl)
    );

    ALUOut_SHIFT aluout_shift(
        .in(ALUOut_out),
        .out(pc_from_jalr)
    );
    
    wire [31:0] MemoryData_MEM_WB_REG_to_MUX;
    wire [31:0] ALUOut_MEM_WB_REG_to_MUX;

    signal sgn_mem_wb_reg_out;

    wire [31:0] cache_resp_data;
    wire cache_req_valid;
    assign cache_req_valid = (sgn_ex_mem_reg_out.MemtoReg == 2'b01 || sgn_ex_mem_reg_out.MemWrite == 1) ? 1 : 0;

    wire cache_resp_stall;
    wire cache_req_wen;
    assign cache_req_wen = sgn_ex_mem_reg_out.MemWrite == 1 ? 1 : 0;

//    CacheL1 cachel1(
//        .clk(~clk),
//        .rst(rst),
//        .cache_req_addr(ALUOut_out),
//        .cache_req_data(cache_req_data_out),
//        .cache_req_wen(cache_req_wen),
//        .cache_req_valid(cache_req_valid),
//        .cache_resp_data(cache_resp_data),
//        .cache_resp_stall(cache_resp_stall),
//        .mem_req_addr(mem_req_addr),
//        .mem_req_data(mem_req_data),
//        .mem_req_wen(mem_req_wen),
//        .mem_req_valid(mem_req_valid),
//        .mem_resp_data(mem_resp_data),
//        .mem_resp_valid(mem_resp_valid),
//        .state_out(state)
//    );

    wire [31:0] debug_info;
    wire [31:0] debug_data;
    
    Cache d_cache(
        .clk(~clk),
        .rst(rst),

        .cache_req_addr(ALUOut_out),
        .cache_req_data(cache_req_data_out),
        .cache_req_wen(cache_req_wen),
        .cache_req_valid(cache_req_valid),

        .cache_resp_data(cache_resp_data),
        .cache_resp_stall(cache_resp_stall),
        
        .mem_req_addr(mem_req_addr),
        .mem_req_data(mem_req_data),
        .mem_req_wen(mem_req_wen),
        .mem_req_valid(mem_req_valid),
        
        .mem_resp_data(mem_resp_data),
        .mem_clk(mem_clk),
        
        .debug_set(debug_set),
        .debug_way(debug_way),
        .debug_word(debug_word),
        .debug_data(debug_data),
        .debug_info(debug_info)
    );
    
    MUX2T1_32 debug_out(
        .i1(debug_data),
        .i2(debug_info),
        .o(debug_output),
        .s(debug_option)
    );

    assign cache_req_addr_out = ALUOut_out;
    assign cache_req_data_out = data2_EX_MEM_REG_out;
    assign cache_req_wen_out = cache_req_wen;
    assign cache_req_valid_out = cache_req_valid;
    assign cache_resp_data_out = cache_resp_data;
    assign cache_resp_stall_out = cache_resp_stall;
    
    MEM_WB_REG mem_wb_reg(
        .clk(clk),
        .rst(rst),
        .ALUOut_in(ALUOut_out),
        .ALUOut_out(ALUOut_MEM_WB_REG_to_MUX),
        .MemoryData_in(cache_resp_data),
        .MemoryData_out(MemoryData_MEM_WB_REG_to_MUX),
        .rd_in(rd_EX_MEM_REG_out),
        .rd_out(rd_MEM_WB_REG_2_Reg),
        .sgn_in(sgn_ex_mem_reg_out),
        .sgn_out(sgn_mem_wb_reg_out),
        .pc_plus4_in(pc_plus4_ex_mem_reg_out),
        .pc_plus4_out(pc_plus4_mem_wb_reg_out),
        .lock(mem_wb_lock)
    );
    
    MUX4T1_32 mux_data2reg(
        .i0(ALUOut_MEM_WB_REG_to_MUX),
        .i1(MemoryData_MEM_WB_REG_to_MUX),
        .i2(sgn_mem_wb_reg_out.imm),
        .i3(pc_plus4_mem_wb_reg_out),
        .s(sgn_mem_wb_reg_out.MemtoReg),
        .o(data2reg)
    );
    
    assign data2register[31:0] = data2reg[31:0];
    assign DataOut[31:0] = data2_EX_MEM_REG_out[31:0];
    assign MemWrite = sgn_ex_mem_reg_out.MemWrite;

    wire cache_resp_stall_in;
    assign cache_resp_stall_in = cache_resp_stall;

    HazardDetector hazard_detector(
        .clk(clk),
        .rst(rst),
        .inst(inst_if_reg_out),
        .id_ex_sgn_out(sgn_id_ex_reg_out),
        .id_ex_rd_out(rd_ID_EX_REG_out),
        .id_ex_data1_out(data1_out),
        .ex_mem_sgn_out(sgn_ex_mem_reg_out),
        .ex_mem_rd_out(rd_EX_MEM_REG_out),
        .ex_mem_alu_out(ALUOut_out),
        .pcctrl(PCSource_ctrl),
        .mem_wb_sgn_out(sgn_mem_wb_reg_out),
        .mem_wb_rd_out(rd_MEM_WB_REG_2_Reg),
        .cache_resp_stall(cache_resp_stall_in),
        .pc_lock(pc_lock),
        .if_id_lock(if_id_lock),
        .if_id_invalid(if_id_invalid),
        .id_ex_stall(id_ex_stall),
        .stall_num_out(stall_num_out),
        .test_state(test_state),
        .id_ex_lock(id_ex_lock),
        .ex_mem_lock(ex_mem_lock),
        .mem_wb_lock(mem_wb_lock)
    );
    
endmodule
