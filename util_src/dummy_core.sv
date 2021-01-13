`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/21 18:44:55
// Design Name: 
// Module Name: dummy_core
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


module dummy_core(
    input  logic        clk,
    input  logic        aresetn,
    input  logic        step,

    output logic [31:0] address,
    output logic [31:0] data_out,
    input  logic [31:0] data_in,
    
    input  logic [31:0] chip_debug_in,
    output logic [31:0] chip_debug_out0,
    output logic [31:0] chip_debug_out1,
    output logic [31:0] chip_debug_out2,
    output logic [31:0] chip_debug_out3
);

logic [63:0] cnt;

initial begin
    cnt <= 0;
end

always_ff @ (posedge clk) begin
    if (~aresetn)
        cnt <= 0;
    else if (step)
        cnt <= cnt + 1;
end

assign chip_debug_out0 = cnt[31:0];
assign chip_debug_out1 = cnt[63:32];

endmodule
