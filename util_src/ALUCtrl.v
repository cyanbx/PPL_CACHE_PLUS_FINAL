`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/30 15:28:48
// Design Name: 
// Module Name: ALUCtrl
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


module ALUCtrl(
    input [31:0] inst,
    output reg [3:0] funct
    );
    
    // always @* begin
    // if (inst[6:0] == 7'b0110011/* || inst[6:0] == 7'b0010011 */) begin
        // case ({inst[30], inst[14:12]})
        //     4'b0000: funct <= 4'b0010;
        //     4'b1000: funct <= 4'b0110;
        //     4'bX110: funct <= 4'b0001;
        //     4'b0001: funct <= 4'b0011;
        //     4'b1101: funct <= 4'b0111;
        // endcase
    // end
    // else if (inst[6:0] == 7'b0010011) begin
        // case (inst[14:12])
        //     3'b000: funct <= 4'b0010;
        //     3'b110: funct <= 4'b0001;
        //     3'b001: funct <= 4'b0011;
        //     3'b101: begin
        //         if (inst[30] == 1'b0) funct <= 4'b1111;
        //         else if (inst[30] == 1'b1) funct <= 4'b0111;
        //     end
        // endcase 
    // end
    // else if (inst[6:0] == 7'b1100011) begin
    //     case(inst[14:12])
    //         3'b000: funct <= 4'b0100;   // BEQ 
    //         3'b001: funct <= 4'b1100;   // BNE
    //     endcase
    // end
    // else if (inst[6:0] == 7'b0000011 || inst[6:0] == 7'b0100011) begin
    //     funct <= 4'b0010;
    // end
    // end

    always @* begin
        case (inst[6:0])
            7'b0110011: begin   // R-TYPE
                case ({inst[30], inst[14:12]})
                    4'b0000: funct <= 4'b0010;      // ADD
                    4'b0111: funct <= 4'b0000;      // AND
                    4'b1000: funct <= 4'b0110;      // SUB
                    4'b0110: funct <= 4'b0001;      // OR
                    4'b0001: funct <= 4'b0011;      // SLL
                    4'b0010: funct <= 4'b0101;      // SLT
                    4'b1101: funct <= 4'b0111;      // SRA
                    4'b0100: funct <= 4'b1001;      // XOR
                endcase
            end
            7'b0010011: begin   // I-TYPE
                case (inst[14:12])
                    3'b000: funct <= 4'b0010;       // ADDI
                    3'b111: funct <= 4'b0000;       // ANDI
                    3'b110: funct <= 4'b0001;       // ORI
                    3'b001: funct <= 4'b0011;       // SLLI
                    3'b101: begin                   // SRLI & SRAI
                        if (inst[30] == 1'b0) funct <= 4'b1111;
                        else if (inst[30] == 1'b1) funct <= 4'b0111;
                    end
                    3'b100: funct <= 4'b1001;       // XORI
                    3'b010: funct <= 4'b0101;       // SLTI
                endcase 
            end
            7'b1100011: begin    // BRANCH
                case(inst[14:12])
                    3'b000: funct <= 4'b0100;   // BEQ 
                    3'b001: funct <= 4'b1100;   // BNE
                endcase                
            end
            // 7'b0000011: begin   // LOAD
            //     funct <= 4'b0010;
            // end
            // 7'b0100011: begin   // STORE
            //     funct <= 4'b0010;
            // end
            // 7'b1100111: begin   // 
            //     funct <= 4'b0010;
            // end
            default: begin
                funct <= 4'b0010;
            end
        endcase
    end
endmodule
