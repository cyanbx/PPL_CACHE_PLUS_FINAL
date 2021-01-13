// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Dec 13 14:43:55 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_sim_netlist.v
// Design      : blk_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.349 mW" *) 
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
  (* C_INIT_FILE = "blk_mem.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46064)
`pragma protect data_block
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
nmZxQf3kE4M=
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
