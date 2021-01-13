// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Dec 13 10:26:36 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Cyanbox/curriculum/arch/RISC-V_lab/PPL/ArchTestUtils.srcs/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module inst_rom
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [14:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:15] = \^spo [31:15];
  assign spo[14] = \<const0> ;
  assign spo[13:4] = \^spo [13:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "inst_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  inst_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17104)
`pragma protect data_block
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
ilfJ1Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
