`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/04 15:24:32
// Design Name: 
// Module Name: ID_EX_REG
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


module ID_EX_REG(
        input clk,
        input rst,
        input stall,
        
        input [31:0] data1_in,
        input [31:0] data2_in,
        
        output reg[31:0] data1_out,
        output reg[31:0] data2_out,
        
        input [4:0] rd_in,
        output reg[4:0] rd_out,
        
        input [31:0] pc_in,
        output reg [31:0] pc_out,

        input [31:0] pc_plus4_in,
        output reg [31:0] pc_plus4_out,

        input signal signal_in,
        output signal signal_out,

        input lock       
    );
    
    signal sgn_nop = '{32'b0, 4'b0010, 2'b0, 1'b1, 1'b1, 1'b0, 2'b0};

    always @ (posedge clk or posedge rst) begin
        if (rst == 1) begin
            data1_out <= 32'b0;
            data2_out <= 32'b0;
            rd_out <= 5'b0;
            pc_out <= 32'b0;
            pc_plus4_out <= 32'b0;
            signal_out <= '{default:0};
        end
        else if (lock) begin
            data1_out <= data1_out;
            data2_out <= data2_out;
            rd_out <= rd_out;
            pc_out <= pc_out;
            pc_plus4_out <= pc_plus4_out;
            signal_out <= signal_out;
        end
        else if (stall == 1'b1) begin
            data1_out <= 32'b0;
            data2_out <= 32'b0;
            rd_out <= 5'b0;
            pc_out <= 32'b0;
            pc_plus4_out <= 32'b0;
            signal_out <= sgn_nop;
        end
        else begin
            data1_out <= data1_in;
            data2_out <= data2_in;
            rd_out <= rd_in;
            pc_out <= pc_in;
            pc_plus4_out <= pc_plus4_in;
            signal_out <= signal_in;
        end
    end
    
endmodule
