`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 17:25:43
// Design Name: 
// Module Name: Ctrl
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


module Ctrl(
    input [31:0] inst,
    output reg RegWrite,
    output reg[1:0] ALUSrcB,
    output reg[1:0] PCSource,
    output reg[1:0] MemWrite,
    output reg MemRead,
    output reg[1:0] MemtoReg
    );
    
    always @* begin
        case (inst[6:0])
            7'b0110011: begin       // R-type
                ALUSrcB <= 2'b0;
                RegWrite <= 1;
                PCSource <= 2'b0;
                MemWrite <= 2'b00;
                MemRead <= 0;
                MemtoReg <= 2'b0;
            end
            7'b0010011: begin       // I-type
                ALUSrcB <= 2'b01;
                RegWrite <= 1;
                PCSource <= 2'b0;
                MemWrite <= 2'b0;
                MemRead <= 0;
                MemtoReg <= 2'b0;
            end
            7'b0110111: begin       // LUI
                PCSource <= 2'b0;
                RegWrite <= 1'b1;
                MemtoReg <= 2'd2;
                ALUSrcB <= 2'b10;
                MemWrite <= 2'b00;
                MemRead <= 0;
            end
            7'b1100011: begin       // B-TYPE
                PCSource <= 2'b11;
                ALUSrcB <= 2'b00;
                
            end
            7'b0000011: begin       // LOAD
                MemRead = 1'b1;
                PCSource <= 2'b0;
                RegWrite <= 1;
                MemtoReg <= 2'b01;
                ALUSrcB <= 2'b01;
                MemWrite <= 1'b0;
            end
            7'b0100011: begin       // STORE
               MemWrite <= 1'b1;
               MemRead <= 1'b0;
               PCSource <= 2'b00;
               ALUSrcB <= 2'b01;
               RegWrite <= 0;
               MemtoReg <= 2'b11; 
            end
        endcase    
    end
endmodule
