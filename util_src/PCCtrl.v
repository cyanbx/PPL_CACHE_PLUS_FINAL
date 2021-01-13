`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/30 16:02:16
// Design Name: 
// Module Name: PCCtrl
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


module PCCtrl(
    input [1:0] PCSource,
    input [31:0] ALUOut,
    output reg[1:0] PCSource_ctrl
    );
    
    always @* begin
        case (PCSource[1:0])
            2'b11: begin
                if (ALUOut[31:0] == 32'b1) PCSource_ctrl <= 2'b01;
                else PCSource_ctrl <= 2'b00;
             end
            default: PCSource_ctrl <= PCSource;
        endcase
    end
endmodule
