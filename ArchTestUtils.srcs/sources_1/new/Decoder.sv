`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 16:37:46
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [31:0] inst,
    output signal sgn
    );
    
    ImmDecoder imm_decoder(
        .inst(inst),
        .imm(sgn.imm)
    );
    
    ALUCtrl alu_ctrl (
        .inst(inst),
        .funct(sgn.ALU_funct)
    );
    
    always @* begin
        case (inst[6:0])
            7'b0110011: begin       // R-type
                sgn.ALUSrcB <= 1'b0;
                sgn.RegWrite <= 1'b1;
                sgn.MemWrite <= 1'b0;
                sgn.MemtoReg <= 2'b00;
                sgn.PCSource <= 2'b00;
            end

            7'b0010011: begin       // I-type
                sgn.ALUSrcB <= 1'b1;
                sgn.RegWrite <= 1'b1;
                sgn.MemWrite <= 1'b0;
                sgn.MemtoReg <= 2'b00;
                sgn.PCSource <= 2'b0;
            end
            
            7'b0110111: begin       // LUI
                sgn.RegWrite <= 1'b1;
                sgn.MemtoReg <= 2'b10;
                sgn.ALUSrcB <= 1'b0;
                sgn.MemWrite <= 1'b0;
                sgn.PCSource <= 2'b0;
            end
                
            7'b0000011: begin       // LOAD
                sgn.RegWrite <= 1'b1;
                sgn.MemtoReg <= 2'b01;
                sgn.ALUSrcB <= 1'b1;
                sgn.MemWrite <= 1'b0;
                sgn.PCSource <= 2'b00;
            end

            7'b0100011: begin       // STORE
                sgn.MemWrite <= 1'b1;
                sgn.ALUSrcB <= 1'b1;
                sgn.RegWrite <= 1'b0;
                sgn.MemtoReg <= 2'b00;
                sgn.PCSource <= 2'b0; 
            end

            7'b1101111: begin       // JAL
                sgn.MemWrite <= 1'b0;
                sgn.ALUSrcB <= 1'b0;
                sgn.RegWrite <= 1'b1;
                sgn.MemtoReg <= 2'b11;
                sgn.PCSource <= 2'b01;
            end

            7'b1100111: begin       // JALR
                sgn.MemWrite <= 1'b0;
                sgn.ALUSrcB <= 1'b1;
                sgn.RegWrite <= 1'b1;
                sgn.MemtoReg <= 2'b11;
                sgn.PCSource <= 2'b10;
            end

            7'b1100011: begin       // BRANCH
                sgn.PCSource <= 2'b11;
                sgn.ALUSrcB <= 1'b0;
                sgn.RegWrite <= 1'b0;
                sgn.MemtoReg <= 2'b00;
                sgn.MemWrite <= 1'b0;
            end

            default: begin
                sgn.PCSource <= 2'b00;
                sgn.ALUSrcB <= 1'b0;
                sgn.RegWrite <= 1'b0;
                sgn.MemtoReg <= 2'b00;
                sgn.MemWrite <= 1'b0;
            end
        endcase    
    end
endmodule

