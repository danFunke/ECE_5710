// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Nov 13 17:41:17 2022
// Host        : Winterberry running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/School/Fall2022/ECE_5710/Labs/Lab7/Lab7b/Lab7b.gen/sources_1/ip/dpram32x16/dpram32x16_stub.v
// Design      : dpram32x16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.1" *)
module dpram32x16(a, d, dpra, clk, we, spo, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[15:0],dpra[4:0],clk,we,spo[15:0],dpo[15:0]" */;
  input [4:0]a;
  input [15:0]d;
  input [4:0]dpra;
  input clk;
  input we;
  output [15:0]spo;
  output [15:0]dpo;
endmodule
