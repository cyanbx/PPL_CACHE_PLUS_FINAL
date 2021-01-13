`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 15:51:27
// Design Name: 
// Module Name: REG
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


module REG(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] W_data,
    input RegWrite,
    input [4:0] reg_checker,
    output[31:0] check_reg,
    output[31:0] rDataA,
    output[31:0] rDataB
    );
    
    reg[31:0] register[1:31];
    
    assign rDataA = (rs1[4:0] == 5'b0) ? 32'b0 : register[rs1[4:0]];
    assign rDataB = (rs2[4:0] == 5'b0) ? 32'b0 : register[rs2[4:0]];
    
    integer i;
    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            for (i = 1; i < 32; i=i+1) register[i] <= 32'b0;
        end
        else if (RegWrite == 1 && rd != 5'b0) begin
            register[rd[4:0]] <= W_data[31:0];
        end
    end
    
    reg[31:0] check;
    always @ (reg_checker) begin
        if (reg_checker != 0) check <= register[reg_checker[4:0]]; 
        else check <= 32'b0;
    end
    assign check_reg = check;
endmodule
