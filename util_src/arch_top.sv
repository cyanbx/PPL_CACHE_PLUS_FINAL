`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/17 01:06:24
// Design Name: 
// Module Name: arch_top
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


module arch_top(
    input          clk,
    input          resetn,
    input  [15:0]  switch, 
    input  [ 4:0]  button,  
    
    output [15:0]  led,
    output [ 2:0]  rgb1,
    output [ 2:0]  rgb2,
    output [ 7:0]  num_csn,
    output [ 7:0]  num_an
);

logic aresetn;
logic step;

logic [31:0] data_address;
logic [31:0] data_out;
logic [31:0] data_in;

logic [31:0] inst;
logic [31:0] inst_addr;

logic [31:0] chip_debug_in;
logic [31:0] chip_debug_out0;
logic [31:0] chip_debug_out1;
logic [31:0] chip_debug_out2;
logic [31:0] chip_debug_out3;

logic MemWrite;
logic [2:0] stall_num_out;
logic [31:0] test_state;

wire cpuclk;
reg [31:0] clkdiv = 0;

always @ (posedge clk or negedge aresetn) begin
    if (aresetn == 0) clkdiv <= 0;
    else clkdiv <= clkdiv + 1;
end

MUX2T1 clock (
    .i0(clkdiv[2]),
    .i1(step),
    .s(switch[0]),
    .o(cpuclk)
);

logic [31:0] clkcnt = 0;
always @ (posedge cpuclk or negedge aresetn) begin
    if (aresetn == 0) clkcnt <= 0;
    else clkcnt <= clkcnt + 1;
end

wire [31:0] mem_req_addr;
wire [127:0] mem_req_data;
wire mem_req_wen;
wire mem_req_valid;
wire [127:0] mem_resp_data;
wire mem_clk;
wire [31:0] cache_state;

wire [31:0] rom_req_addr;
wire rom_req_valid;
wire [31:0] rom_resp_inst;
wire rom_resp_valid;

wire [31:0] debug_output;

PPL_RV32I cpu(
    .clk(cpuclk),
    .aresetn(aresetn),
    .step(step),
    
    .data_in(data_in),
    .data_out(data_out),
    .data_address(data_address),
    
    .inst_in(inst),
    .inst_addr(inst_addr),
    
    .MemWrite(MemWrite),
    .reg_checker(switch[9:5]),
    .chip_debug_out0(chip_debug_out0),
    .chip_debug_out1(chip_debug_out1),
    .chip_debug_out2(chip_debug_out2),
    .chip_debug_out3(chip_debug_out3),
    .stall_num_out(stall_num_out),
    .test_state(test_state),
    .mem_resp_data(mem_resp_data),
    .mem_clk(mem_clk),
    .mem_req_addr(mem_req_addr),
    .mem_req_data(mem_req_data),
    .mem_req_wen(mem_req_wen),
    .mem_req_valid(mem_req_valid),
    .cache_state(cache_state[2:0]),

    .rom_req_addr(rom_req_addr),
    .rom_req_valid(rom_req_valid),
    .rom_resp_inst(rom_resp_inst),
    .rom_resp_valid(rom_resp_valid),
    
    .debug_option(switch[1]),
    .debug_set(switch[9:6]),
    .debug_way(switch[5:4]),
    .debug_word(switch[3:2]),
    .debug_output(debug_output)
);

io_manager io_manager_inst(
    .clk(clk),
    .resetn(resetn),

    // to chip
    .aresetn(aresetn),
    .step(step),
    .address(address),
    .data_out(data_out),
    .data_in(data_in),
    .chip_debug_in(chip_debug_in),
    
    // to gpio
    .switch(switch),
    .button(button),
    .led(led),
    .num_csn(num_csn),
    .num_an(num_an),
    .rgb1(rgb1),
    .rgb2(rgb2),
    
    // debug
    .debug0(data_address),
    .debug1(data_out),
    .debug2(mem_req_data),
    .debug3(test_state),
    .debug4(inst_addr),
    .debug5(chip_debug_out0),
    .debug6(clkcnt),
    .debug7(debug_output)
);

//LatencyRom latency_rom (
//    .clk(~cpuclk),
//    .rst(~aresetn),
//    .en(rom_req_valid),
//    .we(1'b0),
//    .addr(rom_req_addr),
//    .data_in(),
//    .data_out(rom_resp_inst),
//    .mem_resp_valid(rom_resp_valid),
//    .wait_for_read_out()
//);

inst_rom inst_rom_instance(.spo(inst), .a(inst_addr[11:2]));
// dist_mem_gen_0 data_ram(.a(data_address[11:2]), .d(data_out), .clk(~clk), .we(MemWrite), .spo(data_in));
    
//LatencyMemory latency_memory_inst(
//    .clk(cpuclk),
//    .rst(rst),
//    .en(mem_req_valid),
//    .we(mem_req_wen),
//    .addr(mem_req_addr),
//    .data_in(mem_req_data),
//    .data_out(mem_resp_data),
//    .mem_resp_valid(mem_resp_valid),
//    .wait_for_read_out()
//);

LatencyMemoryVon memory(
    .clk(cpuclk),
    .rst(~aresetn),
    .we(mem_req_wen),
    .addr(mem_req_addr),
    .data_in(mem_req_data),
    .data_out(mem_resp_data),
    .mem_clk(mem_clk)
);

endmodule
