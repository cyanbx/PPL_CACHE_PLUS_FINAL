`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/09 19:27:14
// Design Name: 
// Module Name: WriteBufferL1
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

/*
    idea:
    给RAMSHELL提供对应的接口
    TODO: merge write buffer实现？

    一个指针，循环遍历buffer，决定下一次写哪一项到内存
    一个指针，标志下一个进入buffer的位置
    （即：循环队列）

    进入buffer的时候怎么做？
    使用一个ENCODER（反过来的译码器），找到那个地址，然后把东西写进去
    
*/
module WriteBufferL1(
    input clk,
    input ram_clk,
    input [31:0] data_in,
    input [10:0] write_addr
);


endmodule
