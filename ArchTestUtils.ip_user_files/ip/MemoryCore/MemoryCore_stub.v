// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan  2 18:19:13 2021
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Cyanbox/curriculum/arch/RISC-V_lab/PPL_CACHE_PLUS/ArchTestUtils.srcs/sources_1/ip/MemoryCore/MemoryCore_stub.v
// Design      : MemoryCore
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *)
module MemoryCore(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[10:0],d[127:0],clk,we,spo[127:0]" */;
  input [10:0]a;
  input [127:0]d;
  input clk;
  input we;
  output [127:0]spo;
endmodule
