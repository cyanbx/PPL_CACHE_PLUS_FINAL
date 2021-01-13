// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Dec 13 10:26:36 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17136)
`pragma protect data_block
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
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
