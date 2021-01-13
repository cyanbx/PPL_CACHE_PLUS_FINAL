// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec 23 16:24:51 2020
// Host        : DESKTOP-5S9G7N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Cyanbox/curriculum/arch/RISC-V_lab/PPL_CACHE/ArchTestUtils.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45936)
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
