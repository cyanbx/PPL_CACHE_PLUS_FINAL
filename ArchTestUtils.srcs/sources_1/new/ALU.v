`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 16:37:51
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] a,
    input [31:0] b,
    input [3:0] funct,
    output reg[31:0] o
    );
    
    always @* begin
        case (funct)
            4'b0000: o <= a & b;
            4'b0001: o <= a | b;
            4'b1001: o <= a ^ b;
            4'b0010: o <= a + b;
            4'b0110: o <= a - b;
            4'b0011: o <= a << b;
            4'b0111: o <= ($signed(a)) >>> b;
            4'b1111: o <= a >> b;
            4'b0100: o <= a == b ? 1 : 0;
            4'b1100: o <= a == b ? 0 : 1;
            4'b0101: o <= ($signed(a)) < ($signed(b)) ? 1 : 0;

        endcase
    end
    
endmodule
