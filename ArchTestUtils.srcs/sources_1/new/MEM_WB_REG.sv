`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 15:24:32
// Design Name: 
// Module Name: MEM_WB_REG
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


module MEM_WB_REG(
    input clk,
    input rst,
    
    input [31:0] ALUOut_in,
    output reg [31:0] ALUOut_out,
    
    input [31:0] MemoryData_in,
    output reg [31:0] MemoryData_out,
    
    input [31:0] data2_in,
    output reg [31:0] data2_out,
    
    input [4:0] rd_in,
    output reg [4:0] rd_out,

    input [31:0] pc_plus4_in,
    output reg [31:0] pc_plus4_out,
    
    input signal sgn_in,
    output signal sgn_out,

    input lock
    );
    
    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            ALUOut_out <= 32'b0;
            MemoryData_out <= 32'b0;
            rd_out <= 5'b0;
            data2_out <= 32'b0;
            pc_plus4_out <= 32'b0;
            sgn_out <= '{default:0};
        end
        else if (lock) begin
            ALUOut_out <= ALUOut_out;
            MemoryData_out <= MemoryData_out;
            rd_out <= rd_out;
            data2_out <= data2_out;
            pc_plus4_out <= pc_plus4_out;
            sgn_out <= sgn_out;
        end
        else begin
            ALUOut_out <= ALUOut_in;
            MemoryData_out <= MemoryData_in;
            rd_out <= rd_in;
            data2_out <= data2_in; 
            pc_plus4_out <= pc_plus4_in;
            sgn_out <= sgn_in;
        end
    end
endmodule
