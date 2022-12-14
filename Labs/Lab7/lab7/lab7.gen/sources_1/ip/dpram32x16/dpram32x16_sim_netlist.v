// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Nov 10 00:01:44 2022
// Host        : Winterberry running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dpram32x16 -prefix
//               dpram32x16_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module dpram32x16
   (a,
    d,
    dpra,
    clk,
    we,
    spo,
    dpo);
  input [4:0]a;
  input [15:0]d;
  input [4:0]dpra;
  input clk;
  input we;
  output [15:0]spo;
  output [15:0]dpo;

  wire [4:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]dpo;
  wire [4:0]dpra;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_dpo = "1" *) 
  (* c_has_dpra = "1" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qdpo = "0" *) 
  (* c_has_qdpo_ce = "0" *) 
  (* c_has_qdpo_clk = "0" *) 
  (* c_has_qdpo_rst = "0" *) 
  (* c_has_qdpo_srst = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_reg_dpra_input = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dpram32x16_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8j9uZAuTSdcU7d37hOuvR2eN4+hJE0SQi3782LtikYHlIhlhzzBECcQ3wckATmgIOfJCCVEoeRA
ZabxUB0jmkGFcM25pS42us4l8Jw3tzYXg8dRkvx7VRPHyWH9wXwUgy0qFUIqbS1K3ToC2ti3Bihe
SaejkALX/yf7GEmQSeg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KjnLJu4SYrpE4qQx0FJobDTHe2g5+n+Q6FObiGTKe0NVy1wB7V+KEJqc+r2xjpEXlquV87+TrOgr
yoeXvSYsOmh/oNv+5lpsb/kdhT5EljdkfqI4rTDdogwIRbF5iSu9dp/2OtVr+nC6QYGDI0YDgcO7
4kn8ghnBESoln4PERbuzfTfbc58lo6Gq5qv7TMTjDZMRiN0CUTCuYzVqRTCRXkgTDhosefVDs6Up
pB5jZ9devajNCsz9yQIQtxvuN9tXVWeuRueNFB14r4rYY7F5/otmDqvKgCWwEXtKqVQNj5hQkSFz
YWx96euGqafcGtIs2W0H2QMov0vrSxi2Wndlrw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YO2SS3ozlen3bngSMDbc88mazzkono7nFrse2QdBdhm7cHsDiCLJl1u/2ZwIFv3QeEbCn5u5q8hG
TDNHI8nZRuskZLs0BXqig7uplAiktBJEN0l0ei2ciUax4iVnRtCVKfn/M+BUZj+banPiWp9Kpdml
VOrMoFqIXebJq184IVY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eDqyXO8M8wAUlkNysOtmW3Ag3h1qUc1ksEfo85mvU5cMYdCjRVYz6OacttNeARjho7fIzXtgtHAi
s4cOsFuah18hkHlPDbWnJcyaBoN1UC3zH5Sq356+JnD/+tnBnq5OlU7W8OrboEfK03go6Zxe/y0y
s5Nz5MFYMngLELHz4vZOYoOsO0xFsbio7vDtFzbgvpvZVLhKvQGtVdJsfIEkBd5elE4tTaYSPadU
6/cHnyXVTNeuDPFYqkX5j61R1m3f4zfnkdWn8CSZWYouhfpOaV32Tgk2834g6THkeV44U6Kee28f
2zM3Vl2Xrsa0SP/3vltYwvfGU5mZYQWr7lVJMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aoJHr9XKFogp3jqb6pnOP1SMdRNgax7PRBVL5oP9u6EBjCyOxasIjony/C5q5NGBilztG19Wtj7R
pSXqIdzborswgHUyJ9bwF4lzJzoJcmlMej18+z1Jpel6fGTc/j055Fdrvxf8H5B0py0ynW0+fDNZ
zPhFWIdVVbPKObUsbSrAF28VEEdjfIanMWusQBga1WgtIzzlY2O5qHroTYp5swOjX4CzofsxuVN6
zxftYABV04wUN095K7HOK1DJ7TAXkfdSXbtZi/YpdsedZqTNxXRNCMIadoaueO+BVfk1QA6R8ep1
QEt/eDqhzxImaL/W5zdRu4iR3rKrxE66765F1g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CgtzskH+mzmGEWqd7KptSOOtqVwPm0tHLX1SSP1oz9rDkV9s3RKi69fpV8a1hfcU7tArjCYftqG0
OvBq65dZs3YMQA33i9lNugkOFd4s4mWuu5Jl7VeYn+9Rbn9WpXfIZp2ZhSebC7u4L3PU9Z/nt268
TK5LXHg27h+Dh/nfSuPBuUJcCfpFrpuNqXFqczDxXmwttNzz/5sbeoeBrELv9ua1vTrye7Ej9hF+
MotLlCmiWkkXoEFD9pgzAoLciXYvcnbqinUVZBh3f4F63hp3dnaF1XRU6BQXb07O2YWHsXMlKNt4
dK69u70ApIkoibr/gnLIZpYXk2Aw8SUE6s7f8g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qsF9lZxi/zzJVv67MO9pgWqGUstJe9URVdS4Sv0uoJrhh2rTsivGGCvajhVD4t887objCstZgTrr
GYoUVZ6+g5Wc50Y2H3Lujxr2ttPiAVBcqys8TNKzDd+sqqU9enMiC6oiNqRB47MmOChOBEVYG9po
MWBfSEOoqO1Bo4apr1ti7erpbZIS+vDEvNVBAffYTcjwMJo0YqVrHdgptBq2+soaNLYmiqaRp4+L
E+a1aCRpXco//ur2pwZKefYRj1Pbc3mGa0Db2EKTgzYxLCUc2Ni0MogHDl9nRduLW5okZXPYINE9
ZEibZH4ij3dCb5HI1YitvIlSsbwkthlrTRuwrA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Kfvr9uGICBYg+bSLCIkImscNd/d6O5EKsn3LkkEE5OLapxJgQzKOiesn0Ix7C0xi1lWmgjVDszTB
1+4PlhsdxFh2+tLaWEL5PS8Y+wY+Z6QWup4F/pHxKClIEvUeQqoxvy/4LamzYL84Lk6M8riHxELU
+UIySMpujDpmvesYeJcr8406Ky08tXu2ZYhzpI7ssAdevE5a5sv9uGOIE8SIM7hMSJnH+kDqv2XV
DCjIB/nPCxYZc0dpsQlckrpVRPSgn2XaJLX/gv1m3TBeoBxFtKK5IcQEbprjnUtdBRAJSECHzJ99
klwM9H7sQ3olqvcqMgxh7KtmwR1Pk7/BfETOzoythUHTo20xnhDaqT37g+zkKDOX/KMPxPP/+8Mf
v3C54uoO1KJz8iInxtwwu0Gkg+jGF77lLMNhR/s8ZQa0xupnEtjRd7L1H5D1xGuzhnimxL6oJ4lM
f3ToIlUmMffRPBpCLpWb6aeZZQyBMi3q/mdNpJxSTW5p99Bkt8UAcy2n

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfapcdMik5+2iWCupVkPJLH/966AXOp3PqrBkJuAdqp3INTQeZICoWcyWImOR+Fnd1UbR5M8rJYw
R8Cjv4QYkt8kMqp/W6ZkPKauqc/dV4hHTgNjWmaDEPaIWvhXyVCARs6Kkc1XM9Id1BraWss872xt
GalXd7JXwJwOrBSKRYIZJMAvcqANDFyws1jlxEcuCKaxlT77kayjELqOewDOTN89nkTaPS80mBry
uUoplb7zOYXDvaWu/iVZ/BC1Iq5miXVcNAHb14TeyqXWwAsSVLeUJgrmOaKabKq2FRh66iEmv9wR
IeDmDHY40ooDpK1V7CDq6vBkUhnIeEQ3uiDy7Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21520)
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
