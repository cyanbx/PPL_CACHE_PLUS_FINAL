// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan  5 10:38:04 2021
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Memory_core_sim_netlist.v
// Design      : Memory_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Memory_core,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [17:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [17:0]dina;
  wire [17:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [17:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.125799 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Memory_core.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[17:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44640)
`pragma protect data_block
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
R3AWlX4UwtdP
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
