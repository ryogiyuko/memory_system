// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jul 16 09:57:14 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/github/memory_system/memory_system.srcs/sources_1/ip/Dcache_bank_tagSRAM/Dcache_bank_tagSRAM_stub.v
// Design      : Dcache_bank_tagSRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu13p-fhgb2104-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module Dcache_bank_tagSRAM(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[21:0],douta[175:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [21:0]dina;
  output [175:0]douta;
endmodule