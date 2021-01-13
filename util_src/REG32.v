`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/23 20:23:17
// Design Name: 
// Module Name: REG32
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


module REG32(
    input clk,
    input rst,
    input WE,
    input lock,
    input [31:0] data_in,
    output reg[31:0] data_out
    );
    
    always @ (posedge clk or posedge rst) begin
        if (rst == 1)
            data_out <= (-4);
        else if (lock == 1)
            data_out <= data_out;
        else if (WE == 1)
            data_out <= data_in;
    end
    
endmodule
