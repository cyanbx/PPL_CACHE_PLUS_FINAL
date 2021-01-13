`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 18:47:15
// Design Name: 
// Module Name: CPU_test
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


module CPU_test
    #(parameter T = 20)
    ();
    
    // input 
    reg clk;
    reg rst;
    reg [4:0] check_reg;
    
    wire [31:0] Inst;

    // output
    reg [31:0] reg_content[31:1];
    
    wire MemWrite;
    wire [31:0] data_address;
    wire [31:0] Inst_Addr;
    wire [31:0] reg_out;
    wire [31:0] data_out;
    wire [2:0] stall_num_out;
    wire [31:0] test_state;
    

    wire [31:0] mem_req_addr;
    wire [127:0] mem_req_data;
    wire mem_req_wen;
    wire mem_req_valid;
    wire [127:0] mem_resp_data;
    wire mem_clk;

    wire [31:0] cache_req_addr_out;
    wire [31:0] cache_req_data_out;
    wire cache_req_wen_out;
    wire cache_req_valid_out;
    wire [31:0] cache_resp_data_out;
    wire cache_resp_stall_out;
    wire [2:0] cache_state;
    
    wire [31:0] rom_req_addr;
    wire rom_req_valid;
    wire [31:0] rom_resp_inst;
    wire rom_resp_valid;
        
    PPL_RV32I uut(
        .clk(clk),
        .aresetn(~rst),
        .step(),
        .data_address(data_address),
        .data_out(data_out),
        .data_in(data_in),
        .inst_addr(Inst_Addr),
        .inst_in(Inst),
        .chip_debug_in(),
        .chip_debug_out0(reg_out[31:0]),
        .chip_debug_out1(),
        .chip_debug_out2(),
        .chip_debug_out3(),
        .MemWrite(MemWrite),
        .reg_checker(check_reg[4:0]),
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
        .cache_state(cache_state),
        
        .rom_req_addr(rom_req_addr),
        .rom_req_valid(rom_req_valid),
        .rom_resp_inst(rom_resp_inst),
        .rom_resp_valid(rom_resp_valid)
    );

    inst_rom inst_rom_instance(
        .a(Inst_Addr[11:2]),
        .spo(Inst)
    );
    
    LatencyMemoryVon memory(
        .clk(clk),
        .rst(rst),
        .we(mem_req_wen),
        .addr(mem_req_addr),
        .data_in(mem_req_data),
        .data_out(mem_resp_data),
        .mem_clk(mem_clk)
    );
    
    integer i;
    
    initial 
    begin
        rst = 1;
        clk = 0;
        
        #100;
        rst = 0;
        
        fork
            forever begin
                #(T/2) clk <= ~clk;
                #1;
                if (clk == 0) begin
                    for (i = 1; i < 32; i = i + 1) begin
                        check_reg <= i;
                        #1;
                        reg_content[i] <= reg_out[31:0];
                        #1;
                    end
                end
            end
        join

    end
endmodule
