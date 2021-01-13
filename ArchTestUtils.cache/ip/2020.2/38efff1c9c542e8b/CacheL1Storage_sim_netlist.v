// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec  8 15:33:39 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CacheL1Storage_sim_netlist.v
// Design      : CacheL1Storage
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CacheL1Storage,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "CacheL1Storage.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19696)
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
