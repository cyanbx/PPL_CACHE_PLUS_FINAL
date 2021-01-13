`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 15:24:32
// Design Name: 
// Module Name: IF_ID_REG
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


module IF_ID_REG(
    input clk, 
    input rst,
    input [31:0] pc_in,
    input [31:0] inst_in,

    input invalid,
    input lock,
    
    output reg[31:0] pc_out,
    output reg[31:0] inst_out,

    input [31:0] pc_plus4_in,
    output reg [31:0] pc_plus4_out
    );
    
    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            pc_out <= 32'b0;
            inst_out <= 32'b0;
            pc_plus4_out <= 32'b0;
        end
        else if (lock == 1) begin
            pc_out <= pc_out;
            inst_out <= inst_out;
            pc_plus4_out <= pc_plus4_out;
        end
        else if (invalid == 1) begin
            pc_out <= 32'b0;
            pc_plus4_out <= 32'b0;
            inst_out <= 32'h00000013;    
        end
        else begin
            pc_out <= pc_in;
            inst_out <= inst_in;   
            pc_plus4_out <= pc_plus4_in;
        end
    end
    
endmodule
