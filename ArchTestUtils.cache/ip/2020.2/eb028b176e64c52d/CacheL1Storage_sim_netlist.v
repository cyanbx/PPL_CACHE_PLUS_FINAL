// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec  8 15:37:07 2020
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19424)
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
