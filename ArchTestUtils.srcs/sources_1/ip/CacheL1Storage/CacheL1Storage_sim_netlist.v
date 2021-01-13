// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec  8 15:33:39 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top CacheL1Storage -prefix
//               CacheL1Storage_ CacheL1Storage_sim_netlist.v
// Design      : CacheL1Storage
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CacheL1Storage,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module CacheL1Storage
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
  CacheL1Storage_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
9yQPwp1/Ij0u65rh
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
