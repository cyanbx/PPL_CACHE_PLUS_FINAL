`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/23 16:24:19
// Design Name: 
// Module Name: LatencyRom
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


module LatencyRom(
    input clk,
    input rst,
    input en,
    input we,
    input [31:0] addr,
    input [31:0] data_in,
    output [31:0] data_out,
    output mem_resp_valid,
    output [31:0] wait_for_read_out
);

reg [31:0] clkdiv = 0; 

integer wait_for_read;
integer wait_for_read_latency;

reg [1:0] wait_for_read_pulse;

// assign wait_for_read_pulse = (wait_for_read != wait_for_read_latency && wait_for_read == 3) ? 1 : 0;

always @ (posedge clk or posedge rst)begin
    if (rst) clkdiv <= 0;
    else clkdiv <= clkdiv + 1;
end

wire clk_latency;
reg[1:0] clk_latency_pulse;
reg[1:0] clk_latency_pulse_plus1;
reg clk_latency_delay;

assign clk_latency = clkdiv[3];

always @ (posedge clk or posedge rst) begin
    if (rst == 1) begin
        clk_latency_delay <= 0;
        clk_latency_pulse <= 0;
        clk_latency_pulse_plus1 <= 0;
    end 
    else if (en && clk_latency_delay != clk_latency && clk_latency == 1) begin
        clk_latency_pulse <= 2;
        clk_latency_pulse_plus1 <= 3;
        clk_latency_delay <= clk_latency;
    end 
    else begin
        if (clk_latency_pulse > 0) clk_latency_pulse <= clk_latency_pulse - 1;
        if (clk_latency_pulse_plus1 > 0) clk_latency_pulse_plus1 <= clk_latency_pulse_plus1 - 1;
        clk_latency_delay <= clk_latency;
    end 
end

wire clk_latency_pulse_1;
assign clk_latency_pulse_1 = clk_latency_pulse[1];

always @ (posedge clk_latency_pulse[0] or posedge rst or negedge en or posedge we) begin
    if (rst == 1) wait_for_read <= 0;
    else if (en == 0) wait_for_read <= 0;
    else if (we == 1) wait_for_read <= 0;
    else wait_for_read <= (wait_for_read == 3) ? 1 : wait_for_read + 1;
end

always @ (posedge clk or posedge rst) begin
    if (rst == 1) begin
        wait_for_read_latency <= 0;
        wait_for_read_pulse <= 0;
    end
    else if (wait_for_read_latency != wait_for_read && wait_for_read == 3) begin
        wait_for_read_pulse <= 2;
        wait_for_read_latency <= wait_for_read;
    end
    else begin
        wait_for_read_latency <= wait_for_read;
        if (wait_for_read_pulse > 0) wait_for_read_pulse <= wait_for_read_pulse - 1;
    end
end

assign mem_resp_valid = ((en == 1 && we == 1 && clk_latency_pulse_plus1 > 0) || (en == 1 && we == 0 && wait_for_read_pulse > 0)) ? 1 : 0;

blk_mem_gen_0 Memory(
    .clka(clk_latency),
    .ena(en),
    .wea(we),
    .addra(addr[31:2]),
    .dina(data_in[31:0]),
    .douta(data_out[31:0])
);

assign wait_for_read_out = wait_for_read;

endmodule
