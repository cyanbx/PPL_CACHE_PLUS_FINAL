// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 12 10:59:20 2020
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46048)
`pragma protect data_block
rw27fc53RNsoni1Q6IgGP29AaYqwf0Y6LTZ+ImOkAr9D+fRRdjeMS441PnbwwVyTHlNijo10yAui
xnsISgS0rxXkc0u4jjUmJ2YveMHTm2V/gcbay/+uNelroOpLV1EW229vKZ25PcR80nFRmqCv5GeX
ZAgVehqD8sP5uYSEWACnFo9FJLe5AjIS0+Bf80g+uhZOdalTm2pdf2nDbYmldSIk3JvvYYoChka9
g0Ug5o6RPGazd56f4DWOslJaY+vfw9PuKb8STKM2tbQU6y3fAAmTXmEdbl3WIa+MoiqSk+kapou5
fawcvRO16rxq2V1fwH7prWaD4ACfyLNBksgQvYTc8dKLofOCnpOdYayASL58WuHlQa46orl5rgLd
Fhffy6lPnm6/JAgJKjBak11HsdMFhTooq8FhCNv64IhQeR5s+imfBEWxIXImVHhbcJq7PT17OKFx
xMaxXcRrygAaCjgl9oV0w4yHS+2FSuYaHp0NNBNa9GGCRPpz873b41nPJ0iDlzn/xGOyenMhcw1y
6JVIuNOnv9mR3ttie6jYxczNyh+fd2ImlUKK9JzCYdATqk0JfZiukkUY3xXgKtfk/w+nV5dUHRG/
6jSSkIgtFJIbTfJMR85lHji3ce1Iu87uz8cNv4Y1WWp/AUI5K07N+OgBGFfMKT3jOWNUmsoRRgSA
1onTTW9or4b0pw+IagCjFPtgEms4gbk/Xe1x+1MQv0WQ9FPAhMGuCpWayE5sfMKAexsN2gPJsY2D
iUwHkkc1NwueiwpfSigE5htPVSQ0L08yJolgAwmoyIxkVImc2x+KAzgMGYV8eUTZBj0K6dGUDg40
OH2cnEn4WG351/9GSs7KfXteHAFqGCAhk5Dh8GZBIeoP9314mGoCireYmpQDT4OZ3HxrSFmERycI
vnVVsaoore5kb8U8AXMTzMdMLDYARq4m9PdiP1K08ZEYtpTD0Zg2hnpqXPMQdIlB4YtV5ya8iipr
cjL8cZwQFzHPka8A++bwki52w1wCgfPNJJo3CveOGlI+0WTIkrLDQ1Sb4kvKAFbvuKCmU3e0jSkN
rHuXnaamCG3q6ISc9ExxbEhWow9z3s8TSnPQfZFItF0n/Lf/oSmaA4JqVXm5HQbtjxjGidEp55VK
dxXrDVJpw2LtwKMsZAARhq0TJ8F7k5ZpRl6mCFNaclh+tHOk6/23SYFD/X/wepRidAWrOOrb95W+
YUx5i+I587BT6PVwtayBHgaNN+Tf2EIN6lVuKkpYT7rDT9omZK2ku839XJTdONqZ+r+snsF+b88v
1gOf/Xk/e0Di+dXHGn2CvNTGE7bLgN3C6JAJGFSjKJU76LV55rYMx7W8gO1Tq+274SvbboFPXZn8
xQmwCHEen6pvKYCw3KXERGvsmp8j15PQZN3p2occjgFm/e1SZ1J3XlOUHkjh1xuJGD5mqJHRyIyv
hZM0ZJ3jzsiM8DVw7YeZCeqY09fjNhItxfshlipeaTTn3nAXpz/YB23vT2pud8kCfIIvOBxaXnkx
2MbOO1ReX8cJ+eIJ0HaNUOlKOzUkWuUwX6Ihr6mEUSlaIw/b4QnkN2H4tJUKCnXyc+ywgwwDHdfz
rlJB0r9ei/DliPnpLvrvZsFRrtp3kWhtYraUgvo/EXUzs4K7eNvwUolXkCSe9OtyrjlEFQiPn8YE
9IPhIwlYb9KRlkAQ01MySB4miUW5hhbiVbRy5teslW1oHqiiYRV7tHS8D/9VJfs+Q9iJ+9b7EyHG
fCeN5RBGYSqtLLFPYmLTiuc/WPwsQFhZT6USjq2e+142Ew5a5fcHprt/K//4j1ZY3OhWJQUF5Wl/
EhmyNYzysQjLIyfOB0DXZco/cAMtfcIgp79Eg29F4uNulAa94O71WAxabbewHBRw3YKgpAE0MK+K
pfm7pYcFWtI69N7qgBNmDF2vZta3gD8qm2MbjdlcZi4Ne94/wkODlPv6C3OqkzVa7Lgrarz5+zlv
MUtAgS1Z0SLNuIqdgbvDy+lcJHUQMchYgL2qOiCIEHuHQvZ9nczkR+d9IMfAZJ1cpuCo7xs9Z/gt
QBKyLZ5RQO0Pr0S3t6Mm4BzbkhonarAMSJkaRXCvHIGD52pwCN7ZNUMOZVl5un6OgQCZWhOu25wi
IK7nbJDpYn6zTlGfd0lJvCnqx4+gUs7laYzTeKevWrxvyVYY+y9YE+6DQKNLVj5IJ4ml43wR5WxE
Z8J110GH7FjbgQ/LN5yBWYrTwqiab1EKaBd2tc8wS6/68/VKuUs619yWWf/2iADM5Mtj9LOFhQlo
Ba+JIJVbVC678F3OifG9NvkY0SkfN7R6zCWKy9/nSsXjC9meV4I7zNKcGL4FjERA0ZlJmOrRuOdO
d0hH8ugQJcfkPCiJrzbIYZ9hWKHIbhg0hbGiu4VEVPKkAZ1hLsraYbYDkeBIqtavFFVUXtJmpMkq
Wfuv/SS32jhOqwJYOLfBJpc+fOoJ2U7P4OtEKY24V3TRPlf3ZNS0u5Cmi4oQcScJBWi3yrEBraYC
cs8dNn6mLcXcG+0yShmdfYlByrjUie+/hPRWrUibTML+BsIVUqH8YHUKMO8e+moiabLC+GE63K7V
yVVy3gzcB0/kK1UV4Bf98OUPM+dSIRH2awnhGq1f2kMO3z58UlLcMT52RWIDSylRnM1ARw5RW25w
YIu6uVbum/7OZaWpObIXzjS9AKiv50x3LblCluJXkXXMmK4prwVCPc1Pu/KpJHDQ+a91RCnQdY8f
jDd/5PGLAOLu1xRSwh+iEwI3f8Hb4yj1Tbi/T5M8flkEmDLDGq3PvhQFdJHDwo8AyVkXiSE3/ELG
X79sXD1qkuu+1FXNQ0jXLSVB/oaXULz6795DMstZy6/IU6Z+pYQmIaKOLtlEO0hOdpSzKJZowMqF
gu4+IiAxD4H1CjylkPWWltG/0vgk9bqrVkQvXRQusfKdR1I6vECMFp+zAhZmSja4DdaLfjx++GuW
ybWViXEvkq2klUaQHkEgWaxERHtDTW7Fr4y8PrSiPBJq/1Xtb5xoW4TjJlhLUOs/A/tW/O5sqBMe
WUxjRPxNJen4C3F56zoJW+UyZiHbj6z+mMoESpXYm8+r9JCiccllQlvv1v3yvb9F9cvNjAdDJC5t
pK4YyhVulR6XrFlUilzdCZdGj3L0VHd5BVnUl4vBc5ivShttzBC7t4ELCKqHwyf1RovDPJW78cQT
PtySvI8grD71p/SZvUACtgzq9pAjrOGA7S/g/rMWNQFd/9X8agN2OFz5FOOFKY+12V33T8bHgF1Q
2uyG51zshPwXB7bUmy0S5hnCujDUcI9D5bHjZye7HyJgCDw8xyt+37qanyf+iAAUZdnrPoYstLV8
h9+NYShs0jYKJ/YZsxb+ZSfeI6xRqpQMewYjcWdvia1uB8b03+7LT8lw1d5cXOlIlw8bB1quZHHN
BatPJK/syPI5TWJgJqmKMoersejofZ3qb1vjnnfAYl+npsaz/R0e2sUBQgMSS4tnP/1XXfieBG5B
TK2pU9rLGyPFhoxDhajvWdjgl4Pd/PJhzf9axLsbisPsDeqGPfyNwwPqwnpbDyxHx5zRL9boo3wg
Cm2fdTtNho2+ikXgGoQIoiZlkVMZgEu2PZz466qRHGF6EZrd5/mnc24fJ7WYxYBJ1BiWb14COPpR
i3GyoB8tk0DK404XY0ydgSEyE9DapVjbAjMyZtp+OJzGTm9ng25Hi7fy7FfZlF60lG0sP9Qsa14X
93D6vz8j2ewM3D5J/NGv4i5E7RhvussER4WRVFOOMKePzQR1D020BUTARcnqgiuhaQATaHhW6hrx
Qnd/YoZNOwaz5ahwMqrRiNh7T7c+XshFEAKfr5ky+AKK9YlJOLpCHVOHFdLjHEjoMaGW+wrGbTVP
4l9Hng3vzobDKAS+3mj38+khnN1q0L46HqjWCyg7bzAhp1ufL+l03z6fBnp4BG7mt4xrgwCTpBBc
GfOXMMzxIWmELK8aawk9Lx/24Dc+hmE43y4cYj43vxZ0fYQs5PRDgJwZEYKizegzy0utfSMCik2L
Fri2tzsvnIsSRDh2F3bc4gTCnswdw6QLc98gVo8lcNuTya/9aX0UEFD5G4m/UsE2d8iY4oX0Y3vy
Vyy80y08+0NOZt3O8vXMePZ67eDyPmq5Q1d4LAy5+BBTgLScjKXDpem8QoBnI30NESxW0xN57Nco
IUVVMiEYzi+lznl5lpiCwuGBkS8oIoKJD3HOugSnLkfpgaNSdnewP3W4s+lwPWoVtfZ1zeilWXUJ
a7bcPsE4U+SNvLtdwZHIshkBYtnJo2X3u09rWXq6WFUsiOedQDS37wGmxIwyvaY+L4J8hyTrSSlh
WrkFDIuDnh4+jv8f3JO/acrohAouYHhlpauRqETX0kAynYThmqqp6MDMAUxDIqe7WScwKUU8Fa+p
wKIZpk6QdWLp/O9fvhw7MqDnWfWaLvb537RrQxyxXSRqmGNOLnWCvL74mypwKOQ5dVktxFZHZr+S
uMAm8XVAvjvAarlxdKBL3WgPZ72xbMwIriHRa+0WTBeGTP7BcSDLa3p9itnLI0m5FtKqQ8K4dYxH
DTQ8+t2lmAvL1mRnP2MVhI4LgoO4pr55hqUFU7tf4Vhr+Cm1hdOlLus/mliI7BsAGr6P4tBoW4Xr
YfhxiMI+ABPE+VmJjbepUUCw5jqW8/lCMufLXf59+DwSLn/zpQPymlovhVGt+XD7qpNqKHqOl0I6
6vknZcezbZ7g+XFO+EvDfYVHvFGUibH2nlMGxdVxl5QHD8lLThp+zi/caWt4iHA0Am/CD04Ofk5c
RoV38eoGsCHaIrBK+3NMXMKrad3TiDh7Fpsnq4zk7HSiCSNIo5pqAlm7EXQYzZHVuBjTHywGId7f
wZna8m/tAq7zSUt0lHEkgl1nBGqbEfNCagZ64nV/6clNsqTA9Seg5jq0PrRGZztVEp3Qghwddy02
+kALr0sHQrvLD/D/GwzQ5BS5a1xGN5USCYki4DInejH1Thj0q9uNGMpxl8aYzrg30ztQCaNsKN2H
TUAyeOHQE/BU16MJqoGBic1lv9iHmhCQAsz4al9UWP+8/prz+vSdTJwU2MBsHKLLqm4ie9IsEXDz
Qe3EOsEeuca5DAJYBfvD3G+dc0KFuqM1/Pbv1Vml06SNbKiYjXb/xRbu+jh5huPe4oxcK/cqGFBD
XB/7/GDvP2FiRHK4I4kVJRN+mhAD9aOPmPUygqcq/+LzHdB8TXEO+wTNnPfVFFnpkIYqhYRTMvpb
XM1XsPyHloFV15enNhfVf79wingKMJe0T+kXi80U//MelSbCLK/hI4OEd8mpUVYuwcuZxDaHoDV3
dAJFte+elTkbyeCY9OtoOEzBjq4pluSdSsBzMkvelHPgIHctrdPI9itqeQ8ZLFOazr0/cGYu8iP8
mGcXMxs8QCP91hEPD/2r3IQKwxGpWurGkEM+ERBfMzPUubM+ARvRqtN0IQa17p43YuVeDQgGPMso
eb8UhS/ZjdL31DDT8BQoqnWiXA005xMH0HU0C+QQ7gt9QsK/dKOy3ToQsvbEdht0LsOkt6Vdc8Cw
zKQr4FI9Cw6nFpX6jU0cZzVhTU0uw7fG+Qfg5b8ipwu/CN7LUuNNWm84cVdBoqjqSG7wFloCbWzx
J9XeT3AfKWjboZCX4Cwdc7kr4nCpjpdrGT6zZOTGp6NdOzrdrgNdT1dqUxdiH4Yfqz1bfzTpdrfn
zL6XIJwxfNTeYgNnbjeQcX0LQNIquFywCULXQPX0RnmAeAx7eYSMNSJZkFwINB974cGjkhZJr1y0
DVA5gFyrxMQKyCpyynp57gBBJ+iyVgDz0hVtC9bPd6eg3U3OJ3f2dWt0D8fD4iMiZDqjvgOSLHgh
i7w62Yh4QEOh+QTTCQV/rb5w+iUWcypqza6JrpOW8hL5RBB1kPZTPgHJS3j0oSD8ZptRehTFoBua
4xkjWZxh+f2qt/Lv5HLHtfgzuknoxmg01DnHNqD+SXdgmPEEDUnWR64vJXEgu5leDbwR0dqgmrRT
J0+utEdWSwNZ3oCBHK8NFOxCEM6sNozdf/NbJ0QfV0lCX3gwtnPccvc0/uIREsnV2hA3vkdBbRc6
qjiODCqBmYV6d5LGbOrhB5TBdk7t+qfWfS96y9uBijxyduWCgJLlXYxJB+Ds3F/9rexe6MaHsYE8
uwPIpzfZrORSW/w5NCeM8EzUp3MPdxuXQ7Bjv++MMaVGp9b0cJLL1i1CfMu7PPsGvkHCPnnaLWIL
EYEmfjvuLgoJMdxHmp2MtdTUErcHbq893AJ9glTLyJhxMKxqbtX61HJ8UM+lm5BIw+X9PaZ/kGHB
9VJLqac602ZxDpche1jOXCycl7rt22V+QLhHqk4v3h5S/DCO7LYm0uiipsrnine8TFJsYQH0JrVr
NEeQ/WCTZWDhxthJYSWww2tvCLiT3C/5Wfil3NncfG1S7LphPd50Op/bt6Pn8TQIFyXCFqwDfAfl
yd3VJk6XxHEUnfk9oKB2IIsttH52ttf30o8bdcxBuVLum0AomwZEeeVNDxqYRX3hkI2cTIsfHlhu
NgTa4YK74vzJMvDJk+3zXcxI+DtACqJFrDvufiRCbIQ9N3A4NV2kwO8jvp0RulImVM1rffOuG6Bw
hCSlxFnnwgC7y3f5Cjea7QZTEfDPOdzlS+e3YCSC6/dtrcEe0rhZaKsassBm+0E3eof+cQVQEJUk
d/wxvtR019A3ooFPgUa5zyeyq0ngf2v7fzK2A8SUH2PC8xFnbbBFXmUuv/QUdkz5BrfkogAnSz4t
awyx4kPLohQnf9QMhuvlLfzTZYUIT/m787XkA27c48t85qgxHYHvUc9/tMOMSUJXLw8MhmgHq/bp
hRxlXOedXMvkoRBT6o8VxVThNa4MVRUTtVT5sZXNXzQeqKvI/3ofcXJM/iPbeJ+EqhCHKgxezTME
EMs2JhiPzp1r1/ROsogMyDxntQxs2eoKI1TwLXPDrpWRW7c9hceH4I7O/6481a3VIiD3gf/YrZby
AW6sOFeCwEQeLg7OJ1qe2I5gID+ijsXqmlCrXFUOG7xRYkPStbU7dV7EMFC0KGmVYWVgIkARol0G
AFcr3bI3A6ulpNf2BaXvOY9gHg0JJoNfU4+I3X+ID7xZuFqwDMssxKQlgq2qluKqfqw1CPUbqnLu
phgJ2m1gsSb+JMV0DAiVz1l9EQ9ilf6TNLqXlUBlY6L+9YjYTdWYv2rBq6/cEQ71ccU8HD3f3CWl
5lMY4nW5+PxN8CvHih50/vFXcHx4pTnAArV3tNGzBLQKeh58WiUcy6w5YE4Csk7LcJF8zPGbopYU
rhEK9jXb3EvgxIHr8clcPZsyRLlCxec/KvipsTrPxzNBbM/IgI0KSrIXl6hiRT7xyI9XYk+VRkUK
BiyG0xyY4QOW/RF9UaoeHW5FgbSBUqlmh1A8QMAnODzdy+ALCRoQYoCR2WWmIW46ACnDg0Hc5UE+
9bWoPO2Tae1iuzgl3QFN7ixzhdU31bgl61VnOz9/jKFmInbfcPCnTULLuyzJQaYljYGYyXBrtCL9
6FYdXA0dDa28xQYRkQ607UNU+A1BT6PN2JognmITfSBkEMgQSmArQ221tJwxBRMdNT0tlSUGFAez
A/vy0J2vuszrU/GShFzBM4exi6cUrKDu5qoSaASQC9Tswg/yUfbkmaRJqWUcm7wXcZU1em6dXKzY
kkELEnDzaXFtMQdFVfhttNaIRW+ZkgXkfiU44q9lspm5DfIpOUMQO8vABaR/c9cyu+zgJOkUBnXn
pyrzuhKUmnSCpgd65zCoDe+/N2Zrhq6g6NqcdqSin4GHPkRUyYkPkiZnH69g8TqvfwynSDcOVwBs
C6I8AsUAeem1qCQyJzLLkW4EHXaxhZsLMgM7f5ApdP3vOTaotbsRQLmfXURyk1Ka7Kgm+34+GB3B
G2N4fLyTfJouDcYN3puHVP/9/9e0Ke8dG9tbNtI2w2BKV6kdCAccxW2AhLtMOv6tRblD4krpcDGT
yxAPGyC7+EjMAauZz3IHo6zY092hinqw1Ue41K7EowwoFkbkbbGE2NNfOpo/tzj/tSGWBfUMsChV
M5onUO9bhQuAo8kr7xsmpo5uLZENIzOzJz3s2JWGqKT0jtmAoCgpyPW3Yr+DqCv54Nqo1m47QSsy
sDPESj4zWX9E764O4uYP/glgYjJSvBJJWKNZmny7GG/lNU2rh032TmFqUwWKDcv6BQGMJJSKd8es
oFWbIiYCMeO2EZVzF0lOoG7RTmVgXC6bQNbNLj+WuRcllLJARk4Z7R5TURsMHvW6wwZXhMcHL1MT
JLuOmTWXb2gae+LPQUo170b4WTWc9mrfAGWk6rj5/nLMEZSpi1qy4kgkYELDjft2i6dkR+zEXlfQ
aTbeUn3e4xMnZARSTVaJT4SVDTglmEM2G7qxWfdUtdPZmLdE9+MYLpYcaufGKaKXQ61Qj456pR6E
sWAfnyePzt7ILfd8H2juVTWZxZ8FzJUoKZ0hiO9sHSgYmI3cR6/oqLiM0VnB2g3ERxmUYZHq3RwN
LzKM6WM7aa+ZiXCsvSNan5nL1UDtmgUeOQRp82tdPc16snOGJpuNx4jGK6mNLWCz/c4WkS62amUT
MLFwAHaFkaT/c0KE31mvWDEgsVJ7J+TOvaUmjDP/0Nuv5hQ6de7JHPqM4Nmboguq8LDZNCOynaTG
RIdXA1KZH+zJGrJkWXRkM4iOCVC4dE+mo/a9GjZwXywIPaPIJwu3mz8AQQY90MtmFxLLDp0gdIe/
FnQ58Pw8DsXRSTN2p+jat3+bJikF2nr0m9PmcPJvsUPOQk/HN4zQSt6FsD42XIJYl5hn9j0f8JBz
rHHtTB++1iMkbdDeI9k8eqFwmtta6p1lCyrXh4I87D1sK230EYendKFBbj51nZocZ9aR57nUfFLs
f6YqXv1VfebBy+dIvhE2dH6ZdDAmqyKbKonZ62ms3zsJiFQQsZGqqt7stBpHWBDu8YcWwluuPw7o
/szUvSMtEzdZvF6v03l71qyAj7wDut+c/kDjRHDLhXccPwgFCcwicIIFhQEe6kM5vmGr/UItsW3p
fTSNeohMzKGxetJTdJKqm7F04mjK6qBWaKdq4qncCvCohPsv16Q1FJDIgRzZoSFOSmiso7HQfVhI
sfKLs2V/bVMzn6IJcEadREmh8MP0OmdJwfpZ6+X9Q11iuTamL8xmu4+2kiLgXs8ruDcTUd652Rqn
NkitmPFzFfhHz/ZHXQBoRP1gV+j2a5/E599D0JlF4lgHDuYFeLwtqSiCChdLL1q1gBok3wus/E0w
ABcC2JF1Kz7H69TvHXH0to2BhAAcl3uf1RGAut51MheS7e7ROHeFKACA+9qX3zQGepKfL9q2cFiI
OHndmPCAckXfBu3xREuNIJKBQ8PLJ6eCNvCXn3ce4seQnR3wbQUarS9GsM8frsDr8gpnjq1ODgxp
9eiHpSlzGlnHlPY4KPMcJr8xrlC3T6PSMqH4dbLclYp+rTEraD3TA8iJOdSFijHWxHtzqFc+I5RO
EgB9p2M+vxEVMtD6NlwCRxZ5Ar/SGcFjue5YVezWxehhOY1crcYX0Y03GmhTbyq2/oPY98m3h3sO
dWxXw6a7/1PxZXJU6WyaHNob0riTW0XqHDh9W4z5lBzP6MGvJ/PC8iJVy9nZ1y1pEmHsiW/iuQL0
gyQNGA6x8O0g7162XQ+zoxLaDYKDLF9Xp4J4TbrR6RoOfysAcFqy0ilnH0OV+bJRAD+EwDgAsThi
XApPHoWzwSxhjuwThENdtZIWslrHPqINR8LMqv7B3ZNJIw0DAWjEKqItbxzlp0m74kjrKbyUV/jJ
yq/JcGAB4rJRH3GPoxhe3z95asrLLM654BLnKq5xgVs4WLBkDPj18UOVCMJ7wMTxVO60wkSIDuT0
LBKprtqM+FiPBBwvv6sY1YA+q0VP24A13bZHy8rdfEXuMj2UD1uw/b4GQEBCPRJgA0qYFo9EEOTA
JYY1R+lTJ6tupKI2saoS3a8FxcnikLbkn5GBYWD7VfealKeRk4kFctPec59aZoQ51xa41pGXYBzB
63OlXxvKF+TX8j5EQM/uO4n9v6sK0EfnHTzjjyHIosK3ltd8XInHpXbzaJbl9SuYn642A8vA6Qdd
frEkVHoi52PepfJiM2BjvS16ALGqTDPM67pzkEsei1tYGCBTmfph6LmmceEY4PVEL/abD5ZD6Vc9
W/gZwG+xbI+CxBa1ThbgHRtMCbYk1dBzDXqus+Sskn3Y0uUmGmMv3y3bScqFOkZQS7kVsvnQPkYq
lrcnKpFHIJHFWRrapZUHWKDmX0LyyCbItM3EAtsUZP/YH3MagkPtzARD1dvYk8z6FM29IVb4VWcM
RQ+9RbArY5Qc0s9JWpblbk66WWrHDqinu2P0qbVMDUcNnAj77Mhbnr8/ViroC7ifukg21041BDm8
0BDNc4HQ0uPUttkP/NFw+/Bp15qzMRo/qItMf4uQxq4PWh69RWfL/ZolH7CPFSfNfg5LmAYpT+Mx
2yNdMElpqkGh2lM7PTw1XHnyPioUcZg5o6M9Md0m1BxBq7zPmELggKe2Cm2iaUzt8yFinb7a24Fm
0kdmimOhlxATnrca/rCSgsBHRK9qYE8MghqP3xafXglze5f9h+dhJQ0aZSr0tJigH9iy3burJ6pP
sWMLmJQR3uLMhvkGbn036eWiNSA8Fn5DkST94tIYUwh0P8/TVzKHLoq01hYlGr4nvUzdSvaFPJgF
6LNEgXXodJ83A7Y5eIPt+sAKusoucBf1TlYBXPusEUKaDIYE4csiWQCcIJ6+uJU8Pb8AT3vapLaY
LvR0biBkugWxorQHapvUzZnRBoRUjp4RkAaBkgyz/pF9l8xJ+1jItU+zq0zDueEo1cXbiAsZdXaK
EpDh4j66e19cuDFO3PGCYjX5QDsylec+tK9vJKpBaqrRts3FAAWUts4fWEQ3baPJSr6QX3SFZbeU
WJBKufKOf0TrsgxYOAKiLaLKqi414dB5wfjx+Nsr/XCuechqkgtr5fI2L3rXlPiv2Xs+qDtoEy/O
M3bKmoXFVtMnFPNm3XGhYVjpDqCVrOkAuvPau0HPottKIr5qqU29Y9d/78W+m60ZgMU++mSRZmw2
o4DchfenDWz1DJxeKXmsD5oZQMpJ1/zjQgMqWlQeP6X9yDgyW818YNwd3lU2/YjiS16/6KsqZm/x
UcFdFCCN58bAorZKHaBQKEXZUttYFKf2iMLGWl+ZM/qCJEdR+KvspJIK8q/6plGV5LEJd20JPKAc
AnxLSEwOsK9NI5qEaK1WlKkTmtr462Dda+JSVMqHibX4l1dn2w68ap2A71i7HlcVh0ylQ27+e5WS
RmN2Ac/ijss5FDe3GPhmK+bdO+4ysXW9B+CZcuG7f8WLz1I8kRqGWqtygJQBQHFSGMynErIFJR8a
gKFvWWJfbI9ikzxWKlYX5tC1sTtfL/hKVnco84UQRfCGIG7mFhYJ8YGbZ84riUgSVVwDOkfvcVR8
jUtjfE88tNLYyktfdSs7fuOLc4gkNuo/VJj0iXhcLwNTchDKdbunVpCTzPvV+yENdodePmy67OQY
d3ku4oVva0ZSBEjuGhMp0V6YGjb9EgIUehe7tGLJZRsz1iEfc2sbGwrTzn60yagL09ZitIFJ9K8H
p8vJfinIjQNiMM8kXxhmT8eRUAlA0CLmbzvWGgioD7VSkzFHo/fj/wsXoaSfYmxnIGYkfkEbyxdq
WcnZAxB4S4fTQe0XEevmkmHdh9c32hBOSsevf+lhae/3MRKpZgXhhFM2+sDWqUHpykJv92LOZGkp
AhoeCzxPv1myfzhdvi1QjRtjLFfljy14OKINTVXQiIj6WtW5xp8bQRNbaKVR1DWbnbqlDsman4Fh
Lq8uJt/90yymiQKkOkRcOAsce37k/YAW7Ej4aEQ7Eam+qz1M1GMAxQ+/MFPZBlTisUbFCCn6ppVb
f2+PK4yryAPfOMlfNHDEHgXMgZEclhs9WZZzO4szZ4IFkiuHLMiiI4xRoJuMmjgGXvhJLltefZWw
yjonfmUXFeB8EjJWuY1cdy2YSdBm7SxZN3HRBcQWboTHoq2hYn3iDjwr+O3L5Nh6CXmz5Jh29fWY
NA2VhCx3I7Hik4tRPVqpjaWOUubf+kaCX9LfkaB/1OJpaBgHMb8FK/3XbxkHInVE0KkXAzEA0Uj0
d1zsWsr/g2TevpdAWJfT8/8kca0lfY/a2tf1VOw8/9nVRV8ahiLQnWatj2I52mDa0siC6LDJF6jK
ggAPcMh698cVOq6dWZYZteWhGr4VHyuKZW8mXX4PwetCiWoZAhG0oDJigwCg/Cg5d2b/mCrYnP6F
2FyRrAL51jfIxQLJ4Dqhsk2xV5s0JVxt25P0g0euaWSsylFrjpX90vU6v8KxsEmgm5tM+HJqSrTe
tl9WjLYPALZpNYrb6htig/viZdWmVAUenPeBBiJNd6Y0PJILNRFZo+U+tBzD3wducY8i0TypPJ/t
uACvcaDWvDjwdLypIsQXtuHVCYeQUVdpYS5IRXbTb3pPLZsF1dAHMXPxYSfOvwOUIXnGht0hGFGx
5zacgq8qZN5nT7JKfbOGWDJtif3XA6lJWfKhBJftww5Fjsnj22/B/pLOFnFI3Mhi1y+n7mjaRtSJ
yRkHQkGC5/bRQ0Sdpug88Sg/U4ECPdupcCBQtN//AzTBJEGjh8Vh2ZEteoSK8vhNPAJH4Hpsg3xn
1kBR94OGlbOm2a9Jsdo7o1baq9xvooBKoOqdKM4fBODOg8i8F82VS/fl6H9juRfZb2sEzHz7nHhG
uNuUK09SCFnPo2mJFjdo/SBQJNR9U441YPtt+EJmPRJf040hCv1VxAvvCjAkttCea5oRaO0AtZCU
EoDRymJnBN/aOhXwjQMNyD1xA1KsFh4Fr6g3vOzqT7XWvJXlOQk8GQgTxxFLHDs1jHmDSamO52UD
UudwXW++S26SsnvssStlO6mRmdWqNFQsdxnNW3leBNA6K5sHT6wQEUA6H5DhAjSRkVAo4qhI0qRC
jQP52GI9OQBrFEcW15QimCMHkdsWb8L8MBJG/8mba7vsNBMiXg+htfbkwW0m9k+oYOM9lMIrG4op
OlWsQFYCWanYGLvc2LDZlLJY40R9bErVMjtf5GDmPPP1paFmGfezpXX55cvfb3Htxf3yexA/VpaJ
Dca51ePeTo5q0v2Ptz7asr3Zzwyx5h0Lg97UWfZo08JO0Oh3POJV6Q1R5nE1W6bJW1/LBU2v5x6P
PLnmpipU2ae2QK7yUOUkOUUjUMmc7p1iv8gQER8OmUvQBLPAgSEYrhOZAen3bzXFRy5pOhKM0t3f
b4lIkfQxKLYTXSmKmKOWem7rJkFmkx+RpIsnkd0bpnluvtVZnG2kkqJ5YhNZqwGx27oD0y0Kl5p+
NTdFlhRZZCYU5+iovHmF6oxxe9H0S8om4nikR8CbaaWwA65cvTX0cjcF0EHSxy+TcAKxUV8idLvQ
zGBxUnJ8l1tJ6FmGKxjicg98FDxM+tO5eyjkn40CVXh89LFBTrftUIZ5joQ03lTL1q5QVrUK8sch
FikB/V43LkapAZC7X2mCgmm+YPqOFnlk5UW+ls/w0pXVwwxx5l7+y3lH500rzBcqYrXRoPHovEdp
ynZiJtNCWBBBGVrYCcNMHYNW0R9zZBTTeHBnfoe+HXGgyyeJPbR+1XFVXVEIB5SkiAqJaBxzO5jI
22I/qR6n0CzN6aoa2JVsF0oVyVnNB9puDmPjyZmaXX8VrjcF/CfW+xPiK5dSkXdxfEkxVpV/77Aa
8Dy3MPafIR/WmlXJzJkcQw9rR7wNv1dkpkfeQLZg+D2a9YL93NK5DSstIG/ciHQSMojRU7NBiLfx
8jCUrVtu501wV17q8cZrOyAstUNYt03/l3ns7VrM9VVj+Apj8JoO0CqQpoD5sjA3YWcnKMVIkzst
ACQ5PWXVFp26Rpze10o88iZoUjvrE9y+WrfHIXPUNcGCrEMU1HCDcbjyI+PJyrSmyf0J4cjvn6pU
aOBcX+Uy4v4Xef5n33SGQY0+LNyunkratdhfiOQnvfQsvmtjnr5DS0LmjLQI3GTG9mjpumGytL4T
yDX13hh13slKOTP/rTiKzQYWbQmqOKOTZuVwyccos8JCAeKQgx48/vd5u4BH3ln9zq/32RRsNbN2
AvLdole1b8WmkwVuPChRFCN0/KpSKHG/HdTVbybC2N0KRk1SnEmg43B0ldXRtK8fxis9tO7HBrQ3
wVshDLE/gfbKQ5aYGGt43VFyw8CfeQlW5XlbRQ79px5mVsEyPNhFf8XkQh8+s5X0ODm7OfW6q+Yh
8778YevUXrpbXacjTzBAn0+SgooAJZoxtKnypZRU9FJrluCfo+6fYGFN8it118TW3r4Kjgo2oZXm
DOjZHRJAd7K+Qp2t3GvOAjFfMrE6n4jhIM4Aa/IHkNTByv555UMBtDUHAbHgmW6GZdnr90o3kKp/
mB9eNifoFpsn422T/+2iwF04K5nOlPi//cZv+vPPUNEg/RHTnaUvPVZN9+O05QW647yH6YrNBBUT
TtR5JBI9Ns1U4K/zWtJnD9uDEnrW1Nsie48F0Eb2YUTmPZvJ+NUL8fSUi9N5x+WMcBgq0qF4AY6c
o+/Ask4tTOmXhRx91pgo1msWQ8qpFuT6TIWWAaSx1jtAIjnVzOSLBo5WffPL3URFUvLnytOhmtsY
C6wwordxP2QBB8q6NxGoh+c1sSxO4AB3cBX2KhX77PbbZu71/W31S4Q83pS1mS9kuSHOjepUOWSd
aKjLz1ECIhtPABmlomP4h870bnf4hEhKhZiH8A22Khfg9rzoY5PWXUYZlvJ5++mrw753ckWcUeXR
Or3279genQTchUDORjl83MjVndz3+/BGgMQDTWCVBdIa9y1KN0gz/gU1MQPoh1LID9cJUp3dB8qL
j3tLR6AnLZaWOV6WQgpqbD/ZHJQ589A5S3Ev7v0Uey+SDcMQqYro03picKUyPEmGhOfpKQCwe0sd
NC6GP4Q65jBZ01HkWRDCw4r3eIzSSXOnsPDC2TRFP/UWtp5sTbSQtX0l/OscIcaqWKBVAN0jeEPr
kiBjEcWu0anMFMUNgCxWYJyHbvXcAo3CdRRBAOZIGm6z8/hhxpc+IZ5FiRfG7qayD+YgKnEy41O3
a+Kb84raTGCM++BhD30vlS3AzSGX3rSQwIvAH4IPJpOvP63NVGaVspNlzre1ZHfnQTVUqbLTU/JC
TP0KDapCQA8MkQqiEmiNrB+qjcwWNFvK2oKeZJ4rePbiBVENzqHvETlEqU4JpGfzt6Zmpih7W4kt
95UDy/7HBja29p/axEIU4UozPGSI8W3Q7mIDOZgDpHHE0jITBDFWiBVaFKRl4MOWgEDmMppUebkG
hQFF+mfz2KfYqrIsBVv2SOFXJkWMz0VjpQJqeQJnsS6rAaFNxjm7TPFUE1qG2yc/3qDVP+1bajDy
eHlr1HV71WSxq//tJvFiAJqIuZaSK3GeYRqhvIGFpxBQ2io3dY1VSIy23Sl+Spwxj2CuM/UWjQ1+
Wb33+/qidqDGn5zxof4kVjvsIMYxllREhu5GUkv4XUOSRD7aAy7xjzTOThXgDwlhUm2J2FXBpqn3
v2uQXd20ReQQwByLE3NwpoB7yp99seiijIiRgLb+j0nuF/emqooPZTdQgK5viPHCxCutAK/MXWqB
3j1aBp+NTxXcH+aJTbanqBiXF+HfM6LztRjCJvDat0b8japihTHXyuSq+tF234LsWf8cld6dEuV5
u43KUVRtkuLWU2wwKaVmGqrbzdS+X4OHJOhRWTc+RwotIIidxUq5DXLFQHmztFJGouH4bJsO9XlO
w66QdJEAsfpSiRfeS7dC3lbngLkjvXFmzmAORJqJRlG4r7E/ArDVTc3LMsgV/9H9t/FIUPelWO7g
K5luiiYEy2dWcZOAfeJWiNbrW7BJiHuJ/Yj0b8g3Whsate1MRs6q5mTE11MyqabUJzAzPbVLvzHN
9Z/NQBDWqar3wbmjaSiMWWIW7uz5sDZXwiArGmaLxKkmpnnNafJCiS4C0hfMEbOAfk57k2x4apmK
dSgxEt4D/dIGh90N72SmPteAs4qpdbyWuXwdEirrLoGJDRd3JGM+3iXElVexCh3VCZ+60MM/eJbK
vffUKutsWTsLax+SqIaKIRVU8AJ1ELolx3d01QJc9hzyqgyVaWDvOP+PvNH+IJhhLvm2RVsW8ERd
U1Q5KASuvkbtDJTm2C5bpk5xeUM5+KFN2YiiETzcpPey6ZmodaSGfHYBenEoPfWMKLMssUzsM7oj
R4jbpd90lRBvcauBh+H9Z8RxUTI70kvC8qVPGUng0VnMiYNsOeTYyqZYFyAkF21NUJUKJUnHOfyk
RKKfeM9ClAxHJ3YoHh8deY0nIHoQZZGJxhvrh3DIQ8R5wgQTfD4qObzOhpvb0GUgzyVhEtBNITu/
8XoSbKSCpgx8SgqxCDV8vw4Vt1ZHy42eysDl4TuxpVAhcdaBNIcH059WxWQa1Rl3BpDYmCq94vM2
MkBqZQfXlTa7ByMjw3Hv5LYPPbNAdBFbpJI7J8FlG5q1YStxZNPrhgpq6LBcCVSbNK5E8R/cxrXY
hTgqukzdSUJIYyT2D01CLyC5+lElCFTthrPjia1ouepTcr04ieLZ9jIxw/eXSeQiWVXeuqWyF1Kj
piOrlQG82uMdFN/fTcpZAZSkfuwZHpa6YvQWDqNaKsdAc4Vr+d8snC6avFfdSVX/VhaKPkUhzpMw
eWhHHoFH/eewbgV+B75ovAMfpE4T+YIR0Qqb6VnQ14C0ZNOFEDv6duozN3dRbCz4y54WWdVy7cF/
iI3vHmbgjaEu0uzreQcNJekGhpknwwTLqNLGkR74bAlPG105VNxX5yu45AZ9nEBEYdafKLvzOhGe
RxiYolglQroR0rlPnS9sqRKmm83i1xsyw7rMYcTS9GdPLTvKDaKCxWfawj0ip/IhJOLCZbDdaLOL
1UlEMQy1d5w7IjOujCFlU541ADNuqKV7hQyj9fcPHnEH0AMTxKRlz6axh8ukvd830thyp24KheUB
mJrzT7Mz0hFPnrpIq2sHDB0R4vLH7A1t/HRnfoCLZ5+ATxZ6CgKGaoJrGIyyg3wuxIEU1xJqaLfE
+hWf2P975xHoCq+oavyvtEyUfxlD/fX2a/AgrTu1ePKS1HxrR7zWFl+HhKFx6ktoOBEt2Fqm57WJ
ue+mbJoW85tA+NBvIgVL20/XR7HBTz6MKe68i89PZCPujnfzcb/ryc3H872UEK1FMdxnOaQ4aFQ9
aZB1w1G7DsFJNpQePQ6bPI0c+/uUBgtXLXeIsDrto9l2l9YqWZA++eRLP9rwwX5yfcDYP0NXUS9E
ZRlRSWbaCPUA3Yaov83xjYy0UfKHFMW2OE/Cwh9RwMtdoYuEvUyGW1Mcu1MoVwrZHj3pI+gs/U0k
KWx+yyOGB4oI55wrKhaC/T7xQ1JhMy8KyWHjpi+rN+EkPjAs0KaAbhx1WzUt8oPKZUKf+9VOrzWt
1cfw67w9EJI+wwDi22KbrgxKfvoACN8FGjxeN/LLSC9HE9TtrrXEc3k9UhDEIIuOGzNDJsQefUbB
Lq0O2/LTmFjwXV+GR2hD/Ibte8ee/hz5dTUkZcJYnAXy5D5Dl4WwFekp4j2UvrbptvoOZgGbwR74
hDD3X4zqejUOQ3IE/X+nDfh9XvBpo51CIsx9xP4yVURyhbI8aboOM/P/K1mU34IuTkJYFliQoJPq
BHd4Eo/1EeK5x9TpMnK4R19kDBXordPOjTUp9UffTxzF8PxKNEcutYrzdTyr7t+JkpS1pBK8OMAR
+q2SpmrGGzNf8ZXP78osgQrUP+n5wEzMWAz7ueisRSsG7zCJbkhBsLBjJlzZoCz58od868SQ6RhM
ePEge3YF7MsoyV5F8+ETMWy8aOk+xWVu56tC2JQoSO3C7VRfi9pIvITPNfXBFsDbTRS16FiU0JNK
vCzeByijJw1gf0EF/xowrHV1BOfD5bbLe9EQniU3AhKSFtjn5gUbstMgqHJzoBGZ2Pw4QeXhHMzK
MUPiAtiXMZNQx7Thrt2kcSLe1ucF4Wvq5XjjgoCm2rh1qXCXl4N7DvR5m3g4bpdHb9OxDenGqUYZ
O7sPRZEhjl0DJrsmxizE5E+cr+D0dqeI6QSsxCmSy1+Zi6qu83HGqdm3BUGWR3VIKcQCkzIiXGwJ
+EP028IGaigF8gyaCPfNx77IsVgPmc+9HUJBdJGiQu6qJTgBJdNIzqgNph7v123oCUNJ49gu5cF5
O1Yb5FJ4/z4OgDtiRTMkhqWV1NEMzkIygDHpM4Q6zE5agh+wns4SQ2hg+ousLKfdOZXO6vozsajj
N1e0s7FsfDtObjgdq6vTnAF6FNfiLYIVDIdr31ewrMcF0GkUN92yOpMG8bzHGyXMumdhzWR8wzjT
6u3pFxRZD5xyBZD2NS51rTo+y9Zdl7cQihyF+kZgi2UP3EbyYuXkpmFS62lrZOC3HIrhmhyrclT8
1AGDW3wtEYDBfKAG9VaWqTqh6OI8B2Hzzsk/hpa7D5gdgmcxODuqCHGQIS370dLMhxo+BUTwoHJi
Y0n3SGnYU2MKKewUcEL/CfF07mufcGu46dNHapC2PU0lSi5kTBb9s/P7mhkVB3r0ZmRFLkas00Rf
mesa6hLXMQwWUJ5QjuZGzOBdn+qdiCs6an1Lr4NKKbf21p08hDJrFJt3A92M6gOxpcxcsRAAf/NW
LPmruEThSb50dg1Vd3r1zDA9bFbKxRblwk6WhYOEpMETpsNtJSFXFb++W7+SZQAB+jIEkGiKTJeW
3Ijqe30XAq9UrLGuALrvreBZKAXhs2p+WP0BpXFeCfVILoLrfGKIRj+hStRK7hsy/uJqsMPcIl+/
hlsH0WJs3+5Y2lFtZADcIzsYcvl78EX6GJrDrfAMUtXOthifrLt7ttQ/Ny9rz+CAmlXkgsPyBmIl
zDu7wU6u2ovBjGmEPSzyAOapRGAIDWpgSAT4MvrO7txfWQ3whzpHJ/x2Zx3172ATqDTlTihaCqoO
ftwfZxZ428yt8w0UYt6JjqkXHgK2anUtwySR3il4w3HF/DPwoMjyHslJr9g+mA5FsYc5eWBf7ITj
nAoK1QkSuZ5yIn7mWNXIMOnnCHzGNYcsCCpzX9esVayH+vzTe/9J3C8OYgZQNt1O7kolbX7oZUl4
RjeRM4+EUy2RpLbdg4MEucRL85J8lW7wRlJzuqpnI863QVKafIpR3WGZGjU0LQvIpsMtl+2eaG67
l+ktXnG6Hb231nMAgOpxrg4TnchEefW1bDOlhT6MQNgQnhmhCiBxbfc1xylgfe670mn8xxKyoP8b
uIlEylsxWTWXlcnHqETw1+h3MdFKBTQPzEl+eZB9grKp0RHkxOWCvMBKSjCwjAbVB8L6adLQec6v
JzGZEDFHw7yIUs5Zu/W3l7vVwhrQhg99TXv13Yv4JuIu/y1JmSeByBj+O9Lb2rgmkCfYWns9ZjXG
+mjxV1Q63NGS5U1X5wjR9ipHflrLEp//BDQZnI/uGFuNObSrgUS6IfxStprTBNqOMkja5/pxGduK
lesrL0hyA4jckHf37F2ReB5LUfHvVGtslqNP3iadmQxFzZMVHTjYf1tPUVH6kZVdCBYC+jZP1Heu
EgNHY5N8Fu4/46t8exgXR64190Rx2zz1J+k9FpVqTCX147NMbgM5Bmn4ddoXh8PVKT8wGkoEDyu9
VfkoMUphRPux1wNJEvKwi7Y5uxnkkqa5182X0JERo9k9/Q9qYmIShsOS4ycSwnGpkR11Ta1ndyjw
bMQNLwh/6pVGNLGLAiWbYsyHm6Kqzq5AReBdUOngsDSVIwSnzpESDQZ9y/Qh2HGzCfew8IqNEG4C
zCloX2/nsG0OIRPBs24nyENkq1NNhTIYZnqtXAHAQk8AWqezgcNMcgMQsV+8ezU3M2Z5K2gC6dgW
a5QUvqrrSduIJrUGWeuA/5VOiSTZ2nG971izzF0zk0PZSyMjde2N8v+DFgU0i9ASyhzZzY6uVwEu
8fsHxFSmtg3vkWT4KaFJFIP9WhGlsMrhVr5BbCVaBJXYSSmZHnbQs16Et3uNA7RsoZP/vrRDQXEB
t2E5/WfZV/gKaca45fBVOIhhuYRHf+LgvXSsJM8s62DsnMAjN7Yarq8LMqwDc7XDZ/ZBmbV/67a1
MSibo0Ey9b44S9HkudFmXvcZcWP85C5Tj54BCO5P0B5hpEOLpkGqDnlQ6/+Ge9o8pop4B7ArvgiJ
rnOCcJ4VuDV5c1OiqAfXHkoJ3VHkVul+ewItCoWhmWGNUUJVMkm47G37U9+oZ5cvwVADQ3DffqXo
zOi/OCDjBieVeCHW6r3EN3xzjbkXT081xByKQ9g0GxovcAU+1BSxpEAqIhB5PDmhTVASggMDWNtg
LtwV5ORqNKkfjtZNyvJcvlzIU2cDmf+DrdJ5P4y38C7xsPExtkT0L5tiG03IvFIA+PspF2SQDq/x
D3wmFQ7vYHZZnbdOYsZYblLrCOFPIRM33jpBZ5kb1Wg7Ui98dN5jy7LN6ye+jlTNyGy6qCad2NRx
lg6X3W+o6Agj4Y0g8VTvQ1ky4eqyE9FKE8BA75e6BkSsCyGx5yZKaDqoTYlRnsPZQwIc+bA9FrUo
EIaWnYEfMWUpk00bEl+8TcAEI0WFgP3Zy6DOJFdWcnS+9QkG4DmtFD7ISIM00eO6gMktKLPWqJNw
KRWnF6eTCrcTZhdVCp5jlAUcr20kOfezgo2+5yXKNwyb4GNGdNF1VrzAD5rUgrQlqWSV6gMhktGO
6VQM3cwzjA0D3v1JP++SOVnHnpfFQuqB3HTVExuDchVR2idEuxmhfKRsMnwJHS5MdXZIwrL0Iym9
j7jo9Q0nZpSOLgO/ah+B80BPUTBu31jR+AAaV/SHJfNtFOQ96pKJwjQpQDocqjYJN/MdI9QpE+n7
5lEPahq70rQ+sG+6tChJega9ulYNi0AyZ/8f0qfouASMvTWmEcNVDsWZJXC9pkvBmjNHtN1YtP9n
CRRqe2hhXD9NsFZ1+goZmMJFUTuM3qEf795w25NlmnSHtH09AjVZsxBeQnncpAZKfdmVO49TUt+S
p6t19JIWrl2eSnHOEmcfrbs+wSo/dAqYzbMKDl7subGaVgALz3M73e5v/uIGV8S+dzHrU57OTqV1
QY6QXDWs6O5w6NsX+JbFbjSPR6qZ2PqryKsEIrDbP0htI92p94HzGefnGOd1UObGD2pUfvnNm4Fn
QD5/QDOwsuSctkydzY272OxbYGNkD0PAUZwEmcq6mHRU+8BZbjvT3+aoeZbXLhveJtKCuBE8H8am
thLpKNEqDRGHOkMZgR/e9oWMDVw56rfqjuAXv3jn/LvpJm2OjVWY1DP3Mt4AvB9WJhxoUSS4gr8u
BtXw8cbBL2n2HVpLENycbP+L/x+OCSR8y+6iM8e9E38eTGWO9KOuEcjAY5l+mD8I1DCD2yGa1sm/
P3/fMTcoJ0wwp8iqlejL8ZJMxoIfQZS5dZmKc8rN+1NWlVc446wYZaam+1qQNpThU9Vism+Qd8i1
q58gU4JKIwG+/Wxu7NHZ/BoURjF+/VJQOZw8X2kfhTl1Co7zjE0Nt0XN/q9gAeCH6qB0qUIBtyTA
IjFHkgqp7Qz2DhQ326z11PWYCxzy/0a7Bzb4LIY7OXGC3tW2XaqnkP2oE1MBEQxPbfo7U2np/Caw
X2xlJ/ntgd0qcY5wr3K1jGOvK30QatRn19YY1RWg7seLc8H7BJJa/YO04HW5L5aVohvDCmGYOTVl
GYhcj88v0NyHu7C6vreUBcgJoMumY3ahAZh3DfMl6MZndUZuMry+yc9mPZCJ9pltBlDP4I3Cb3/C
zvcxamut5NpGFXLDG5FCkJKkoNt5yG/zoykqJS7EGbIVSdTC8e95a72bB4h+SXBizSyCWux9VrX7
Fy3yFWLE6uffegyz3P5TuI29KNIl0+JoP8RhslOnsugxibW3j2jnF/kPEkjtJTVe2IcSQm2W5NVr
V1NNAGvgVRzP+dBSl0IJJDW9QQLkq0UinsMXf7oOCRVQMh7TOPCgbyLI64amsaKvcldbT3n0aaON
8n/23SNv/ZTJeMQI2Rx+RmeaepTgoBfrDB1/kA1Mplt91n+qysaAJcMlPG35BkuygGyWOpLgmR4f
6jvCG/V/2K2xfdOq0yvrsQUnft9kX12Z9IfU5piMBSZUPVkmP4sHAQPvCIIKArPQqRi81dkEr6Ty
Z/E+35MtvcSdDfVuMAotXLeP79/OJhigI2+zKAB/wLa4lpSueeq6cd+3Dg575wzbn//FfNz3n9DT
BSsJsL+mrg8qgMHxf6qCuHqU5AMtv5GEzoPcnU5praxb/bDeuJtx17x5WGuc+tnr1pLXw/ULbvO5
MYFfuF4JH7PWJObn/rPnvzWrSpcB/OD+w7q8wEPAF0qvNFV+VfRq/mVwzL99rRtjMgNUC+hgaa01
Crp8i7ig3aNmejZb01Tt9UeVOvPHehJwjRZ2DMtL0rqyhwj5Xu+VUaHIq8ylTIHkV1LeVkdEPbw8
5vLOeQEk17ZkzOM4Q0ShFtSq41m/3zWM75RYo7OABB3Hpkst8w0HHY3mOkjAoiAzwXG8EA741TvD
no2ax/FRnvrU692FOIN2zNE9AUG/Pb/iasMSBu/zewGCnISVYRdc6cMw63RXO1zDNI0M89LJNZnP
3jjuhgXHJGza/Zt9zF8jpDy+hSEsdsdV49GyZpKyi4Udm2fckaAp57ekRUB8LnzsBG0+spdyNshk
8lZCos6TycTcXdyAV+9OHMXi5uFD3J+SJzBAGr2hqVGCDeKaQK4qbuO82krBtOIoE/LaWX/NOcE8
TjHOi0D8ykXYyyp6mw+gubO2HKbNS+8Y32P7l8Mvdjv0q58bz/2O3zt3SACdyM30G4g1SMaCvCbG
o7RkcKiSMK96cx8La9vq+6oGTZN/2OsXlLUJDoErTCUaZxDIjD4e4nv7wDPOjm5Ff6Gw3/FvQKpx
pODL70mo0ayoJ4NaWd0n/SUDPuQi+x8rMD5pF19jJj0m4mtq1g879n6SYtRo0QccEpaYwYbRWFz8
/MD2yp9/41nDpr6/0D0WkSMqp1wQsILT85DYjckh8Nm9uutdja3owmlKPoJLdNLnS8tQa7HPU2uZ
rRXcpm6LQD+kukqztUMiUp1ACEzsdqjJrj2llfpvI2euvRCDPXrprRKBC0z+7m5E3hoM+hFJioq/
/1pWeb7odtEQ3DTMPZHPz58oxFZn81DWE6l1FDfl5gdu9qa9EX2MhPpavTcOX4mDOPxPGQ8lwx40
NecnY5PdBUj7OUjjzpsTQn/4R126pohiwFBZrJLSVSYfn9gwLvyH7aVJUgmljDPr9ULSzh5uPbLw
/xC+I4kR4Vmc4a8eMjegtOlsWdWpNrqzVdA2jtlvnmzLZ0q/HGZdI4NMj9ZDnw8hPWt3ozSENqSl
8Ggg+kbGRWZqRuzeOT6Kdh1x939YbZx7GpEhlG8ZQ7VfUJXagg6+xUGedpevSiiOjfjbguy9wQLY
bXMoMtxpOPvZ9UxpvSfbtJ54zBDYxtAH1WyBP5R9WmAhfVpwpowdvkgMA3rTX31yl1KFyI8p84iX
bovHM1g1UanGsY7y8nzwH7GPACnbmYk0qX7rRBN3F5u0LjsgGaZMFHatlrDaKVq8+Pt4+LJjLBCU
QH1ODnH7lnP3XCwXxMPS6DUnN7ABU1Nmeraa4KQMnqaVxr4ViLJRZg+G4BqPffX2bHwK+LiaYGYp
KtnUDwgsGD9qcwAWLN59T5j2FNPxWr/qtEduN58SrS5YiELHFD2mySVZoH7idiOcp18z/9rGU0ym
orgASrMTsMUB5SDHp4my65f1rhuDNTM2uuOQX9ivlCXqOzuDoEodfinAHPDv09D3GfCDpYuiZRJn
pIGC87zkM9sanUBE+KqlqH/0eHjZgr25LmTKg3L2GO4ucq1QImjOiZG2o6n65uzgASOrkO2gLR49
7EYBR31cBriAX68dkLu90/VutPHjubg+E/vCxmmFn+CKAzPGXkb2yO2S5M4GsxcrydM4tO7DWDyP
GbDyJza9hbacmWZ2uynd2N3hQ0/puXU4VIKlzvqHVjwybkl8GpN/a6KBBJ5WRR0OYMY6sph6FDP1
GXAgf/C17fIGVLYR9pxnNQgQUZE7Pn4B/+DuHzgzSuZSUT8PcI2snLuwlj4TQysdt/vYoAMuRZ5T
w7+WDqff4JiOGdOgkg/ffz76XJ0M6yhQRFEbhiTL1c5nkacmgjoVDjh/Pw4pjhhVCVxrCA+26EFM
DaJ70+pntW4lkOpMYeskXr8wrjPYw6MNeXYG92YNhrWXHwON0IK0SC6lbQXl5+gwMm3NSSeQqHG9
OEig6rF4TjTWUkWZOvm7Zd1uJRLw8SRwvAwdWXqaHZWRsZxUs3535tWtjznmLpJ+7E3aKp0Vucbc
0Z6FWQCqTzlP1Nq+OUi/qvpQlx6Ndh+xYqDKma5cVDPiploBieoPvv1oNrH2Hars8hB3MmGN2TVI
CCxM6fiP/6lBlcMNyWxErIk9msVYz5DAZjpZ3hSu//QRlfFZJq1RW9wj5/n0u1vM6YyAY3v1E7Ro
Hq/jx9daHMUSSy8Bn0r1sABeKh9WAuiITFc3W6pT2wYvM3to5OGwRbStDvMZ3I+cpV7drCi3luHb
W3b4ypaXUCoJhARrAM2bjItVaZEHihJS6Ky9ZFexLFpOL1uqSR1tCPUDAgiZIqmFp7zqflzPqtO+
rb5ZWwWrAtAsmQ0BFg8R1mdjVQVWFcTR/E4tVVHasQ6mieA6T4qgGcnBqJL0SQgUq0VBp01MIry3
sFYxQIFe4iDTKXLzmAL4toSuCbFTfzIZfWCzjTU4AJrvYtrwM/hiyat5gRmKYqPGdaw7Bz9xrsx2
qE5kCcCz7xH6ZKV2xzfU2iYm75PQ6AWAS13P0zBmLzNf8XiX4ZcB+umNrJpzxl/5O2h85MsbsWPU
IH8+aNX7gkOyc2SGEfUSBeJRxaTXMVBBs1+GVV3D4SHGiefSmy/j++sm7tc4gW12ZP6fGJwk6G+e
k39ujbrphNlDcniu0oYZKJI8S2Jo2JDHgQL8hckB+mPvWbpVKyjH7mS8AZvFsFzfkqhn8czlVXKS
7gkD3SX0ZK/DQHX/rQaFF2GTp3muJw8PsC+e+WpQColfEsaX2BzRrcwwGHNpnCXteMJ0i0DlRkU8
fvtKlmIbzyiWFWrbaSHTOy4RAQoF5vCBYq/+4Bff7zXlg7J81bXymcMMtXufDa0lE+fa1/vEJ9sq
FcLG3O84KPVFNz9VOj06W60Y1+vYcDtP+8gAyPy5JUptVYbMFYRvfwXsCGz1cWsokInjGmINn2rs
xkjaH2scZV+/IGe7S6bseLJ+tMpXFL3WlVqKRW41da7InNmiAkfL8VhM+7LEt3X7XKPPmnxUJp0W
7sVEDn6JXjJidNTVl7UQH4uhAQjIfP2NrwHBGmHCrWJ8NSVbbdC1Rby/N3Ff6MlOOypMQFfn0yn9
i0SFMTMmOtKL+X3fczhpKetfxZRXScHCEhdOF3MGdqw1dw/oBR9uGs5ZoJGypbSMfrscGs6DDSLb
BaOvPvosmmGvfOeI19MOYyDqYqt+u7h21KdHYjN3hGnK7KteBrdmROx6FDqh7258awfW+5KjpD7s
Do36FCATGAEr4yl+nIEMnmqra9rkl3QMBvhAqNHc4nEjlp8eR3HDXLQzKviXkDcOlUkJiomLg4Lx
fEAwsh86ui0CWG9R2zb4D/iBhXMSxkcfslc541Pw5PuzAI54UssHBVtN9+SgC1L9kByI8jkjRBVP
xpBIpSdW9isVKT15dcmCmlSzlrJKofv68zlGDoLSkL1pNy/rGyOEcQaI5LDpUbQl2tG/KUZaE5Mn
+iChGAnTPyTgZK6UHUhIqHzjjDg3G0TuSaiv/GUk99d72oqfkuiyh74/JsxRYBZH1QghvDwPknMR
yTEvtDtZd98GJeBGP4qYKvtW3/wxwWXGLwwUM/3dQ9PNXNGDxC6NNmeP7mrI6m/5Gq0npkJYmms7
qXVNuY1Yl6w/H99UumyqTVuNBf6c3PlbdF3iDruylFSQYQhEs1SJgloDtTiqcCQA1yYseoRSjStj
M+N6oC0RZravO+dB7EAW1KYD5B2XLjrCXeAUJMz+KLVrRQaRKtta8Qe2WJGn66O3FS6Yx2eJ0tFH
weMkcGZQ6ehBOFoBquQ5OktFxEMqLvHWg54iLyeH4oDmCGG6Sgk1E1m/RZG4TBG1jVR0QZHwab6j
zS0g8t/bPX3ClOTW77Zs9kRnUc3bXqo01E9M/VfifDeJBh8ICscV5MtsFalqJb3M9ck5tdyD58lK
kNPeMgwKC2YOju1jv14VVQmuIweGKCBZ8KH728k6VpqKziTCFkYmLJ7H/4SWexlY2HZXY1unk8/l
x11rYQYjyCscWmTcc71Qds2ZjVfCF4IzrGUbqu0nv8+Wf5c410/r7cvfkwWD+aeDOOzsN+jArRxk
eklDfUkj7E8j7mONnQjSZOfLAzQn+lb7Q8rhk/VyMrddfOjmmJttvWjd6cHsncrV43J2zkViVbC7
vYeBPTEcDnZy4USHPCImbUI2U89msmPMvISxmAmGvd/VyzGK2d/SnHgh5r7ZEGFCAiMTUEESA4QA
P7A5N1VLOuKR7rhP2YcKhpnnE/WLHp1EhYmRNNJEeis2F3k+u/PYMpotR7aFX8UvCNfZu3tLw9Hb
hcoD7OWhIyrLvKpBdRzzRsY/RPQqXTTp85FRlz2nsQeBGBM1cA9oHC6LmYl+ml81V6hni3L0/q+f
zFsklEPc0Tm9w49rhqKZdYr7Xp+gZ+XjE9nDaZ7tMBSBaVW3sGjn6N5rWO7m7xKL7PdgJjZBu+Gj
TSmYrmpuIyVSue2lwZQrzEaw9C/QnUrkqRA0vYRYntXMMLjTYIV70OPSNNWycORAdgfUxrjosSUs
A6R7VcS1IpqRHENTbb52sYVg62UunqfvPbMTkx8Yg8li7Rvn+6cKpB98DtJF8lvlnjPh4xHw+YHZ
lFIHc4ilaWTruOTyi0COg7tsmrMpLCE9Xj56lA/3bgztqJ9C+5b3+RSmZafrAWWPzWZRjHV3vOAt
g2KNzPzfyXkoRQB7c2M/4o5OYBZ0M7Ki3DOjzmht6oxSiMUT+dSTvCiPrwpdZeewHNQ5YE+DFSKC
G8WQO/B3idHPxuZ+wlCsQjHpm/47vKn26itASddIVxUoritQFcBW0uNYoKHj9YIoV0AFOsUFMttU
xaqnL1EgsRWppYwkaxazntTxoNULI35BivCCEKUprojSE7v6CBEa/rKsrwvmhJWf0tnne1PnCFo6
oTGwGlOn5okIFFCRT8mycPWu4W5voUwrLMqEYTTYlJ8hG7ueoK1CJ4/tCicTXk5G76jCY4TbuLe+
0LIw1CiQwogkkPf7ksrMjMV9ZHe5uVvZe6JDWAOBZJoGl87CL/Q1w9DgLtdoZKFhdZOSApOLZbMG
tFF/45SdnZnVWfnHmBWVaetz9rAPwobgOA+GAYXnO4OXHwhRZPLEohs9DePcJSsO3gin65K8lvdB
ZJoP+dDlP4LPMwgFxZwRjUR29Yb62CeJQmfDilBZkMzDv+To0QKGioIRFNa95z+/wkE9gXPQhO5s
BSHKcVdKRrj3LhCCw+81z3IXPstEYvvNCalXWiYB19twgQCMNBgxxCBsroIz9b8+WUOJ3NgXCS9L
Y6Ax5B0M1H5FnnjQ6iYEPI39FpKWNYx2J2flMfI7tgB6cPjWnXS4Nho94+mhePFAB/Mhgw70MJy3
qzddznf1SkdS6iXdJWJdIEXfqixIVKD5Re8JXPALd2MSlP5ZeM66h4ebS2JROuC4ydPPR9qOvMke
tRSCaLGoF8TCcvYXEBBZy0PK+kqTdNtRZoot7FWpHpbXk65EWbll9lh90xqvbAEsCgVZPlUpvrai
cmE0rpaCUoWn3mBx6s1hWVZiJjQaMXiOc2d/bkGzr/ZUfu/ejF5jVqkrhuLtE02wb4Sm25tkNKdl
xqkDg7U6s5l4Q5aBhfVTEAo6fqbkfqrmI14tKyLMISqQ5BFyDNknbyXdmi9FAg7JqxNI7nK+4RZy
S7alualS9Gve8u23Kj2bsKRUsWRxEqM/nNnxSFxUfUTnzo58h0/O0OZcBBvloIpYDxtMz+RKAboF
OnV4+O+zoM2u7un7XRZ/wo2PXcgsMFkg+BzPJ4fHNHBCwKVcE/2OW67KhWIWopKh8KqLJNYEdjot
jCko7bMC/ZJf/daGg8voYjZXSq6UZNghhyjG6NIIx7Wffv3ZS9w0lSXuqQuT0XHwGBVZoKpdsMlA
+94PNFLwV4LJkIvm5wcQd2AV+T9UVDGO7kqBDajxnSYsLqbj5B9zdP1rVR2CQKWK5n6LXssflfIk
8tvAhuJ8lODvn3y0j5NiTvjDOQmfKqRjFSgIy0SSPW6EIDNn4q4el2rI1VytlKi7qWhvVvDx02mP
Oqyl0hpfKQfTvKHJd48gxtsHGt7G1MebVH4vuai9Xznn469lHj1OikzwyOfJKKlSYV8NZu2wuzq7
jmbdQQUaJT59Sne8ZPEOjGCwe8quj7AWHe9xy+0Es6msBoFg5r3mOPHzIRQubIAZeEp5B8rVjyHf
yvjdbsYbeH04Ux1whPQ4HxhSkLZhGq89zCUlFOa4NPG1GSZMqAiQui4Ba4inTpu+XZctgYegj3bS
uUlEUMUdMW4FMng5bVtM7cpVTYe7mB9Vn2+cMZPvcy0dLTXMQAPegZUXVjr9RYvIqDxJmY/jDPXd
XTBiix9zDhK85tooDdTDgV/tcfwE5U6OrviwJ14iF5Y+EHvxF/yscckvijObX01nUmRKctqXu1nR
311FPjgMxFSaHV+TvyNhGnz/p9zKY8SAvqaUS/1U1sSwoQRfK1kzux6FGb4EC3jb3QFH1X/LrdFu
Qc1RZs5s2I8n4xtFwkDKtazKuqBQF2Uhngko6z2T1dwis6Y0My70/EUWVDfFufFKjRVg4Yvy7G/G
JL5WbG0c042skHAyWRDC/Th2vsa3ih9DNtGy2CeqQWySxPt/XJlecO+2Y/0UdCdCDEoZtDv0hmx2
FIYnm8/BygdcpM4ho5HKWradwlL5VFl/G/awgATRbCptB6t3IpnUiYQTUkVQPGvt7c6LJIzNd2by
SwSw5pecZFRwYeGt+ASQi+NSgCYNEXOKaAfLXm6i99RpFHJrzyiIxf9jJSpJGwveaRPlcgW4k0zb
+98yuskzCRist+TQgaMZC2U4ImN5Z+U+PNQI5T6gf7cB+9Co6l/kLAbv2mX07D6v8X9mf4vP3ebk
V52c/qIGcMbco+C0vCgb8ArW3MW1WJmkZ2yydaaC34dpp5xteqNiEjA4868dk6JfoSrFcu53hQrk
IA5lZ4tbPXSjwWe9BmzmkItiLNVl10uP+bOHV9rGgZhzlhHLqdsSELU+1V9oIg5cDMG9NrZSKkFy
FX3PXJL4hHM/O3UIolwdnfvwLIn47gQ+VUUU6WryNIMM9SjJrT+M/QLd+zCZpj6HyMBj8bsQsQWA
lQwi2w8yFxowP+lpkiPcPOXD2/OFiSYyM1oHlvcVPFyd8AOXkK54sgZGExa4gA5TjMRvU/L1v9CQ
RBA1Gy9ZDudP+BFVxwr6DJrXfa8NdH9do3z0hdlT3MnOSdsMnoKFUZmCLHwtaFNrAI1gfkU/pl+W
tQ+0AvmOPLEo+n75nYjcgl1AHgaFApS+4TxOiwRHjL02Oog/lzR8D4y32rZmdLDakwODv9pqYARP
ZJL+lKeWQCNffxWCKCnNZZG9hTz4fo8tdMQQA+hx14qS9rdEYXwQrzBsQhNlipfdRvVPl5eUF1VR
N0BCZsx/+lywWTxYaGCA+BDXBJlTlvFZqBkXhT/3+qfBPHWe3J9XIGI5A0LJm+YaUju2RoTELEzr
PC4FhQ6GQtPCrGU5144HjirrTrvkmJjVIbtTOgbRfiT57mmbDFRwkHgwObbTcVuomFvUH1/OurIZ
Z5Ek/iWJf1EHY5xsiD/vJnGNRXFRmKNtYnqBJhJKyrPRf1gAk2JF6yajC4ALabbCbuEQK7r3CVMo
MEQdjOrjRt1rxYRsPzkfQ5t337IF2ZPIkQMS0IeE4MGHwNLa8LWszKuEkYYV48RX8pjThX3gaQlu
Abnu2sQRy/LHv8BvN/G8OvV+GZffFnWSqKkJ48tcAub0OKYiWB6l6o3rMPtfELAxukpi41DHAem/
gUr4R+/ELxonU53JKcNkQaBD7f93dFHL8t3PjqbNMEmZHTu/m33mh0KzQ2Rr6xohKeMzdM+3Qd9z
lKHe5TopJFXxvYMzDB+2fojLLMdlhVekgwf7JZ66KBgjk7IQ2WrPa9cTj0SEjQusgqa2otQQr8Qc
WcSZMvHPog59IZegJ6cygrNZV0YytBH33B1cYCzZfC9zYVYuUr6dl34WVDbGpTlA72FotKCTZh+E
c8DHUPgmA9wSJyceJLojtaryEoMN5WG+7NPayxdDkJ7VmmJI5k26r2uaR0x0fzKMOJw+Zj+OdpNH
zt/sbuebGcZUjATCLf5Y4+qbaoi6sD6dqeDvBP0tvEZk1LgsXBIj+gUxfol+Yibs3eqtifMLnNyW
x1rMdbJg5fYEAHfk5jMpwiO2dVmoygZdNnntnnJYkC/3cZwekkWHAzx9wAeTgsg1aAbVX985iYib
qY7NPIXyjwlVtNrUcwFhejUu75Ae3ZbKWlrxCnXGFNdvB1n6vQnJRBUwTpj2xo7n56/yZqD3MUHh
2J/wOzwZ89iMG9c7HPU4o+eevj0ucvOe8tb69bKoL7hOyJqTt0cVhpTWKFIRxch5EKQiAcYT/Rqi
tr1QA7sauQJA7rKgIMrV04gFoVrUWzn2Z17v5+wQGV2EfGWl8YeOpVU4UDWL6U/RuVwjw0m/ftD+
MM7kaa8+/B64q9cZ5qwDB0oQJeqCjfFBcofJc6lbckzR0Pux2QEHtHFzZaahS4Yxsv77kZoDNIrE
LCfFWWwRf2SXQoArgacTSH1hI10lPaqXqFvyOzDry5egFZChPMgfhz6O8d8z+Nv/pdbXj/dGB3Ik
KWi+hDi5GoHN27FaSEZ4h1c+GJlsl+2Zl1tMKOHSgxI55jl6QQUdlZ/qcId78QDfixXx4yAY9dzK
3Tk9/WU8q8YdeziTNMm0lhwmAHI4R0MG0MayrUPmrU1ZpFIkAp5CsQKU+YfVEuipv+SVaQyM3zP4
rlvsriFdAsGC8KgR7fTpvVSfgi3Q5U8ZzzPS5zZePd52eIOOEUgpz/VuRTbeN4NRGrb+b87feh9j
YtU9ys1EW+Bisfxwg8rVDFFCrSOlc0bSL1WGor3XA7Pt/8FE+uQihPpYPzXfZV5TVMxeeuZ+Utxw
T/7X75ax4gUQ9SZUwbAcAx0ieEd+dwdbeO9w3NmMb5PeCcY77TpbApkUXjnLxNbi4ylIz/cq87CE
ayhrJjt9PxUv7UYYLD7qpyI4lkuNGndGzqS7AMEuUez5cgESSNWo1U3ongDKT6FazZpv5B0cl1J6
LQcnW4fiTQI3xUzJtQ7zgs+9UXJQ2+aQqokgR9fyhT2ceNsqaSMun1RKcDdDyzhwmYiEj2WXgWoG
fxYOtXknZa5Vlu70yoj8aj+Sj5o6hKslzJ4WBiQzPLMnv2SnWvf5pzStpwWQCdgX3mrQmLM+BOLa
P1nefe9GVpWNp7wlUHDMsfzZhdsPdWNiFu14Bv7yZ1Fh//xCK0IWCk7rcLDw25hJ0Sc6O9Oiw9kN
VkoGD1yhMkwZut2elhc1g37ED8eJXccEcbaW03YjkTB2D9Zp8QioA2R+kDAX7VIPiGOJbQ9EIvjA
zTZAwGZYtyLW8NF5q8+s0y9OJ3MMxYqUj+LHgn5nVCugXKfJ61fCVQYoOSnZwGwAXnLatVLpTQZN
OrcXQ1I8as9in/bt6BQe2zOyLt3IvL+0XWvqXKb6UomJj+90VFjUtNj2IKK0klQoCkQ+DtLoQvXq
fUgsa2VzFKoOagvkZbUy6gYzshh24N1uukjUanrRBYC1mQg155K+Ee8+6ZMJyj5mXnRbTBfZrB6L
erbdijOSckSy+85E5xPSmfLlE5B6XBr+fcyGeDLZGoNdLDu2+r8PCROjHHnYnLHEbYBVedh96rk5
xDu1ElYlRr4IuwVhyU6c0PrsSJ2STmruEeLrYF09KucyK3Sak95twIhz48Nv4pRj0o7+gSUPr1Xk
1Z2/u+MJvbmUl63zcyEZKD9TZnCUD3II9ybdom4mYqT01DZaNtErLi4rdInFM5vRRa70JaPUcraD
23aC54BHJ+1WpHEjkcKtO09KJobQjzsTe2FL95+nMq+ATncYTFjDagwfkmr7CTFZYxAKdSenmihC
J1gBDQCh2IGxPnVkcBbeaR4ieTj9Zu+CGM6qVTd4rbQR9hmo5jvEBI0eM/PwfphT+ezCkIn+GGA+
2bD2vUzEfdxXKrqfWdQX7L2XmezGPFHXo6Nl1Tzk80g12SOZ9DugOiQBS4YMg0BKIbm6exvAP0Sf
gSGdVvjSoQYKRLIKQlKmeOjdujFuUymMUwmMvwHls5prF33sq7j7jyiJ8lG9VgUtH4wQHl/Yh2um
bqp89BunMQ00rFdNRb8oa4ZlQaYemFxHRbKMYpRUJ6p3RHHQcmyq/lWO2larYRpwlRNwv+t8kXmD
nzg/OkQd8x1/SzAeOvCrg/obGHE38O+ei5qc9yILV8SWV4NIQh0w8cGIA1lLbKP0bpIPsRkkNhZ+
RVDHy/655jMxvds59ItDJYTuGvzobaQBYO+YHQNky3ZcWDzt5A1AK1tiYvYwVZdUJbLK8wujU7tk
IAMXfy0qhCAp+cBxSVmGlr4JmF2rrMe5X7AQkhrPCGO7LD+bJbfACt+Ej1U2J5vWuH3kHRo4gnYy
n1s6MZhIFXzCq1SnGqBf9IO3vvl+WFBnseBBxdL2k9mtfAIFdj90uKVjmISbsv8X+QQX3MZ0yAXA
hXOcMhx+CRW4eh6SQ5fOoZIZcOOATvXNkFgva2I3MvdJ0fx3/b6FDgb42yIEs5rYXhqMQFmc3a5J
YUWtjBftsjFeFdjGWhki0xIl7Vf/DAxbe1yYIoh4s2kp7oy34+TSDl06RhWI9JEZziOSmJSVll0L
7VB8PiXny6SmlqU9BRtl3p5RGxpeXvuwsjl6OQw9SUjl4xp0UQo5+dF4+vb0RwJBn9joOVubckUH
pwSox2RvPSbsiFjvNBTFPVnb2qMw+7mvsRbwIkIQi0MoCOzowl5HmndrEMvloKdZ4z/FeYAG3cc7
brmSsaddEAG9dfWF3gtPKiGFrWdem2aVNrU/HYGDuXWCObjphHy5g4/y0RSluBgS8fbc83LZJW0X
4yas6f4v/STjMiZ5O383uAOAWbYiDqVWBUBLdRba6CGovHquRGmobxBLlGGhsob+YMAdMNGOMG/C
mW7zLI2T2ANSjiP5qDhs6no+MbkR4+7CYzOTSi0OaIhwtvTdDwU60+z6fUMmqDw07IGB0pNzZ1bM
TyKHlt458/glgbsFNxKPvh40rtGFqZBSM04Dx6mXsFiOHyZtQHN87BQQZG/oQWpnCFMFYvEmt4Gy
oeiPbIQgNd4R1KP8ITsmMx8G54DdddbV+pXxtRUIB+hHsauMUtCdnIBIJFRN2DrulCOVKYt/BIs0
g+dHVXtgj+8o6tMR2vRFcogNA7Xf5FD2c+uPKonUt3pRA8gwCKK0yjjV25CrmEGb68xpoGVKqmhc
yUjW03xeoNtsNvRUO7zehN4hjOG60Sa6xhHw3tGobbqvKT/QGhkgByBdhax+oh+N3NJ4sKZpCkvm
lxdXEY4apUv4LAK6krwkZJ/VP8w0hl6Yuk8JnOe1eitmT71JqpM6Zg43rK1f/fomqoQjAX9iassM
OzU2MpqvalQ5cAVz6MW9GxhRmPSbM0MJkB8XZnEjZFnDZ3UgrTTnHlMsCllSd7sNGql7F7T1KngW
wiSMR/c4DdsqvONrNwLkt/xNE44U/JLWxSMux+P3BtL54W83ARzcG02irmz/BIihEkIpYDJanOCN
RBkFET76vLNc+FLmmsYINmM4+lpFh5a3qWM4AWmD1OIrG75ziL/kSPGB5VGl0EaTPRCIBqTcHE/L
C8j7/sxZbnVi3OJcabFMEtYUzBw90x/cNnBteZwlmVFvwfMpqhAnRuwZCYovwFz/YRCId93BiQ2a
qLkNWCPBz5JdhjSBMG458JTcDpjQ1rxpFwekjcEMAFUht6J8HNq+wZYDasB1WrU+0rwxpFWTG+Rf
hTkSplccT1hdF4xnnNsXpl20cLh/akE8CpUzBD4seqILBxGm7J/jpe3C4+5LHyNMN1Lvs1XGRaJ5
RfnVRToBylvPoTY10EH3dtzzrh/olnXmQYZgGIV4yPOCa0JH2xZgdmg5l8/OqWaFlHBQaV4TmQvC
gdImtB30i0wWmttM4DK7qiBeLwuFE1R4DSaFNYXzoZpsVOSvhtIU7fFzQ/eIqjwlRMhaWGUZd9z+
kcvEMHtvobz3PhixUA5S9UfJRDIfph6tOFVGNGtbS8fqRRign7Ibsd1tcpDIrgTx5P3bzf44VC9O
+dWeFAFT34iVzDMhirc/TDM3ACh+M4SeOkqaIu9DuZ5Mxup7fFCzpsGdQgINItngFMRkHGfHBmSn
VLEnovDD1pWH5CQwMRS8EELCNgVk2NBZXFoXbW6WXVhTEpo2vV3456iPHItQ072xfZtfu94EaPYu
fMMc+2plX8xhw8PG7AIdsv5WMqepgCBl7SiOpOcAqzAya4c++k1L4CbAi1VMFoa20xz6s7RiChZm
GrjzFpbw7Q6WRwB8eNgE55eVejSTpD3RbAury16MVHit0I8R8DDCodOT3KU23toSLR5day6I/IhC
1h1OG+nn+vyVwDgDnBGdLR0IcwKk7bylANY2AEtpDHwMAUnNd7/O4Ry3qw+krrJGODE0fTQv60sp
ZWUG5PPlnRxD3BkA2CfQrF1tyt6/AQZ5X5QvQ3+82adK8fcUmCw5D/XYEUQpnwryqaZkJ1H1h6VO
UK2nT/0Uqke9NT1FCXrg0Q4jEfflhze7HmtEfiJcUqqF/oDp+m/AuMw8kf6uQtMmcR1Wj6pLvi+y
TozMVTqotAiNcjHefzVv/TTHBw5H6y2rDwbx7vDrCVEJbZxXheqFZoQU072GAwAN4fJykjWvHSVJ
mTUpnJGJSALlsKl9jTrNMG30mla22g+/w/CAElep1gdBLte6NqKn8uHg/s0H/oqL5Ly/cH6YtaNB
3yIMUNPfEJgJiacyVJ1CmJzRay3e5zaSzlkiEqgxGwijNEkvXdUXHNo/eawxfsS+CYsGAXHhz8mR
j7LFe8vDX1yktFw59Gxobh8AKrQkzvq9mQn++37jqFXZBjQ+mtMpnjlYymz5mg6+wj7BTK6FhGXR
QqL+MmI9g9R6OS4IfufgK99A1gXZ390siv/MhRLwXWScEo9LO+H840p0m6971qw9gmuoQXimpi+D
nWxcdRyUm1uHchitksp9YOKGMWQutLpFvAaR8pAkbTmY8/Npkybwi8diQ9+rAhNHCsZgRUnpWLUU
QlzAhQdW1JMBxngv/33AU8CXGk3+nW9ak1XFenT7t/AuzJkUCUh2VpdiQoMFzUY65+uTxCve3uaO
t3RZyrE5OMNlZLkImnc9A3rOi8QW4jU5sSMW8lyCATH5AAwkDD6VOet7XgIbV2bDgarKIWoY9FQf
bqftup7E8OgMnLukqFVoLEPMK1AY6uVsqVhyZbOlCL1rLgAf2zx3faDog5mDccmqo7JfiiUQy4UD
jcOp5sW09VvpdqDixQ3suC5QtAIXahcZynzUh6jVOFw8eiHCGh1F10b/bVle59v8BZSjksBudyQc
lvEFuHKkM/cDG/esaKcowHwa1qtzCWzEfAKi1K76qCuTj1CBA41S4qcvV1izPRfiOtGZSEJ38FTl
LvUEjrS7sjlV64iDnd2LUPCmGXSrLX8ZdZDVDD5jUP+YIJPXLEKRPMGc7zyxJeL8iJ9gpyKwE0DJ
CLOuzb+UNuluMYCdL22F0CLzTQ7yh9R0oOBAAv+L/zSwlUH2ebkQ4J1dGP5MpnlCHL4HZajFJzrs
OpjdcMITjLgALsXR3V+C5j4OCtlyK9SJbv9kaiiRBUqDr8UqJqlq3wJdwej7LlrANMsIbqAZvI2K
XeOzIf9anFUYfeWwTEG48sOR7ze8s1GnrbK/AskCcnPiOd+ExYBmBRw9z9w1M2AFu7IumBQb6GGT
0Kw2+XIgkopfeh7UiapUgY1+XhcVdaUve2Xt3HnaweyqxFZVmdONMiwGt7ZYTYgKbApi+qxCVfPB
yrKbhNrnItFq04TrsTduJusO5lMQ4v3Zj1u0vGBDmttSlT/6TvQQz141h3VlI/picC+SgrJeHdLq
xR/1oDioSQhAhEOxJIArvzXoR5glcLaehxXGeFY60SzFkUgNyEl+6/UOw7Wb/hnFdvbb73HYO0Xk
xisHwmvK7m3FCfGGX2nr/meBDJDkI7bTWpDR5KmVeCTfG/YPFz1G7y7nEO220LXgPQZtzLlXy+6l
mL/KmRvY9Y6otNZllUUood3W+4XjBytCUmOKjK3uqRceBd5zzDE48+xPPZvUNpdVHLNHgq7Nm7jW
ud9sce8CLWr/SozI2CrpsJMGT79cCN0mRQ0i7/Ojr0v6J8ltwVNUJax5syCYBuDY7mxiBMa9U2ET
NNAYkEot4gBXfHZcJL0kK8n8+3bAVpLbs4bVZpkFL8tbMMYeT2pbqPvM6s1+86k10Ad+QcuUukGj
ooUd/tVNT0ubGLUOOka3DEV+tCF/x6EVEyF0JHMZeC3viBSSu/XPozUycSR7DdWqBw1QNmnEx5Bq
9nrNIdP0hWYbHcjuQcLpxkM+5nFy9sjMaCsdzEjK8vFeYvRbh4tEsx0/gwwZ9BdAg0nR/aHypAHU
1vHfNGdL2b6RfIlYvGA6HH6NrpWqhfsDzBG7xqzX61XDJz9Bj7MGX1nWnl+Ler1mI75wdi8y3xkj
W+5P4LbmWNd6APRiSVw1ChPsMlo/z6GmGFngJZ0Dy08cD5Pk6cBxAXNmV26NMDObJGI4JG+dXOsP
mYe0REqmCm2o8kWc1l/7n3Q/AW6YgwBnzqHjMLCOsmFcy2PTi9U02IlX1Ac43bPnkHfiv5DcxlAZ
P/P6YcKe3tFK1Bzp9iudHbXREaa60uqqkBTgLIv0DJeAUGJkM7JcOzh2C4nro+DqrY3p2Fatz6Rg
NSZq3UqAvG51qVjjbloMtE4zW1/FdAdyEakoe1daDGmDeLEb+3/FSJtpss4rOveMdoZ3qngBHUvu
k0/E4fhA7W2zSzeyA3MeD3mZEJsvsUgXcognXN+j9A+ulsuTa0aEbu9gYTM7mNiRyXUlSEOVfTWG
QOnp/TwJPF4G6ldprOJPoEqqm+TGS/ethpkXJ+A81B1HhQXxYinuTU/ovJIU/p7JOK2os/WvraFZ
EhlEHoZdWT+Z4rB4ENSPoSpNuXVzGo7D+7NNoZvuUkIQ+ktm4SbwenxaWBZWSdU4+SclskC/yUQ0
7DbrbMRXA0h/XPhXwzzMEH+rodZMESAJrzzVlyxYEr2yBr96S42UH4lp9FG/5tPwDJlRot09+B1u
pG6ZSjIOnVwN/XDB2U9gZHYa/aiMF6SohhM1+XBIW9XnjyVaF9iGtPOeG2RpK1eSD0yldA257br/
v0zS9WOXTlFEfGRUBUKKR8JzH3IVXvl+R77fzwoZME0teYJ+i/ds5/aensKZsXQ/VX8TMKjbz3wu
A9llt8ZSSQneDwHTbn+E0D1olc5V0H8O0HiNUZ2/ajgz9GLuv5ZasAP4vAWE9mlEuSu2HbzH8UGs
f4ZckquU1QtHGEQxJp6bR41l+UJ/aGOzKWU+6s3asvJb71xN2V8AgMAwYI2TK6uOiaemLE/eVzLU
e57tJHDfi1Z56d7DZJNGPx2wsCdX8jc7G1uJ2ETLmEnxCuo3EJW7OokKH3QuXqrVIDkqX1be4EKh
0gbuygUjiUa3bMH0/4z0bqYNFCIQ98ySHQ6r5uUaPqb8Z3jSSyOR6CF1So4HjBIUchJhtDDoMUUn
N8k7Zd0/ptp9BmahkHtCxmlDJlbfSmU8r9ENW+p4Lk3SPWwsBonlng/2jSrvMuuzRDaZlxj1TrR+
Z5AEC15I+g7yJAMHHCYxOVd8Q34zBorCSjMN9O02UMyPqNpUvIqXBuo0jmR93OnMu5CPm7xvaqGf
LJCpyyfB027Uqc+1J8xHfAKpoiXYV2JTGHFvo2sHcyFC8Za4LGzLFHSKwjiXKXWP9hX/S3k2dDfq
Y0YyKgArGR6IqVZ4k6ZgBvzI8FR+4MLqrhUNoZOIhynN7qcM42Am3VW2AY0kdjpdPrhOQSpoD9iR
lLoYRb/MKwmv5DrkmZGisXZVkoGnlRMkEEzZK/CSxqvHdPV3SRWL7PYBMk5Q5jucwJOH3GXIksmK
RgbpOLmAypioSnctj/hL28VQjqTm5EBg4PMr8G6zzyToyXRBR1Le4+Lwg+je2HbtYH/iRAPli09w
eiJXEoNKuqaGJNK8TXC08bxmI9czhGV1BeXm13sZOC1upJIklY5/0ZPcKsp19sa/kD8VqNM62zR4
ph47NHvaOta/WT1OdzZcMIFAkyMtvmFrovGylJoWZKnXaZOI6Z9UnBPhX4EvfLJMAmVSA3XEA2jY
Rlpny/6wyA15CJl/4p87WCjZlZbZZqPHn/7VdLd9UthWB2E5zZbkdN+tdLPT/6Qz+vDQxi08+up6
E6c/38Yey7XlaZVQyuyzX9316vWCfkV1R235H6fmvQ4rx9Lz4ozrSMX/1H1vPlSa5A4ignGP5vFa
7Hv0rYim5DDp05Hina7h9zYTQm3+JHtR3SuvBhlvKYpZYdqgZsIUFH94G2x1mYcm5rr4jCgfGdvx
mfsOEiK4XuX2iCpaGOjTxsgstZSh7yDylkWHVOd71146kzs0rTsXHQ8lHm67GvO3MiPu0wzS6JX3
jQSJhnakCFWOci2T4MKCSslkt1dpAGMe7uVVGtHe5/JdvKJWzS+WPd2SfHcDWWTojYB0pvM70slY
eQdyFaJx088MfeVnWUnY7ts47JmFLAtrrII756dwgYNM4++HCpPi9JHlc+V2+SOhH1bsH5eZTiVw
pJyiHCzQO3wwuP9eoucSTZ2QtTlod79vD6Rz7gvi5Vkiq3D+zCR7xpCrFxskCNFWsAUio3qayPtF
BL9GPS8dWnWMidTgmxhi+yXCgHuteLwCWvCCc1+xMwIK3EQaZZK4xHe/wnFUMVxEQg2RdrxX8fkI
0dQboZj77aMlRbV+gRqn6zA5bC5wxajhtHnxgzeWjsPueh1o8RgR2wrPVJoxdaLE2I7WgVCT7yPl
47ASVdh32qozQwhWTs2CqkeTmxVbsB6Fbyk1E1BdoKGbzUehBymZFvS1J4SDCO1BihyiDnaZsCYP
T0jAFt3Ogswuq+1w0c291BwKXNcz9Hh8dkKclRH2q96bLOVCD0Q4N9QvoBntoGnmBFjVKdFHOlpm
lF+MXhu3DMJxeVetiuwqhUVkY15TQtMQNMEdZQZDuLYTJA61TU9gl5N+qAR0ZmrMcgUIMGHprVpc
gNWZ7WoXb/Ubp0UnGZTMMZjsorr4EZ0UJYH9mrfjVAkTP0c4gCh8tsJ7aiqLVCQAKdn75I8jAz+m
trGeOaPdGGxclObfCCohPs+emvfQNc8hwJv1SrpklHwUYO+3VFmzluO7ujDmK2Suh1hwOMS8Wq0X
uXacYZfP0o+zInug3rkmetFekeF+Gfh+xeJBx/H3M37BH5ASpqrh9ZWGJVRBeVPOdiqzEAlaQye+
1AzVXYeSwIpXUNWpAYH231pwkpvuooY+01stQFQ/wDsxFfgh47ILiJ0m2gw+mfHUqca9JSi1fZZv
ah5TAe6LPihglZIqvDVnTbT9qmvHnzkUUUI0NfZDLbm0i68Ybd0gv5VjhLOEsOXGAzXZVgj/yozn
aXCAJmR86bDDe/fKUVDRQWLYZDY9We8jr/ouEoVJAaIRjSLBSRgs5Vat6HpnPmXFq6F/SYPDl4jI
vdoJ4slmTTYwVaQyUEJCOXQIndGMSF61uqyI7a+kHuKbZxDJ6KYu3R4XSmDZoGWtV9OizDtZdol6
8zI8SvseERfiUkOR+2UjfXt95YbzstKfM+HdKIN9IrBSr7ySNxKFS0wrx4ePcp88S6R/fTxiC3fq
NnfgMFKk4tHDk9TqEkSLH5Qu0IvZmHodzJmivj/23szQzah4Yzz24A2ubCU9CJDfOUzTc7j/i9qN
XaZbQ636KCVsv2zjFTMVrKpPV4Ye6fPvu86RRSNloe5iov/6rkwjAMICiVsxUFZI56JXfWUWNd0O
2JibATYUXe42Zt5FiJkLjSSHu5cn52KQw+cH2iaF8XkB3bzoj75mlU92FR09do5fYXk9hQaNn/a6
+aKDIE1V9NqCGFLWjHtxjflLRhtyujngs0DQe+Nzhjjgj3jIeF5q+zenMezC1EnnW9b6DT6L41cj
cVGGTjYoz2qiI8f/7sb7AyKJdu0LlQ0vj2ioY/H+b/sCYxSmxKcy9pjqzc+JTg4uP8kaEvPYx2wV
PtEPbymtdWl0cCwkunAiZAlvrs552iv34df/hWEzn/aOvZ3wvIDnxJZ02Hrn9lszaiGvUxNY2s/I
t7ODYrkEiX++shrC7HDvQY2kCgj/mj4H7NX96+luWp19+MOh/Qi2w7em9qsygDsCd4VgAmmVLydq
72+Fvm6r6se4oh/lWG+ZZkM24crsx3TwXVS76fSpMxIDizj54YbR8gz7/QYW0FwwdXjL4qXW7mI0
8R2udXzlQaNC8RcJFNs3pJe/V4rvA4FvWO2jZpFTCoykGh4g+XTs9CMixiu+My7JsVr81XySAZGf
W+oe+AXY2nm7N8KA3sbCd7QWRbduQ6VX/TtwkmbenXtEo1k3rv3sHw+30Z4NrrtMXj/3m8R0WrKA
B8XLDa/DHw/wmoJC71N+uk2eozNAisR7L4jvw7l6WPJnxtzdCFMfvUhANK3s0R+PdSPsq/1Dxhx5
zbbG0VGhu+QoDfLRT+GYbK+T98B5ugGsMlXysBj42NL4Cu4oz5qW9jC9F9fK/BUY1ASyAkL9jZIW
tFcAsPqkemd63F14GhQ9VO4DdKQEz5g73LkazHfhoRxxHeWQqx9gBQCSkEvE0Qw2FseUYOTQnZI2
77c8gU9yKb9KLH9728XvmkDPBYXA0WtlDS6hKe8QChI4HlJxrG929nFmG08FSqYkAtfV5thQnYhE
gwKM4hmweg8VwFfdc7oREvO1FVXnDlNBAXoTNBaFOaZpYoTnugNgA0bqnLYSTjKK5LKwG5Rlb0ry
7wLuIRn8sMb7NH8DT0JCYoAzY+Ex0ORVLkJzVbSrxtHIF4vzCScEhO/IpL5GyQQIKnQzpy3apsML
j8K2fEOUiSJsLxp6T2rNZSRwMum5WiCv9GC/vlApHxTt2a14BaWHPVvl85GU2NTEfao4BOvxXVNE
S12Sq0OVBchtKa5LOk7qJ8vlu1Wot8q1ul4sOqr29DZImg7oQ7K6UEDRbOCslld4c6I601xliOEs
/Xas/9iENdt3NpaLrUG3LzWwLdOKnbNA6LQyzRy3M0lbnmLKgiVytm1wZ0eQfpAUJZUWqpMhK1CM
MFh07zwMCEg4tAYa6TEcMDM0djCupWWqZX9MUBpJ+iZFAceEyqmnBelGVaE72JCIM5fAOBzkXeEQ
BUCZyCX/fOfY4CO7hg1K4jZ8oFz6ao5n8GErfDCSnRrSOc94z1DvLnYPSDpmu3F/Vk1BBa/ICvPq
06ij6bJts+sorV55qVxglegoQmjattGv2B7iu+pivpLU+CnYxZbLdIL0S2VXxw8bnzQIQ6zuQ2/C
DW1tZLjqfYAq5Vc+0+ZvMHZKlecVnBToQLBBvBvfYOOfNB5cWvx+cC2XsriFt8Bmp351nLywCY+b
TnTT5jyoNhjibIb8rpylIeb3vdyiYPP6MPokLsCnykqK9ZbEYIDtPizaQkvcqPFCdkJsH+reVX6Q
VhTqT0f0reAlFECT4Hu7oZsRbBwYtJQs5gvZ0H50npYD6SvFENHM/lDwOfc1ueTjJdGFSne4v6VI
eQNLiaBrbPs2x+JrINZeLeZmTiN8xZxXGJwHEjA+J8rAP2njLlarQdxpBbhHk8XbYpGfoeriRUWD
phNlQQhUYgaPw3xQGgavskaFU826YeHd3szVcWFOw4/vdlaWjd+ZGyMqAVlhGh3C8nwvJ13ZPvbQ
37qfXRt0TgIBi/+eQ9xfseaQ26uAkeeqxt5V1wwmtHPxV/Xap0bgfd4Eir25DhIvJmWTWIgDr8h1
lUXn6HuULfJ9XpnW1iS/ZgOAZ9BXxwdhNkZtaGMP966E9fPWUj9dZZLqcU0JLVadq93wcoawHVFt
V17fNfEwLdxNIhy9NIA27CewNSGcXqHenRdBWvLW6Vk5VrvW25xLilv72g/HPKD+J7Jrn0NMSuGy
LgBHkO00k5QpcoNhjVYtke/UTD12IbOiXEqhmyi7YNBmgENX4PMPGbT/IdbG+9XB1zayc1DHVeUg
S3AiO1PDqrr8Im1D31Rhxk1FofdQLCtdWbgz9POg2ybdNnUdNdE55VbcjnzPLpZhY77s69ZrDX1S
zvyEGbpgdn3hH+lZPDxbjTVXOtHoc1gnIo7Z+KGIRucKXnECVPlnw8idqsyTamH7PL1601p2/hrZ
iwtIWwe3XlT0150CCsFJSBiv4gCZMYSgVDVSiOfzyoiJIRdeOBLHNCAw2sHDnabVjREgD4uRcS1d
rE758ZD/Dd8WJLbu5G7zK/f0TM11S9s+n09M9UwMN+NbhFXBirRHtyWFgKTITO/y4DYtZkrcLhF3
wSd/lmMGXnNPhZXzPQKEn5zFoo78jvmcYn5PVezdDzUFlieeFFl86ZRUefavH8V3aCCnb+SXKavZ
6IeqAcbr3rSAJHBlLR45v4bzfWwQysmebwGgwn0IHn7auFMlddwPqFVLfjKm8AYdOhPFXVj7L61N
xuISPrdmPgzGJXNVRz6KqeSGUpRUGvIDfPBmgpiCx/OtAQQlQp65BXCGC4ZQ/lfbDCLrcVRYcihT
qDpOavgAdLdqvrOcPCZtAzU0BB3LVm66FWXf7Ts3h86jdUQy0XVpWJNhOxqbp6TGsElfiWgBTJ+s
Yg+cjpKR7PzpTztQjIcCYXRI8mq2yXNGKkf1/qhPM0e3OnkhDMUPMgpuFMk9zyzr0DzC13qcQfLp
Ihubke30loqisaQJ3st4gGSyQ3uzcU25bBqMv1h3lHCAvPnTVexBOQFNjSYg0/sEVV/sTh2aA0pz
1LeYp4C4tgqDLJ2hoBByVNTjRDQ+Daco1dzV1pCPqYkrmcUlTrFHr+jjSMJGCCXfFJiC0w2NtEzX
9CC5GS/26k+BC6oOdW8+TEIDCr54EcNQHtZeZdbF/DMAnKjPvavyAR7iPSloQ6zt+1gyfFdQ0F3U
gjwPwQ6nCtajt6r5WKGfbxIQW2iN3cPt1R0R8se0R6/xVAtCPsBTXBI271yopMdiqJk5SUPRl8XU
0brHhPQK/3r/0JixwTU0p1iS7478Pcf2LnLsEdojDF7qHF1WNP/5vLzud5JfjUbCvdnJvxZRBghz
XxM3y2swckp1dr/qxMRzu5pTM++NoaEmqGgJome+GIITcVINltrhOYXIc2KEDmJtMPUnJGviZP9K
ommLDnyVQLy01QmY+CH4npklhIeTyEUYQ1Ioh2+00yBQ6UORwo+5MHWj9ebwl3MMk9Iggle8HB/y
93UIoS7hRrxTvI6R81i3+gL1xkzIcOdT+UTLFlaZ/f3/4Lx3Oo5P1dd+shqUtNUt5SKYLIL3EHSS
HqnDuPr2IGm8hPHdW6vz23vG4AN4JA6E7vl3d9gkEgmMO2H2KZ4l/xeGN/WISiFKZtR1FQRwYNzJ
fnI3I/WI/WGMl6MLIYheVqPpt1mQ0ZMd0IMvwQH7unqd/GmIxM1r2+F9TISy3QkZo1a7rtD1MHXa
ryMQyQz8G1Iz+GTqoO/YBNQRSwtgWgRsTRUBRnjjbGO60FZAiVNe1yysa10/nP7PA3YluqbuI7f0
9U2VsuYWPdWDenZRuC1M79PmmO2iHbsCFNfBbLcXHVvLb9fpvcRDhjaRMTkYOniaqUuw7yE7Frvu
EXdkEB4yyKirJ8bN4ayRd/MzXVvQggXFBORJ8RUC2j4yA40Q3OO+1Eub2twyjrtUXsgU9mSXUrag
aipc4wF922nIIU3t8o9LeEauhRuaRLCTzbSTcf4vSmLnfYPqqI07i244iz0lSLbUK707F3L1DWGR
lHLjPtn+rm26QgAB7CGh46udUM9R4GdRgKfU+HXeuecRSnWPXemtH8+gwUjZB02XhUnQBheUdLis
GfeGVwhH1hTMMojvntj6P1ftpP++BQfjoLkoLAl6QVmKY3qSVpH/dA1avjJYl7yXintJxR796GTe
dkUskH1/KEuzB7pRhoB89reYtiJj1vb1WiaKXBrshCovr9m2DTGzxKLv7r97HfoaVPjL18Ey/8Uu
vhXR9AIwnrujK7wTB/SNVxlv5h7mwvpkZ/TMBT481BH+X0RragwOPKGjYQ3gchhKk46Pa6GDVRr5
M4mUhhwlafBpeZS7030eqrzxRIYIbepX825lvIEaNXBuilRImhztJwxgEnWF1IIyU3GJnBJhiHEv
pbrAMAQ7Ro64v69EF0n7mbaIScdEFUY3YhPUwp2HOQVHeGmtTTfKxVLc8O/vlML0iCPftlXrkxY0
ey6uupcK0uGqlC9TWmDApNdxk9vZmD5BtdRyGtHIq9ek1xVtKq3EaJpDPe4VwWpVNWONuMwoADF2
Qq2zxcJqVKTlHoRHhaXvjfRvJwRUGHC8vFMOIxhgUyYuIV5yrIc8/z6Zgaa2X7g/1kWq3XRdASEF
WkiSHllpmx9qeqUz389sJXoad5sJ37ABVyNGsb+rFlIftM2kavDkHArPjh7xbUW96CEN0PY5YREw
t9utbBJYJkdh+T3aHXZOkiH8aZv3B67EJVrG8SObPZQ84enm+YgqLyqCh9lngYAoHxXkxhMlvlLq
chTwYNF8uXKfIcsrS216hmbmtYSMFnMNynGFU+jMriVvVwEYLJvMKWf0uwo1p/SqLo2JF9ilxqAg
6Hl9YIPZpOoFSSNYLRzxKTjkgPoQQ6zMjRfh2ANI/xagz3tDcIPSP/VdGC6SllwTIxRGRW/i0rTO
DJg/GYoOtb6HdzBvryWDuu/gVo8JXm3koV3dMLiJFbUKKJ9cb3gQB1jTL53s/PtUQSE5qd55YgT7
QmM45Bmy5G/2Q2eq2h9W/mj4E0fLLWHOUngsG7nI9J8Rs7k7SvVTOBUTQSzWVUu+C0+aG4+Wa3D0
lemPNkDi4vzNFttbX3NZRkCYmj+6p9kK9HjVbMm9PQ+t6N88bfFWfubGlN0deCFMzxAzh4ginuQR
0eZnglQOU5rll09ZRi0tj6ZZWkujpCxDMopgYsJrAzpM9fVVG5BfXMgtghmj3tb/xE/hTeNdBkk8
u6dSBehdOPjie7qXF7X7nTw7zH+4LzP5a9gopzJ6iMC3c5h6UOtnM6cyY2gvyfdclkbxkYuHJ12L
T1jdxQncMDB2oGe7YJTKMa5M0Bx5iw5lNV7wgJSdPfSwqfXD5pfZKRQy96/5rDMH1gG05PtuFiZP
oMBF3ClxPtuJnbTDehiEJhGdLPsMz1TvSJoWbL7jdjm2WFNalQ7Y8ULcftZd81w/lf7Tzu5xwxIc
QQt9WImS32Touly9OXFzogRZt4lHbhTRwA2KRACT/IfbkPj1vid+aiViaEO+z+cQU5f94cqeEHy/
M/dvTkqSxWXu9kFQdfqaLZFHhwTbuvywpy43Gtz8ffN/hpj50q7y7x1N/z3SRN2khmslRvgoKxmB
I8XejjWVVHFVdQIiIOOt7nZnwGhzXbljxSZlkTc2Go9MJVTiqd8SxSYQng+AG9joRCyj3KVebq2d
zC3pjJpWm0IACW/GdGs8vm7fpGcfo4yCmoQgEF4rfHiqqrD1WxbPeS5x9xCvVOpmWyKiBKh0KKqW
Y4YMzDMMf18D7PKzfMG3RjPlFUDGgZwUeaS7Ehu1KmzVHA9Ma5eEOeK7WoIVh4snFI5Bf+7vxfYc
Qh/cLByk4TmhI3czrAtW5Jrk34ydowafI0wVU+uSQa/iA6DznlOpaveA4UDcgK8AyFP+ioYG87+7
W6AOv5MONYFu+1vNBXKplOQkw15+9StED++Y8gjEuWo6fLH3L5NSI1TE4Lkl2DMRZxxowKXf7Vak
DH5RwLxpt8Wd7dTDP2SKIHBYP3EFi+shro54MqCkqTZGZJR/naQL7CrgLHNHwmllveDEmInrWWLt
tjTnVr+XaCRSzA4rGMsvzi0BJLe58hxo2hZj1xpedteXfJMXRsw5GxfhzzoYNn8MO3lr5u1J/lm6
Z9WfTOU9+NcI2rmLbdCewy0/Wwp9SdXWRsqsiEd38/4lLpw8HtfHtq8QoxyUY9dArfAQmYnG0BgE
/UWgoTzKi3erDjCFoDSEc89EUQYoRIlJpqBTEQ+J7hcIwVgTPR26DnFXsJy0/Jlo7k31w8HDKcQr
Lutcr0AWpHtn4+8HOjBumzVvuZ6qIR9s7SvD0kPZ3Fa/eVZdCRyW3wVJg22MVBWbRNNWz7hzvcvQ
m28GG3rI6TMf5nWXSGhKMZtYv//TLtsb7LDkcVTIMvV/4KZHL3Cxg1aARQWD0iJMVHwZ9yfN7sls
dZwZfEfn4G2QZ3B5KNWo/YzC9zrqntnfxs8Z2fViH8wV8X9IaSKcWUFfdb7PH526rxujPnoFEGGt
PwxhwZsUuOPasCNJE6ujkzXeTxzomzNTEMfV+Fjjq5ui5V5R8na703kJnziDt1OiZsjjd4qchnUm
mosaUxdQNlq0rKxJql5ngnGKgt0iGFcRko58ouBG800b1Na8v2l4t6hBJg+dhsafj6wLs6+wNhSQ
BuogqKqvc2PgM19Qr1LjltPuDEVGOyrjwWaIvbETkeixmfajlLRhI6InruyfzGYrtFZMDVnh1Ip9
UVBbbF+ezSkLeWJ6lhPh7RtYFujInTS13MfKXItbTUmSSVs3qj2efwOQvhv91EPmNPZ3INwEPYgP
2cFILjjjBG18sNdia7SZQehaMYzX8Uw1QHlJmNbTmTT3fXQP/ABHLXfos5i0uLtWbMz4hvxFPYCH
kQe7f9GxcW40VUeuSA2dbSb+l0Y9PVLdJr9E/TdqQe/NxgyBHiK47zD3TFVMizEsq3m1mvTQ9bZP
d1gqAngP4lCbXcErbVUM5ULnZIrPgL8fIcVCx9d6X5tMt2EBLumYi/yqsjWDWfJR6mWmgJVtYTrx
fA9s9ydrrNXAqrs9inBC0ipTrqRz+AF47UyGO6Lc4uoUrgv+pDBSw+LDOBKheX/UG94aOumPM/Mk
lMo6LB35S2hzaxb8KF1Aoipc+Gr0L7vtvnr7/QPZoPM637f+AwhTUSqvnOyOww6ssLUv6J4gK75s
jlC7/5PS2Wbjsux7QWPiHYsRP9tHjmLHycHAasx5iVoarur0VZKfTdCtmfnFQsDFg8D3C6xWx7Bu
CA3RpEX5061/K0BGoCW7D2n6wCxGOE7I6fFoybGhNFYf4KVsqYa+CuwgkNBpB6+cw6npwdiAVrcX
Pyrp3Pe0/cC6IFuMQ4tiwPYGL54t78gJ5Z/+xJJLW8qvzAkHn68NGi1dRt7Whvtfz2mIqAgejNee
ZSTJle0oba1L3TtD+ewo6OrUVRd83OHOqPxEjHjCxH7iZaouDQcyuddZMJtQFfwz/ulVB/xLXivt
i62yjWN5PAGH9WqFLCkv3S184Xdrv3S+9Y9/HlfMhUN1wXxpmrW0MvzhKH4O0VSTCAttfVNeKZGQ
oxmUyUde7kL+dUNO8VdXFBkWTKXR2piEcXTQ17a1mqdQnpMzBAHqyc01OhkbNYaFoTRa6RfBH9ZY
RPaTzHsbAGFC9J6d2asl6uCeuvKbhSWPv71xxjkgW9d+8iTQOkvsWgQFLRnrOU1LoUgYfB+85+Xi
0zwOok8z8sLRZlnmJaq2eenBHN9WgFfLMLbWQzNo6N5zFuleamDDiEZ3hrv+y2cG8ANiPgIXQBMP
376nGx6fxUR7s74Yce4h3bSbdHvajfZXZyOzAP6dbT8ZLx9eNfXK9j/wwumhPMJydevdg3UZhC4A
ebjEHuzDWtT28TDD3xELL01+ywrh+zygPrOqoBlWlMBIpplPhpT/wGIOs0SMFhlcHPxJlYu/WdLF
bvY5HmVn8qWCl/3DnX/dagltXVW9e6lSLSbA4wByXGSP4LyBrs9E+2NkNR+1d/4AZieX3puiPg5X
N0AyuJyxr3/Rrpo/YXGgNW2LH6KmPCzQ4DDaZKuGcMR8iGewuh1lRzVVXBLZCqinjTm0nimTjnbR
68G7E2gR66JIwl9tCW4Z4kMUumYeLxw/uwAoKQev29iB3XmSlUd37oZ8ObhlfpLHQA0iwlCIFHIu
WaBn3oxfKu8cmCjQevQORmXJpqlAwihLmgS+SZHi99SBexDdijtoin1fF1Sq+F9gu1ashy5/odh3
NCDOFLgng7FgKa/2RWUnZu5NWHUEBjp3CkMQFjSBJ0aRd+8kTRLr3XxWu9KeaLjSgrRyWtdPVN4w
07ryXyQWH4SemyOI960A4Mqzk70O+0da905qR5X/ka1QDStaDw45iawJnn6Lpx+Ou86nbxXE7AXe
sI3+EcJBq+VPbtfXE/T7x0sEVcur5+gadTU87ZrXMhyxdK1rgz2hs638nvZeE2vnF1nXcHmiSu6K
eCXgMwmUSt6fE+cpsWKhumO80lBvrI6Q22JqRaEg93csNRcviEBJpoy1KhjI4MwNgw3aUym497yo
MztAbbpaKLl9usFJJ94dTBfdrCbUBWOwzJLIZufk4tLKBpt/GxgT56y/d4bU8q4SNOcKLp/pb9Wb
dszgVtAottoHthDL5NxfqC85ihPIhLI+WIfV+bRndKdYu7MsTieuFmCREb/5pBEKBFRqs3IG5bxf
y6Ptx13hDEcP7d4QnLonNXRlw62237Sz6KVBVP/y9Czxj9w39XguuiD4ET/90q5KqWx8+7Cw1jzP
rwAszQQlj/LakNy7+XxxdC29YnVk86GPfPbcdq+INFkO6yYj374S7XiZ7AroIabNboCwHigC3BoN
aSJQUnf9/8JDYEFOAk5EeTtkRcZwBHiQexFSeuHEWoNF9C9l/R76vaXp+1Jy158VB2QovqSTJ8sS
XcQ6+jRU9/fx3Zjx7ivzENFIkEaUq+CEbMMsu565SEB1yPAnsneP0qZd86I9agVXywi9sVJ/x5j0
geQzzlVvmljbj1z7Q9oYxv/OMPB0/0JmtGV9BgA/bEe4kT3nc5yzFgW9jXEUSHfFBr7/Kj086rEs
XN/5nPiLSu51XKZTOR1wegblXR6xnLqIdbXhYBObVEbRCHrS5MRPjPN95EJmu8nS/DiyEg/KuVcZ
KOxoGmdxcZ5pSeFMkVRSSIp158Os1R8EsyPewQ0nWpyitMmiwQ8LFv1WalBeqW3pb9BzEp1S263H
WQhQgH4xCoURcS1sWMstyWZUfeNZYPc7c4bObFma83NSdB7qBbRBbTe421XaJziG94dldWQF1xT+
9Y+E4Zj/pJTljTtjFzFHmWmugEAZr3HL9yUZZBRcbjmvddrF4pVPXCUrmXTHmsxdarZoQF39qjaO
CjrfijA0h11zrsvO+6ZhYicukNGhId3EBifHKDAi8/lX5KER7SF2/39CI3T9nicFh8kWk0hevVZA
opkJuozpcHIWPHvfdDn5/TWYhCdo/ue3kEpoVXHATmG82W0gnws/ThFTi2ya1OeWwpR0UIPfRJ5a
VRdXwQlwH9MQbWsf2fel1nJdzFdXLSgieJEtoVyZImRusPA/MwcBWvIpr+MLplJMegnf5cvgzF1u
qynBwzjjQUve56RvbO93Sbgbjlvx3M80iHPUH8BgW/WcQkTmcf8/PyJymZ+1z5ZOvM8pYc2Db6QT
XYx4imN3Sc8e0Y4EM05K8e9fcrltHmCZ/+Gi1wgU0arc/xKG2QI54UCZ1SMWh7a2qprhuyVhgebf
eu/j0osOEGGIVWl8xRIMTJ+jPB+9KkhV2xukVBInDIz7j21pdUyxQwzbkw+J6CO3qwiPpYYGy/Di
iPi9QBrboRQH3Qol1qcZyGHREfeb8QbR6d2ny5+Beu05th08cF03+OjG7pfTA9dUabKWTEHXAOVA
hadRfG1IlB0cNN1SnPIBUGVw/jhgUsGk7WlbAbJotUMUKLuI/Q4xBjINz8+kw3zOXhfCbc5OZaHL
dRwE75uz90Pm2ePUZYN9iD1gZxFn+UpXOVI6PIr29LJOO2C9YyUtzJfWBD19ZUi1dw67tGyIDLdx
9v//7LcH8aXP/uvM2p2iqqRUsgnQKtI934JWOJvqW0iRWK8u1AZJrXQMSDjZeOJJBO/nqKc9NyUc
hh4t865naNlC9hIK99CYmeqnIfLuW8gxtjFziKulwjn4IjOSo/SXmfLLg+qtFSW9BWkmdfoFUy05
5ooSdJ7yZ2jUh/dKB1cehos01R9ieNaVaCEdVTGCCZ9pFCIqaenAxmqo0EvO4NEEnHE4r/7WklFM
nB+O1hu+sycIFAXIgRH3hJRV9gBIEnBJ07FjV6ngtGk7OMSHh20W7ddKM+ND4uSOGaEfQg9fPM7Z
JwzZZn/7GJHrG0VZQPWln+IK+fxVQC8q+822cSRmz7zS71VSkV8KPSnvAdhL0OB/P8/f9Rxcyusg
8ke6FLqhzRapGsnZADLdX8Eg9kW4ANUG4vR1kz887CUS4BGgxZjEPcTJiclhRbNLkRbXdOkrFhsv
PpXA8zu0Hv3+m3caDv8b1JPhk4B87ELbfrCYBUBniuIEOb7CBaVRk6vdhU3vYJ1oQjDPtatueDiC
015mBMwwlSEVEqXWyG0+lmJCDfRrpVZvb64Qa4M2c8GTyPpN5XmKAyhM+3PGsvx+sDQnywjxdxZx
vjCYI82I6s+36+90GP2muhJ20O+g/FbE95lWs99ptLsCrC5vrJoMFCMoEAz163nhLtmUKnWJ64/Y
37KuEw1DnaFW4Axv3v+x9ZfMqVvsb7Hry7TuxWikLSXVhVggl8yGVhwP1wUO80P4mdMGhbkA8a03
UzQiffUW0FY3WTs5uKOuKIhT+zR2PdnVUgY26IYxLbingG1fliQko64RGBD0sGOyEoAfknWUjOPM
qyrrj1OWbxAdfgm8x0aziLPO22sKM3LG1YmXIDo86F1T6a9hbtFc0xYAPDPxv8wzUXLBNSY4Icnn
GaPTEklgcXOHrqQLCdLoRlbOYai+5vKeMJZ0HPUCzP8t0SNQaFsoM4I3tMkfbOxpaBNxDvhpiINA
32VdzTh0JKib2wrnOYxlBKlFs5TmV2e3tF3YBJotoeRxryFAqoYurtdCxUQfjuEmIWcEnzvF3vBg
0qqhqyAHh3hV6hul+f2UaRBDtMiRwm4beuuiCh3QQxn6ggpptUWXwwT+OE6r1KL+k6FhEXXlh2+3
v7qJNvHcy9rulvT/E2W2YJ23blXvfQ3DdPVyDExChiOk0gp4bR7P8RkBeZ43VKPhADtNAhA7PM4B
AzRgaS3Vzz93q1ZWiCPozj5urNCujdKDDpEfVF5GJRC704uK5g9d6wmydG2/4TWO1bpChyc5Knrr
EcJa9fQKoKMrWMXkfd7vGYoQXYqrtCdePVCHuN9hvuHuzl/YDu3uftaCipg+Y9peuzQX0CYn200k
MvclwjunS4eWUbr06w31hyk8hnx3LI/g2Azc80uNrEV7BByXJI0tv+yb1r21l/qtFirJVArz3gh+
d5mcNDKVRSaBrk901TqRWisyEGw82L4PZeNjxKcFknTf93xcrdW5FWDrtmXtwhb82EWsH3IsNA8m
QysSxPi6vlSE62rR/9KZJHkheCudQCyEMeJI1SGoAf8IZzyUBWBKGw3spfyWdVO3Jz+5uX8v3b2I
XkclU40E1vLUWV4SoWTIjCw+tBsKCx+oBNHDXJ9/qDG+REbiiQmQqULnXhQOqzje9tZ1U7WOlR6Q
p1AxxZlNttkCFhZ+dC3cJip0NzFTx24kC/0t0Xkk0JQF4izvIw7qW6EK59dX5jgKx95NbGz/1O0N
tgiBs+NMYq1c+UX9ZJK7XpFo07OhqLYTIl3n6lWqwPBmUD+JS2z7nwvPmEWBZxbz7djXF+uSa/5U
gAe+gKlRrdmr8uJ3vlxK9xf+yXdUNc0VTROTXhyVv/1xuC75mN6xlURiPbNUpoxiB6/fXxEg5Sv7
M3jlvEmr7XEaOz3GXJ85pHAo9p/EVo7zY1j9KtJ9yo4HKOdsTb1Z3glWMg2gHptteVzXopN5HoOo
Vj+p53cHon7ii5BRSKfO8JSOYubnSsN6dA+aO8a9RpqqQOYywBNpXZuxpelvCv1BiFE524zkkPYj
EgKGF33mQRZlhlqqMhqME7ePOSin43lnEypKzk4tt7EC+epYime83oZ24G3tC8fPzJGCl1jP5yg5
jJ/WP87sy3d/AcCLgyo1RUj8H3tEEXQcvH+OYo2KF96MMxikOaGsCZYSeygvEw1aSE4CaiFXP7f0
xzfe4wP4Qzu9NIxYHFqHex3LWA8msgQYhG43imtykYQTx3SPJJxEOky47x/mV7DbFt8Mme4xmybS
pouy7GeL8QeEUQLAW1U+oBjvzR5wYvHpNmnxlSgjCeV5oeV1XLBhcNoiVuFrXqGryAhXJm8A2Liw
8bmudbpS7OVbxiHZ6hOL86HI7NtbtiCmrfmyMf2Ezn8UCW4gLsNVBhpYth+76TSHfhUXgN/XaeAV
FUcdmLIXNM+1BI1maBOsfUUtv7h6++VOc6RmV5IxrGlQGBc/RAdwqR0r0lk0jcOPTdnb+EMF0jBW
dEN/88GxK1l+nAANz0hjpFraRxB/78owCR/KazxHuWgT+ZMXsynxGuPiM/6Hgeon1q9zJJA6U7iq
1yX7vaHNjQxSq5VTGRhfPAZx0oHEzVDn80sEWAF8IO57Jkwyt0Dw1dZGx5BnWjpfP5ClAugJfxNG
m34G3hdy+4oUCBFvHN7NeVmBBpyK0Ewb4Fhf/6aoNHVvZLZTre25rk5amekb6Z9j4EqU/DjI6qPa
AxYQ9PoKlphxXmdI5CDzpbxTxomqQpD/+gEEm0Kydk7y4LmefjW+r7rHzpElfas+PRIKrmCl2x7D
ErJt1XyGJ/Ha9I8IQUo78z9gALBuQG0iiudLgtxoyF6TRtOg2pRXtQNYJWLumcKl6QGkJmnF1rB9
gpIBEPM+RCPVfKEwskWegSR/VfM4lvpb876DO9SYvvoXcN7MwfD+mtkPuhKRUBMmoFwDovbYX/IH
PT32xe4++E8shHWucTnlhPvQtS21C07nryffABo3Y98DB8P04kOVQeeEflS/xGykNIJgGRSXIze2
JhSZHcEA1jDZPKDuOLEw2pYwVdJbAIxQ/IG2MAnW3c8L9MN0ICLcB5Onb+oQxPV9u3+HxpLCDbSu
ej+JrODOxoGDQtlnS2+IR3h34XNnvTA2NNrbAHzcuUrzaOk5EROvTPXwWu4OXpf7LHCvAj02kMmN
yJp34M5os1f/zdS3ZekPf0WnFgKv+VNr641yxXZKxbsF8mG+fBPAdAJMpUTAXhroX/vaqGDmS4bl
avBq8sl0ClKZ8WTe0HuZ+CUfZhsLT6u8GS9+JbA/TIEbhMPPsjFjpj/Rudyt7JSMTt49gPts3gS5
o8yxNr2a3AfDdvpHKlvbWLoxl5Nfjbju0MngnlGbb2eeYUrftYp+qx+drzjgDKUo4aJzRvKAcZ18
Z/rWBreSUiheN7Mzm0c90DS0oFa9r0Ze1/3xGfGHEuqhT5sOZsZKRoZEQzV5JsYGc3GtWKRRSsef
3HgwOyc8qgNMTlVmhJIssTVR4PWCoHrD4jlAOo6N69DFP+5+yEueJ6rNO3KNEf3427dm76+ZbnxD
lHDeTVO+XMG1eZPXZK5HUsREitlZQykdi/UHep4R2LbGsjFLsL2pIdsw46yRDJlOReHCNo6oNI82
XeaIOFdMOd/5ntc4UMkAoaqt/UaxZCBig/MhYgLHlKrCQtbJhydYK2iLYdjAUxaG7vuCYLJRmVWC
3Wc/z7BpKDqkNoTIRbYA+oUPPmzlmdMAChkzHKdJ4RTEzn1cNujZrSiad53DV7FHxYNHjCdFGxHu
N8hGeTgQYOzy+/aTv/ylVKqVQT6bWKLgDF34/BiJVSwHnS+6/ShfpzqXhVtK6kvJhU2UpZIVRJ2R
o+/3EjLzBtLLQF3RQGXRJgIopyC5wIzRBEIxr3MdSpk2HunsobzfH7AY4HN/NxMg9Qjf1B7tT/lW
7ZNLUVRppZ6e+5Koultj1/ojgjVjgz0oMDcYXGhQMpEVtAAqdaZGDQb6YO9DYDoZWMuc6ncWAhOU
DSEiwOA2USA3VsUg3B9g6LmNYcL0Mwi3wnTMKZZxreDYKhS/t4QxNfrLweGvul4tpYGLO6y5VSy5
czRqnZuR/sqDnu2VCAx7/bKKH1DvyLU07Dd0p5xUm32Tc565aelxznrd8bJqapuot0zpezqdZn7u
k6SLFVs8l/zq3WDzZucuPYGzK+qoJOJFIfO64zhBeZZS3Kj5rrpcQXVH93IgNkNZEYT9zUU7O01E
/1ln8U50cszyAPcSp9uCUBxU2vJr5wO4dXZq3CHFqrGOrSI58nbbdhLVaiP1GM3pkq8XrH9OTxLB
aSU54A+zxzM8cc174JqzQDxwpVCEmjmNLKEFbUJmGmGvE3DsbT6jX1ivcKkJuFIKrmIg2EGMCsJI
98SDsYY+1s7A96vtyOMDfcThqp+oidj8l0P+FQulhLZxmpnAxFydMqfkyrMhLBf29lizhCyg1ruk
Pe7Q8l1PmN51a5JGYwpSFxDeygFjn6KWd16zo6YQIDkB0KcQSLPvE47TWNM7H/wlfhMSbsfq8PzE
bdPUyYvXo61+pZfPglZM0fmbHV85pR+BL5aoV3k6gvLHQoGX6ctVeGV98nyJ2IwxteNHApDOZ1I1
8sgJxY7ULUqCgyAUziozTNAfV7bQhG3hxLQW6GqPKQpZT9GrKASglv4758lV0C7fF4ZNYAQw23Nj
z/IE2kb1EffQuABH2lvN/1ByK9F8CCAxQw1Q26+3ZWUj/FvIM+zxXwNPaQfHyoY6arauhE1IQee6
qdNHj7RjOgMZPt7bbNor2E73Jb9EAFzxkn71T0TWMeJonrWRQGCVrf/VbBxt88bXS8Fb91GQznSd
u/fnX8gdjaNe/Gn2uW8VDH13KCNeAj0Iuiv+G5qZUxi6R9D2mw8TPRkN6iMNPDv4OvqvoXo4P94T
s4qogD3KDrRMtkthizvkeGQ5A8lroAj8n4O89hpD8g0aAhbOtC7AMaln4qe2fnHjxV1lNM7w7Rvv
7bCC+cQpHnx7oHvVBvqaKWd3oprIdXdKF03oX7QdkBGtHhKyPI23YsbmO45NKNm8/QvZaFlwyLDR
J/JCitAaD09jErnX7uFnqknLpJz2UCDH7gkTAr5qpOoBERlp5B6VNCtXCMSYylHtFPJn2V+JT6aG
U84jFJFd/59M0cvoGYbRdC1UCawm+j5WhiJ63Ggkd5IXLED2zunLEHkrBGjWan0iREoj67/zci8F
i1VpYLA0GR/p2ol6dxKuFfhyR3bXcDvXUMNccUuVk7s+DlxoBW80BKWnBsVEmPY8d6rpNhzjNT3Q
N6RqWFXaGv3hCt84HlEXzsFqFuGa/pZkhcDTnSHev07gzqllBEfYguQkC/7atVrbjPMykxnZMga2
jKeXTbrGBjVWNA4vk1xENm0cQ8PT48E0BqXInnji0Oh+t1AhNz3DIPtxuG8etQNlgdOtuw0Ioiov
trmUouZ27NuD8Bc49GpcmEqUMEykrWER6ijiPfEUoyD7GK+iNIXQds4bX1tabwWzzIxM6sbgNFAr
piJC6FXlJjBfB5MU6I6bPRa9fgVs/osWqpoNYaB0sueZkZrXugrqSVFI0IPRbm4QX9XtkNiUAUmj
4zRsbE4qKpjYRGdBEK4L5VJEZYGSSqH1rZtIa6UJcRtSk4gCrxuddRNkhNfDYcezmSbmI0ar0VgF
6x8s9ELPBN8m8E2j58fDNXKZYFFh/hoW/2K9ImYTEme2sdFTYXjOikbhwWbj0koEMij6l0mqCsHe
rv+30U4nQNK/Tj8Sxa1ocnI2FZMVCVStWwe1lyFtflnCI4jGR4VhGf2ALE+VBHzA9EjJ0bxH65mt
2MTxmsCKeycm9aHBRrSVE8YcdRdhnzvbRHvvl6kzT3teOulfXxi60ru3pSgK3FO9EzXoGR1MGQtL
XrqvFwTZunWDZehAoEVFFpL4IdTZs0lMIieq4xgk0+0nmLXCaDSU/pLFXNUn2iDK5BeaaDBpQypK
jcYo3wUUyk/+pybIlr1Os/teiZmbIM/+VWEV09WstE0/Y/XgetOOXe+GmM0xIxjbDPow58Jqy56N
Qk3UCpSN9V/qjUvTaGtsWQYNEgDpuKhKr22RN/lRN0tH2vjTtPKgK1GRoV0QhHe2ffsoylMRhpjl
qso90ti8kic2GnZ5i7E+v14Rl0yII23YqW/pH7/JW7foQR/7wwQ4kbP0fks9Wwpq8G/crAcSFZ6R
UiuTGul+8Ra3xLxso67BQlVrzUlp0D3xT630ehnHyyX6aiqBZcdXCtP0zIjKpQvE6XnG8egdAPaq
MNHIAkRwHE0x4CT70ZsK4dLcsdmgGPYpMM4GRVxh6Gvx3su4KJwGgLXu9IbQlL2W008YcKCHjknL
95lK0e6oSiBN0HzSfcLjSoJbKjCrn+HAeLzXjc6GLT1YZ+wVeqebB2tBVoOxsThPDQJ0bTyDEfLZ
QDiXirmfsNuwJG+x6JYzKjWGyN2DtCkKQ3gYDnp6OMwIgn8HEgwpbEzYRMdRaZLeym3t4ZvXIJ40
ylZ6suS6rPLy4EAss3j05e7i4tJAEK9q4McX6avbSFBRgX3T7MpHYtXMNze266uXZ8LSURZK9y0g
HxaUBX0jhUqhQR2tbSF3Hcw1+gQcDfFe/JMl7Evjm3iiLe59aEOeK9KYA7o6t0SK5wQgEu3UoEP1
FNmUNafiiNar9VtZvMmFvLMtLfgN/803dcxgYa0r1JP/fQWiV3UIihm4SqH3O249h9oRAFuW+KD6
QZufksPQ/S75egLHWqC4HNIJZjhyQIwrXvR9rWpvsCVRjvSXL1Rb6OwqNl14pez+fNQhKA4dM+0D
lZVzHmUYP03kSr48E+6jmKlNWcFlN567aNglXUEujHXbS72xj19ZDoXVyUH7Zo3FaWy9xfH7dB17
w0mHRrkXmGJzTsDICH2qdcqGPSi+KDM77qbgCIZhpRJe16yvRTKiTdwAvdZEWWfpRB72l/0DcJI1
Z2NuxP+pmjMn82Gqh46LzJC69zjvKmIA5Ia1qPJk8RHDAD7Gzso+8uBK23ZRnfT6J6yzhK5vmsUc
Q4N0gFH6ESh/PAUP5niIHk/532PnV9gUuFnC+izTvff9UZmpArAg9cLKs9cx0HTbDHqWkWL1/PjP
wQJexXOynS4UR6Dizllz/pv/JZA8LJPxV8pj/VTo0csX2b5DqgLNc8byAeQ7kGQTrfMemO9uWClT
CgLIuzo6N6fRDBUtBQMlvEYKyI2MGKSWXx8KjBarSOYRmZ45g3nLoaVtjyhMIcIqMYmfTh86tmWk
gurjEvGkKtx2z63oR/ZjGzV40aUj6TwvAKBXzuAGMFBLneQ2IavhsYne5NrCEaLLqcjqpT/OtyfJ
vVnIhrp8BgeEVd83pV/ZvbnLNQxbEXYku1st2ovqx2mvaQt+9twVjizeu+X32MVJT4rdLhGARDr7
EuQz0/K2fsPLuQv85jwh3s7amRwbAtZz5Qrx/SPPY6Wa5X3G3lMAjkXKg9AqWYGg+d+eZ9+80/ok
GYef6bvxDPeTlPg2JRqtrG/sn17AATmnihMe5NF4aZbk+TYH4gje1JGcZ9apcCZks+OvLPVHeZwN
QyNgz6aQ5DOYxc+sIoHpJv+N5zdF+uD23nFG78+BSY4Bd2RpzVPNF/b53gDOZTq/25v5ucGNUvSC
mknuLswLMTvPz4XfAjNo1e96Sb4uoY9pRJMD2F7l1N2FjC8LHMvhmsvgqZkjQYXj+tV5lRkssuVL
Hwks7dwbl4SfFJyMhJEq72YGulnNEjFE711ddmfAtCgMTrJGpjXGXMTTRO8bdmYaxaVmdi54/PxT
tz7brPFNSZHrXSJQOcW+U+JCGmt1lL91tcYun/vwgbDpj0bbcj0mDraSLVv6Htyr4WC4jl1Yz8kF
rF++OR38Jucqus90TfK71YKoW1O8utPrHByUeU3hycYbYNaSE2zQofATb9Ac2jTHZVhLD3rWQXCU
9gT+8Z7bXpN3nXQFpvF/bwbDLEdsBF1B6Vq68JtkHzchS7USGjhJ7Uq5Zo9xKp47w5mHjk7MNccC
kjclLj04uEGYcRZG1eMO59UD7hbEHDQASVUOGReeU9S7etzsZ9O2R12/fkM9bET1Za877lWs4aXm
aFhJh//NXg27/k5Jw8yWMgTFYa97+B1ZT9p9uHCNls2hHaeBXxpXdp9ASowFe5tCZqxiH0GYH24o
JrwWWIhD/z83AWjBJ47tnOfjEyg81EezscGq2msqVz42M7lKPY+v+YIats2JImAWNVkJCO4cm/jp
KlSRAxmYKSNGLYoZEW+1NruMI3vD+G3uzcrNAAFSf3MgV+dgYejOH6ZHiCV60C/AR1Pu/AgwCyji
rBMgFPNeotGcTlCdw7z8lHBSD57byAIGzqXaAzgsUBBUhyj6MLRtks46ZZtbcsWuMVwgfVejFiNi
/+5shW0TGomM0UE6M+0D6nyNSRthVjWuwlcQlK9ecVlFR8U8+HBWSXQt4E6yCdxH3e5gHHr6n5O5
/a0+hQnf9V2XB+1AjLqX/yi56jRv+jRjDJ3MdgG+JC8nv2vo2NZeQHu863YpWoj/GVCWrE+iWeNk
KpO/++cuxz+GucLCPa8iCRD6NOQhRYrSENhJljl2IvqsjwHOYVG9Fq4RQnKIdShrwX2CF4leFpmP
KJWQUNaKvOHw8IzAOq/CSwkDQFHTXWg2za+YdB4jN/Qy5btqlBJPCM/5p96EsBzROSl4mvkI/vp5
XK+Ho4EVi/Qi8hwlKUGE6R4ShT6UFWGJs3N2EBbtp3/8HqWxtv4kG4PqbyWlwepK4NkOwZEqmtuK
YSgZzR5T1NMyygoHDA/TdQu+/2oJYyqsY1Cdf/AMHda0+J33NZ4KKybdljfUeH7L7Fep7T89bJOh
NWtRs1lgclGgB4iFHQLU7iSQRlTjVpiKvkJISG41OxsWPtHfYQoerpPx95XRI80AZJS4uJugWrLT
UKR9trZheXemISh6ANyv5unrAx4gb2+yXaXBVP745HReQNCSp1TIGGO0ssAAXpwc8KDVqIc6cwnj
EFoyCos74MxigLAi2DhNOfQ6zlE9IXD2wjx2OjPYg1lpRKOcmB98RBT8s4Er0kwjs0speApH0rSz
W6Yto1gUE/4ybKNZjMwxCxBihzFgRkPxktxNtUMi6W3CUG43rGk3EREAwI61Azyow9WqS+HyNBGI
NiULMQlnXgBrgvjgDZxcY24Prf+Y+OowOf+FwZAOJBcYgnmBUi4XBZVjFRSWocGkbNsQc1k/5Wet
3o/sC6PSi7/z79jkrWZYHi3h+0TBdC2p8BcuI20DIx65eca9WPZ7P4Uxic3lqXf14tcCYieu5s4W
Cv1F2v9XUzmhi1t6Ui8m0cCsjiU3622B7oZXJ6B1GGsrhUkFy+dimbZjUGujh7spRLCB/qifuTGy
K+ANB+rSUImaKMSNvRSvSN60KwjNYLmT3/SkjP2bBKoAWPS5naR5Z43bRV8ZP2AdpVeBjusalEQ4
yWuRwDba/JpRZ4VlOTVjkv0sVcE5Tv2DaZ1/Y8Uj3ZZ06NLKalN7bbAz7TsmSu1lMmdvzFqEJ0Xy
86WgZ75xDo02tJI0siOUx22/btG6RqKjVJxf7OAgArVdmkc1wUpzQ5+amVLoLRHalzmCDmxr0qQc
PNJMBkzW8upeQYZA0RcyN1vLo7GnrFuiAfgmUhcQVXtEnS4e/yUFT3RTioPcRnDFJMYnuZx9rCl0
XDn+uzf0YivnzkFbPrB1eS4QgWz051eeYb9ZfxcSDyRaIpVaIfYxKBm++GO+5LuQU1pR0CT6SSAk
PWrWSMK6YMeYmHseDG0KksHEiadIaB+o7QamRMgkCzwBIeL9ih07rqLcN1ih8EIxYuSJtwT9Mb1j
sh4Dfk2jYVelwneF9SUDkYG3EBOF9V0uk443nxrbuWH8DK0U/JPsq/BEe4gFvRzhsPL03SVsV+9G
9NksJPcjpl6hGV7uazLWs5ZrM+7YlUKQX1amdGjdQaT2r+Gf6CdHmFgk6UGun1g8fH+sST+jfg8X
hNgrEYCmNk+D4vApBHI0YEQffGasZz4cthoM0h6VPrv3RQfACK/Lk5VRhGzXp+0HeMkQuh9i5IqS
yvMIuWVYC55XBTeTXJEW3eDZfWHI7mUmj1sJj9NiPziI6fRrs9YUU5kIMY2Mrsw09/nQ909DD/Db
Jxn1N6pEgG/HqAp/BfwO8EHvppOwgT+AaohuaJkc+H4wfG1fyyfx7m6xe0bbszhxDPEUN+sRkGmu
cIRu2lSseBaX3WBzR4uMecx9LN5tlpiszyQEe67E99XugoB9o7shHPx16zBdpw4qvUorbF0T0N8s
D6jOHivoqKFEt05IpRkNJM7NcTPlE8bNFendvJBgqpCD2d3CfPh/XF6dmPscuOXctWPowXl9rst1
rJu7Aqwr7KKH5XSR2re3h/yiGgljj3fqkda8rl1oGV/MsajZYUAOXdUAahOdqg0tgYrS3BFbo4fk
Yuk5lJCQcfCeEGNcdlA/xoy4ead/W8yTdO9mSiT+O9nyR1R1LJLLpTUFZsCkciaGUeAt5p/WK5zW
ESRPl0dYemWT2mDLHaQTBUQEeIl9te5JyUTc4t8BlcYKDly3QNDqg4+lp+jsM7UuTFWQwXSp4eXi
LVH9BjQKnKuUiUsMPzbFBhigm92uYUs7HIpDD5XSsVauQa0Sww2Gh9E2pvfa2+pv1sT88xQvNnpe
teLhknZ6Koh1mHHgJg/m3/91qLdM8WH6Mjmgld4Uhgp7274Ujt+CfehyZzmv1f52DM8zVqwikt1M
tRndkuB5GPLPnm/wuFFXX5/I1c9ltpt21DG7d/xnijHWOtZq5su1pPzJmd21VYNIe1TUwQTRcBMm
aFp6P7qEEKdL3ISzQjxUewABDyxW2NOt8JuCdjbq+G3dgE+J+KbiZi1lvQDqmf3wL9Na0GCKms6R
xO+BGgoL0IhpcC04S2IkG9Uf7O0ebnkO+2ZrqCNMXfl0IjpV93LuDqgZqSkwZsa/2p+tOp8mv9x2
nny/2l1aY9a/clxtko49WCkCI/7RU2L5qnGqdm1GD0lcXNUgCfY63n333KRog6P4gg==
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
