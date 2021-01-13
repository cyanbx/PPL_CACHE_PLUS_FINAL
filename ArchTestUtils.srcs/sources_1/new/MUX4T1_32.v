`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/28 16:42:40
// Design Name: 
// Module Name: MUX4T1_32
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


module MUX4T1_32(
    input [31:0] i0,
    input [31:0] i1,
    input [31:0] i2,
    input [31:0] i3,
    input [1:0] s,
    output reg [31:0] o
    );
    
    always @* begin
        case (s[1:0])
            2'b00: o <= i0;
            2'b01: o <= i1;
            2'b10: o <= i2;
            2'b11: o <= i3;
        endcase
    end
endmodule
