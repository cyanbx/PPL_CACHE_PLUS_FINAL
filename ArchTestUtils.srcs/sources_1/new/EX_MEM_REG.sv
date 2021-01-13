`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 15:24:32
// Design Name: 
// Module Name: EX_MEM_REG
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


module EX_MEM_REG(
    input clk,
    input rst,
    
    input [31:0] ALUOut_in,
    output reg [31:0] ALUOut_out,
    
    input [31:0] inst_in,
    output reg[31:0] inst_out,
    
    input [4:0] rd_in,
    output reg [31:0] rd_out,
    
//    input RegWrite_in,
//    output reg RegWrite_out,
    
//    input [1:0] MemtoReg_in,
//    output reg [1:0] MemtoReg_out,
    
    input [31:0] pc_in,
    output reg [31:0] pc_out,
    
    input [31:0] data2_in,
    output reg [31:0] data2_out,
    
    input signal sgn_in,
    output signal sgn_out,
    
//    input [31:0] imm_in,
//    output reg [31:0] imm_out

    input [31:0] pc_plus4_in,
    output reg [31:0] pc_plus4_out,
    
    input lock
    );
    
    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            ALUOut_out <= 32'b0;
            inst_out <= 32'b0;
            rd_out <= 32'b0;
            pc_out <= 32'b0;
            data2_out <= 32'b0;
            pc_plus4_out <= 32'b0;
            sgn_out <= '{default:0};
        end
        else if (lock) begin
            ALUOut_out <= ALUOut_out;
            inst_out <= inst_out;
            rd_out <= rd_out;
            pc_out <= pc_out;
            data2_out <= data2_out;
            pc_plus4_out <= pc_plus4_out;
            sgn_out <= sgn_out;
        end
        else begin
            ALUOut_out <= ALUOut_in;
            inst_out <= inst_in;
            rd_out <= rd_in;
            pc_out <= pc_in;
            data2_out <= data2_in;
            pc_plus4_out <= pc_plus4_in;
            sgn_out <= sgn_in;
        end
    end
endmodule
