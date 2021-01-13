`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/23 17:17:26
// Design Name: 
// Module Name: ImmDecoder
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


module ImmDecoder(
    input[31:0] inst,
    output[31:0] imm
    );
    
    reg[31:0] imm_out;
    
    always @* begin
        case (inst[6:0])
            7'b0010011: begin   // I-type
                if (inst[14:12] == 3'b001 || inst[14:12] == 3'b101)
                    imm_out <= {{28{inst[24]}}, inst[23:21], inst[20]};
                else
                    imm_out <= {{21{inst[31]}}, inst[30:25], inst[24:21], inst[20]};
            end
            7'b1100011: begin   // B-type
                imm_out <= {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
            end
            7'b1101111: begin   // JAL
                imm_out <= {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
            end
            7'b1100111: begin   // JALR
                imm_out <= {{21{inst[31]}}, inst[30:20]};
            end
            7'b0110111: begin   // LUI
                imm_out <= {inst[31], inst[30:20], inst[19:12], 12'b0};
            end
            7'b0100011: begin   // S-type
                imm_out <= {{21{inst[31]}}, inst[30:25], inst[11:8], inst[7]};
            end
            7'b0000011: begin   // LOAD
                imm_out <= {{21{inst[31]}}, inst[30:20]};
            end
        endcase
    end
    
    assign imm[31:0] = imm_out[31:0];
endmodule
