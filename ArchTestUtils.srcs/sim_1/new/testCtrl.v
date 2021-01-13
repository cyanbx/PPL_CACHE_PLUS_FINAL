`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:42:26
// Design Name: 
// Module Name: testCtrl
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


module testCtrl(

    );
    
    reg clk;
    reg [31:0] inst;
    wire MemtoReg;
    
    always begin
        clk <= 1'b1;
        #0.5;
        clk <= 1'b0;
        #0.5;
    end
//    module Ctrl(
//    input [31:0] inst,
//    output reg RegWrite,
//    output reg[1:0] ALUSrcB,
//    output reg[1:0] PCSource,
//    output reg[1:0] MemWrite,
//    output reg MemRead,
//    output reg MemtoReg
//    );
    
    Ctrl ct(
        .inst(inst),
        .MemtoReg(MemtoReg)
    );

endmodule
