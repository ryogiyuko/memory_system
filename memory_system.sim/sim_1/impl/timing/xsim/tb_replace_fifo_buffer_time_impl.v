// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jul 13 12:52:00 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/github/memory_system/memory_system.sim/sim_1/impl/timing/xsim/tb_replace_fifo_buffer_time_impl.v
// Design      : replace_fifo_buffer
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xcvu13p-fhgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD25
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD26
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD27
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD28
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD29
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD30
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD31
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD32
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD33
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD34
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD35
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD36
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

(* ECO_CHECKSUM = "c69662aa" *) 
(* NotValidForBitStream *)
module replace_fifo_buffer
   (rst,
    fire,
    i_replace_fifo_buffer_addr_9,
    i_replace_fifo_buffer_write_enable,
    i_data_in,
    o_data_out,
    o_w_data_out);
  input rst;
  input fire;
  input [8:0]i_replace_fifo_buffer_addr_9;
  input i_replace_fifo_buffer_write_enable;
  input i_data_in;
  output o_data_out;
  output o_w_data_out;

  wire \fifo_buffer[0][0]_i_1_n_0 ;
  wire \fifo_buffer[0][10]_i_1_n_0 ;
  wire \fifo_buffer[0][11]_i_1_n_0 ;
  wire \fifo_buffer[0][12]_i_1_n_0 ;
  wire \fifo_buffer[0][13]_i_1_n_0 ;
  wire \fifo_buffer[0][14]_i_1_n_0 ;
  wire \fifo_buffer[0][15]_i_1_n_0 ;
  wire \fifo_buffer[0][1]_i_1_n_0 ;
  wire \fifo_buffer[0][2]_i_1_n_0 ;
  wire \fifo_buffer[0][3]_i_1_n_0 ;
  wire \fifo_buffer[0][4]_i_1_n_0 ;
  wire \fifo_buffer[0][5]_i_1_n_0 ;
  wire \fifo_buffer[0][6]_i_1_n_0 ;
  wire \fifo_buffer[0][7]_i_1_n_0 ;
  wire \fifo_buffer[0][8]_i_1_n_0 ;
  wire \fifo_buffer[0][9]_i_1_n_0 ;
  wire \fifo_buffer[10][0]_i_1_n_0 ;
  wire \fifo_buffer[10][10]_i_1_n_0 ;
  wire \fifo_buffer[10][11]_i_1_n_0 ;
  wire \fifo_buffer[10][12]_i_1_n_0 ;
  wire \fifo_buffer[10][13]_i_1_n_0 ;
  wire \fifo_buffer[10][14]_i_1_n_0 ;
  wire \fifo_buffer[10][15]_i_1_n_0 ;
  wire \fifo_buffer[10][15]_i_2_n_0 ;
  wire \fifo_buffer[10][1]_i_1_n_0 ;
  wire \fifo_buffer[10][2]_i_1_n_0 ;
  wire \fifo_buffer[10][3]_i_1_n_0 ;
  wire \fifo_buffer[10][4]_i_1_n_0 ;
  wire \fifo_buffer[10][5]_i_1_n_0 ;
  wire \fifo_buffer[10][6]_i_1_n_0 ;
  wire \fifo_buffer[10][7]_i_1_n_0 ;
  wire \fifo_buffer[10][8]_i_1_n_0 ;
  wire \fifo_buffer[10][9]_i_1_n_0 ;
  wire \fifo_buffer[11][0]_i_1_n_0 ;
  wire \fifo_buffer[11][10]_i_1_n_0 ;
  wire \fifo_buffer[11][11]_i_1_n_0 ;
  wire \fifo_buffer[11][12]_i_1_n_0 ;
  wire \fifo_buffer[11][13]_i_1_n_0 ;
  wire \fifo_buffer[11][14]_i_1_n_0 ;
  wire \fifo_buffer[11][15]_i_1_n_0 ;
  wire \fifo_buffer[11][1]_i_1_n_0 ;
  wire \fifo_buffer[11][2]_i_1_n_0 ;
  wire \fifo_buffer[11][3]_i_1_n_0 ;
  wire \fifo_buffer[11][4]_i_1_n_0 ;
  wire \fifo_buffer[11][5]_i_1_n_0 ;
  wire \fifo_buffer[11][6]_i_1_n_0 ;
  wire \fifo_buffer[11][7]_i_1_n_0 ;
  wire \fifo_buffer[11][8]_i_1_n_0 ;
  wire \fifo_buffer[11][9]_i_1_n_0 ;
  wire \fifo_buffer[12][0]_i_1_n_0 ;
  wire \fifo_buffer[12][10]_i_1_n_0 ;
  wire \fifo_buffer[12][11]_i_1_n_0 ;
  wire \fifo_buffer[12][12]_i_1_n_0 ;
  wire \fifo_buffer[12][13]_i_1_n_0 ;
  wire \fifo_buffer[12][14]_i_1_n_0 ;
  wire \fifo_buffer[12][15]_i_1_n_0 ;
  wire \fifo_buffer[12][15]_i_2_n_0 ;
  wire \fifo_buffer[12][1]_i_1_n_0 ;
  wire \fifo_buffer[12][2]_i_1_n_0 ;
  wire \fifo_buffer[12][3]_i_1_n_0 ;
  wire \fifo_buffer[12][4]_i_1_n_0 ;
  wire \fifo_buffer[12][5]_i_1_n_0 ;
  wire \fifo_buffer[12][6]_i_1_n_0 ;
  wire \fifo_buffer[12][7]_i_1_n_0 ;
  wire \fifo_buffer[12][8]_i_1_n_0 ;
  wire \fifo_buffer[12][9]_i_1_n_0 ;
  wire \fifo_buffer[13][0]_i_1_n_0 ;
  wire \fifo_buffer[13][10]_i_1_n_0 ;
  wire \fifo_buffer[13][11]_i_1_n_0 ;
  wire \fifo_buffer[13][12]_i_1_n_0 ;
  wire \fifo_buffer[13][13]_i_1_n_0 ;
  wire \fifo_buffer[13][14]_i_1_n_0 ;
  wire \fifo_buffer[13][15]_i_1_n_0 ;
  wire \fifo_buffer[13][15]_i_2_n_0 ;
  wire \fifo_buffer[13][1]_i_1_n_0 ;
  wire \fifo_buffer[13][2]_i_1_n_0 ;
  wire \fifo_buffer[13][3]_i_1_n_0 ;
  wire \fifo_buffer[13][4]_i_1_n_0 ;
  wire \fifo_buffer[13][5]_i_1_n_0 ;
  wire \fifo_buffer[13][6]_i_1_n_0 ;
  wire \fifo_buffer[13][7]_i_1_n_0 ;
  wire \fifo_buffer[13][8]_i_1_n_0 ;
  wire \fifo_buffer[13][9]_i_1_n_0 ;
  wire \fifo_buffer[14][0]_i_1_n_0 ;
  wire \fifo_buffer[14][10]_i_1_n_0 ;
  wire \fifo_buffer[14][11]_i_1_n_0 ;
  wire \fifo_buffer[14][12]_i_1_n_0 ;
  wire \fifo_buffer[14][13]_i_1_n_0 ;
  wire \fifo_buffer[14][14]_i_1_n_0 ;
  wire \fifo_buffer[14][15]_i_1_n_0 ;
  wire \fifo_buffer[14][15]_i_2_n_0 ;
  wire \fifo_buffer[14][1]_i_1_n_0 ;
  wire \fifo_buffer[14][2]_i_1_n_0 ;
  wire \fifo_buffer[14][3]_i_1_n_0 ;
  wire \fifo_buffer[14][4]_i_1_n_0 ;
  wire \fifo_buffer[14][5]_i_1_n_0 ;
  wire \fifo_buffer[14][6]_i_1_n_0 ;
  wire \fifo_buffer[14][7]_i_1_n_0 ;
  wire \fifo_buffer[14][8]_i_1_n_0 ;
  wire \fifo_buffer[14][9]_i_1_n_0 ;
  wire \fifo_buffer[15][0]_i_1_n_0 ;
  wire \fifo_buffer[15][10]_i_1_n_0 ;
  wire \fifo_buffer[15][11]_i_1_n_0 ;
  wire \fifo_buffer[15][12]_i_1_n_0 ;
  wire \fifo_buffer[15][13]_i_1_n_0 ;
  wire \fifo_buffer[15][14]_i_1_n_0 ;
  wire \fifo_buffer[15][15]_i_1_n_0 ;
  wire \fifo_buffer[15][1]_i_1_n_0 ;
  wire \fifo_buffer[15][2]_i_1_n_0 ;
  wire \fifo_buffer[15][3]_i_1_n_0 ;
  wire \fifo_buffer[15][4]_i_1_n_0 ;
  wire \fifo_buffer[15][5]_i_1_n_0 ;
  wire \fifo_buffer[15][6]_i_1_n_0 ;
  wire \fifo_buffer[15][7]_i_1_n_0 ;
  wire \fifo_buffer[15][8]_i_1_n_0 ;
  wire \fifo_buffer[15][9]_i_1_n_0 ;
  wire \fifo_buffer[16][0]_i_1_n_0 ;
  wire \fifo_buffer[16][10]_i_1_n_0 ;
  wire \fifo_buffer[16][11]_i_1_n_0 ;
  wire \fifo_buffer[16][12]_i_1_n_0 ;
  wire \fifo_buffer[16][13]_i_1_n_0 ;
  wire \fifo_buffer[16][14]_i_1_n_0 ;
  wire \fifo_buffer[16][15]_i_1_n_0 ;
  wire \fifo_buffer[16][15]_i_2_n_0 ;
  wire \fifo_buffer[16][1]_i_1_n_0 ;
  wire \fifo_buffer[16][2]_i_1_n_0 ;
  wire \fifo_buffer[16][3]_i_1_n_0 ;
  wire \fifo_buffer[16][4]_i_1_n_0 ;
  wire \fifo_buffer[16][5]_i_1_n_0 ;
  wire \fifo_buffer[16][6]_i_1_n_0 ;
  wire \fifo_buffer[16][7]_i_1_n_0 ;
  wire \fifo_buffer[16][8]_i_1_n_0 ;
  wire \fifo_buffer[16][9]_i_1_n_0 ;
  wire \fifo_buffer[17][0]_i_1_n_0 ;
  wire \fifo_buffer[17][10]_i_1_n_0 ;
  wire \fifo_buffer[17][11]_i_1_n_0 ;
  wire \fifo_buffer[17][12]_i_1_n_0 ;
  wire \fifo_buffer[17][13]_i_1_n_0 ;
  wire \fifo_buffer[17][14]_i_1_n_0 ;
  wire \fifo_buffer[17][15]_i_1_n_0 ;
  wire \fifo_buffer[17][1]_i_1_n_0 ;
  wire \fifo_buffer[17][2]_i_1_n_0 ;
  wire \fifo_buffer[17][3]_i_1_n_0 ;
  wire \fifo_buffer[17][4]_i_1_n_0 ;
  wire \fifo_buffer[17][5]_i_1_n_0 ;
  wire \fifo_buffer[17][6]_i_1_n_0 ;
  wire \fifo_buffer[17][7]_i_1_n_0 ;
  wire \fifo_buffer[17][8]_i_1_n_0 ;
  wire \fifo_buffer[17][9]_i_1_n_0 ;
  wire \fifo_buffer[18][0]_i_1_n_0 ;
  wire \fifo_buffer[18][10]_i_1_n_0 ;
  wire \fifo_buffer[18][11]_i_1_n_0 ;
  wire \fifo_buffer[18][12]_i_1_n_0 ;
  wire \fifo_buffer[18][13]_i_1_n_0 ;
  wire \fifo_buffer[18][14]_i_1_n_0 ;
  wire \fifo_buffer[18][15]_i_1_n_0 ;
  wire \fifo_buffer[18][15]_i_2_n_0 ;
  wire \fifo_buffer[18][1]_i_1_n_0 ;
  wire \fifo_buffer[18][2]_i_1_n_0 ;
  wire \fifo_buffer[18][3]_i_1_n_0 ;
  wire \fifo_buffer[18][4]_i_1_n_0 ;
  wire \fifo_buffer[18][5]_i_1_n_0 ;
  wire \fifo_buffer[18][6]_i_1_n_0 ;
  wire \fifo_buffer[18][7]_i_1_n_0 ;
  wire \fifo_buffer[18][8]_i_1_n_0 ;
  wire \fifo_buffer[18][9]_i_1_n_0 ;
  wire \fifo_buffer[19][0]_i_1_n_0 ;
  wire \fifo_buffer[19][10]_i_1_n_0 ;
  wire \fifo_buffer[19][11]_i_1_n_0 ;
  wire \fifo_buffer[19][12]_i_1_n_0 ;
  wire \fifo_buffer[19][13]_i_1_n_0 ;
  wire \fifo_buffer[19][14]_i_1_n_0 ;
  wire \fifo_buffer[19][15]_i_1_n_0 ;
  wire \fifo_buffer[19][1]_i_1_n_0 ;
  wire \fifo_buffer[19][2]_i_1_n_0 ;
  wire \fifo_buffer[19][3]_i_1_n_0 ;
  wire \fifo_buffer[19][4]_i_1_n_0 ;
  wire \fifo_buffer[19][5]_i_1_n_0 ;
  wire \fifo_buffer[19][6]_i_1_n_0 ;
  wire \fifo_buffer[19][7]_i_1_n_0 ;
  wire \fifo_buffer[19][8]_i_1_n_0 ;
  wire \fifo_buffer[19][9]_i_1_n_0 ;
  wire \fifo_buffer[1][0]_i_1_n_0 ;
  wire \fifo_buffer[1][10]_i_1_n_0 ;
  wire \fifo_buffer[1][11]_i_1_n_0 ;
  wire \fifo_buffer[1][12]_i_1_n_0 ;
  wire \fifo_buffer[1][13]_i_1_n_0 ;
  wire \fifo_buffer[1][14]_i_1_n_0 ;
  wire \fifo_buffer[1][15]_i_1_n_0 ;
  wire \fifo_buffer[1][1]_i_1_n_0 ;
  wire \fifo_buffer[1][2]_i_1_n_0 ;
  wire \fifo_buffer[1][3]_i_1_n_0 ;
  wire \fifo_buffer[1][4]_i_1_n_0 ;
  wire \fifo_buffer[1][5]_i_1_n_0 ;
  wire \fifo_buffer[1][6]_i_1_n_0 ;
  wire \fifo_buffer[1][7]_i_1_n_0 ;
  wire \fifo_buffer[1][8]_i_1_n_0 ;
  wire \fifo_buffer[1][9]_i_1_n_0 ;
  wire \fifo_buffer[20][0]_i_1_n_0 ;
  wire \fifo_buffer[20][10]_i_1_n_0 ;
  wire \fifo_buffer[20][11]_i_1_n_0 ;
  wire \fifo_buffer[20][12]_i_1_n_0 ;
  wire \fifo_buffer[20][13]_i_1_n_0 ;
  wire \fifo_buffer[20][14]_i_1_n_0 ;
  wire \fifo_buffer[20][15]_i_1_n_0 ;
  wire \fifo_buffer[20][15]_i_2_n_0 ;
  wire \fifo_buffer[20][1]_i_1_n_0 ;
  wire \fifo_buffer[20][2]_i_1_n_0 ;
  wire \fifo_buffer[20][3]_i_1_n_0 ;
  wire \fifo_buffer[20][4]_i_1_n_0 ;
  wire \fifo_buffer[20][5]_i_1_n_0 ;
  wire \fifo_buffer[20][6]_i_1_n_0 ;
  wire \fifo_buffer[20][7]_i_1_n_0 ;
  wire \fifo_buffer[20][8]_i_1_n_0 ;
  wire \fifo_buffer[20][9]_i_1_n_0 ;
  wire \fifo_buffer[21][0]_i_1_n_0 ;
  wire \fifo_buffer[21][10]_i_1_n_0 ;
  wire \fifo_buffer[21][11]_i_1_n_0 ;
  wire \fifo_buffer[21][12]_i_1_n_0 ;
  wire \fifo_buffer[21][13]_i_1_n_0 ;
  wire \fifo_buffer[21][14]_i_1_n_0 ;
  wire \fifo_buffer[21][15]_i_1_n_0 ;
  wire \fifo_buffer[21][15]_i_2_n_0 ;
  wire \fifo_buffer[21][1]_i_1_n_0 ;
  wire \fifo_buffer[21][2]_i_1_n_0 ;
  wire \fifo_buffer[21][3]_i_1_n_0 ;
  wire \fifo_buffer[21][4]_i_1_n_0 ;
  wire \fifo_buffer[21][5]_i_1_n_0 ;
  wire \fifo_buffer[21][6]_i_1_n_0 ;
  wire \fifo_buffer[21][7]_i_1_n_0 ;
  wire \fifo_buffer[21][8]_i_1_n_0 ;
  wire \fifo_buffer[21][9]_i_1_n_0 ;
  wire \fifo_buffer[22][0]_i_1_n_0 ;
  wire \fifo_buffer[22][10]_i_1_n_0 ;
  wire \fifo_buffer[22][11]_i_1_n_0 ;
  wire \fifo_buffer[22][12]_i_1_n_0 ;
  wire \fifo_buffer[22][13]_i_1_n_0 ;
  wire \fifo_buffer[22][14]_i_1_n_0 ;
  wire \fifo_buffer[22][15]_i_1_n_0 ;
  wire \fifo_buffer[22][15]_i_2_n_0 ;
  wire \fifo_buffer[22][1]_i_1_n_0 ;
  wire \fifo_buffer[22][2]_i_1_n_0 ;
  wire \fifo_buffer[22][3]_i_1_n_0 ;
  wire \fifo_buffer[22][4]_i_1_n_0 ;
  wire \fifo_buffer[22][5]_i_1_n_0 ;
  wire \fifo_buffer[22][6]_i_1_n_0 ;
  wire \fifo_buffer[22][7]_i_1_n_0 ;
  wire \fifo_buffer[22][8]_i_1_n_0 ;
  wire \fifo_buffer[22][9]_i_1_n_0 ;
  wire \fifo_buffer[23][0]_i_1_n_0 ;
  wire \fifo_buffer[23][10]_i_1_n_0 ;
  wire \fifo_buffer[23][11]_i_1_n_0 ;
  wire \fifo_buffer[23][12]_i_1_n_0 ;
  wire \fifo_buffer[23][13]_i_1_n_0 ;
  wire \fifo_buffer[23][14]_i_1_n_0 ;
  wire \fifo_buffer[23][15]_i_1_n_0 ;
  wire \fifo_buffer[23][1]_i_1_n_0 ;
  wire \fifo_buffer[23][2]_i_1_n_0 ;
  wire \fifo_buffer[23][3]_i_1_n_0 ;
  wire \fifo_buffer[23][4]_i_1_n_0 ;
  wire \fifo_buffer[23][5]_i_1_n_0 ;
  wire \fifo_buffer[23][6]_i_1_n_0 ;
  wire \fifo_buffer[23][7]_i_1_n_0 ;
  wire \fifo_buffer[23][8]_i_1_n_0 ;
  wire \fifo_buffer[23][9]_i_1_n_0 ;
  wire \fifo_buffer[24][0]_i_1_n_0 ;
  wire \fifo_buffer[24][10]_i_1_n_0 ;
  wire \fifo_buffer[24][11]_i_1_n_0 ;
  wire \fifo_buffer[24][12]_i_1_n_0 ;
  wire \fifo_buffer[24][13]_i_1_n_0 ;
  wire \fifo_buffer[24][14]_i_1_n_0 ;
  wire \fifo_buffer[24][15]_i_1_n_0 ;
  wire \fifo_buffer[24][15]_i_2_n_0 ;
  wire \fifo_buffer[24][1]_i_1_n_0 ;
  wire \fifo_buffer[24][2]_i_1_n_0 ;
  wire \fifo_buffer[24][3]_i_1_n_0 ;
  wire \fifo_buffer[24][4]_i_1_n_0 ;
  wire \fifo_buffer[24][5]_i_1_n_0 ;
  wire \fifo_buffer[24][6]_i_1_n_0 ;
  wire \fifo_buffer[24][7]_i_1_n_0 ;
  wire \fifo_buffer[24][8]_i_1_n_0 ;
  wire \fifo_buffer[24][9]_i_1_n_0 ;
  wire \fifo_buffer[25][0]_i_1_n_0 ;
  wire \fifo_buffer[25][10]_i_1_n_0 ;
  wire \fifo_buffer[25][11]_i_1_n_0 ;
  wire \fifo_buffer[25][12]_i_1_n_0 ;
  wire \fifo_buffer[25][13]_i_1_n_0 ;
  wire \fifo_buffer[25][14]_i_1_n_0 ;
  wire \fifo_buffer[25][15]_i_1_n_0 ;
  wire \fifo_buffer[25][15]_i_2_n_0 ;
  wire \fifo_buffer[25][1]_i_1_n_0 ;
  wire \fifo_buffer[25][2]_i_1_n_0 ;
  wire \fifo_buffer[25][3]_i_1_n_0 ;
  wire \fifo_buffer[25][4]_i_1_n_0 ;
  wire \fifo_buffer[25][5]_i_1_n_0 ;
  wire \fifo_buffer[25][6]_i_1_n_0 ;
  wire \fifo_buffer[25][7]_i_1_n_0 ;
  wire \fifo_buffer[25][8]_i_1_n_0 ;
  wire \fifo_buffer[25][9]_i_1_n_0 ;
  wire \fifo_buffer[26][0]_i_1_n_0 ;
  wire \fifo_buffer[26][10]_i_1_n_0 ;
  wire \fifo_buffer[26][11]_i_1_n_0 ;
  wire \fifo_buffer[26][12]_i_1_n_0 ;
  wire \fifo_buffer[26][13]_i_1_n_0 ;
  wire \fifo_buffer[26][14]_i_1_n_0 ;
  wire \fifo_buffer[26][15]_i_1_n_0 ;
  wire \fifo_buffer[26][15]_i_2_n_0 ;
  wire \fifo_buffer[26][1]_i_1_n_0 ;
  wire \fifo_buffer[26][2]_i_1_n_0 ;
  wire \fifo_buffer[26][3]_i_1_n_0 ;
  wire \fifo_buffer[26][4]_i_1_n_0 ;
  wire \fifo_buffer[26][5]_i_1_n_0 ;
  wire \fifo_buffer[26][6]_i_1_n_0 ;
  wire \fifo_buffer[26][7]_i_1_n_0 ;
  wire \fifo_buffer[26][8]_i_1_n_0 ;
  wire \fifo_buffer[26][9]_i_1_n_0 ;
  wire \fifo_buffer[27][0]_i_1_n_0 ;
  wire \fifo_buffer[27][10]_i_1_n_0 ;
  wire \fifo_buffer[27][11]_i_1_n_0 ;
  wire \fifo_buffer[27][12]_i_1_n_0 ;
  wire \fifo_buffer[27][13]_i_1_n_0 ;
  wire \fifo_buffer[27][14]_i_1_n_0 ;
  wire \fifo_buffer[27][15]_i_1_n_0 ;
  wire \fifo_buffer[27][1]_i_1_n_0 ;
  wire \fifo_buffer[27][2]_i_1_n_0 ;
  wire \fifo_buffer[27][3]_i_1_n_0 ;
  wire \fifo_buffer[27][4]_i_1_n_0 ;
  wire \fifo_buffer[27][5]_i_1_n_0 ;
  wire \fifo_buffer[27][6]_i_1_n_0 ;
  wire \fifo_buffer[27][7]_i_1_n_0 ;
  wire \fifo_buffer[27][8]_i_1_n_0 ;
  wire \fifo_buffer[27][9]_i_1_n_0 ;
  wire \fifo_buffer[28][0]_i_1_n_0 ;
  wire \fifo_buffer[28][10]_i_1_n_0 ;
  wire \fifo_buffer[28][11]_i_1_n_0 ;
  wire \fifo_buffer[28][12]_i_1_n_0 ;
  wire \fifo_buffer[28][13]_i_1_n_0 ;
  wire \fifo_buffer[28][14]_i_1_n_0 ;
  wire \fifo_buffer[28][15]_i_1_n_0 ;
  wire \fifo_buffer[28][15]_i_2_n_0 ;
  wire \fifo_buffer[28][1]_i_1_n_0 ;
  wire \fifo_buffer[28][2]_i_1_n_0 ;
  wire \fifo_buffer[28][3]_i_1_n_0 ;
  wire \fifo_buffer[28][4]_i_1_n_0 ;
  wire \fifo_buffer[28][5]_i_1_n_0 ;
  wire \fifo_buffer[28][6]_i_1_n_0 ;
  wire \fifo_buffer[28][7]_i_1_n_0 ;
  wire \fifo_buffer[28][8]_i_1_n_0 ;
  wire \fifo_buffer[28][9]_i_1_n_0 ;
  wire \fifo_buffer[29][0]_i_1_n_0 ;
  wire \fifo_buffer[29][10]_i_1_n_0 ;
  wire \fifo_buffer[29][11]_i_1_n_0 ;
  wire \fifo_buffer[29][12]_i_1_n_0 ;
  wire \fifo_buffer[29][13]_i_1_n_0 ;
  wire \fifo_buffer[29][14]_i_1_n_0 ;
  wire \fifo_buffer[29][15]_i_1_n_0 ;
  wire \fifo_buffer[29][15]_i_2_n_0 ;
  wire \fifo_buffer[29][1]_i_1_n_0 ;
  wire \fifo_buffer[29][2]_i_1_n_0 ;
  wire \fifo_buffer[29][3]_i_1_n_0 ;
  wire \fifo_buffer[29][4]_i_1_n_0 ;
  wire \fifo_buffer[29][5]_i_1_n_0 ;
  wire \fifo_buffer[29][6]_i_1_n_0 ;
  wire \fifo_buffer[29][7]_i_1_n_0 ;
  wire \fifo_buffer[29][8]_i_1_n_0 ;
  wire \fifo_buffer[29][9]_i_1_n_0 ;
  wire \fifo_buffer[2][0]_i_1_n_0 ;
  wire \fifo_buffer[2][10]_i_1_n_0 ;
  wire \fifo_buffer[2][11]_i_1_n_0 ;
  wire \fifo_buffer[2][12]_i_1_n_0 ;
  wire \fifo_buffer[2][13]_i_1_n_0 ;
  wire \fifo_buffer[2][14]_i_1_n_0 ;
  wire \fifo_buffer[2][15]_i_1_n_0 ;
  wire \fifo_buffer[2][1]_i_1_n_0 ;
  wire \fifo_buffer[2][2]_i_1_n_0 ;
  wire \fifo_buffer[2][3]_i_1_n_0 ;
  wire \fifo_buffer[2][4]_i_1_n_0 ;
  wire \fifo_buffer[2][5]_i_1_n_0 ;
  wire \fifo_buffer[2][6]_i_1_n_0 ;
  wire \fifo_buffer[2][7]_i_1_n_0 ;
  wire \fifo_buffer[2][8]_i_1_n_0 ;
  wire \fifo_buffer[2][9]_i_1_n_0 ;
  wire \fifo_buffer[30][0]_i_1_n_0 ;
  wire \fifo_buffer[30][10]_i_1_n_0 ;
  wire \fifo_buffer[30][11]_i_1_n_0 ;
  wire \fifo_buffer[30][12]_i_1_n_0 ;
  wire \fifo_buffer[30][13]_i_1_n_0 ;
  wire \fifo_buffer[30][14]_i_1_n_0 ;
  wire \fifo_buffer[30][15]_i_1_n_0 ;
  wire \fifo_buffer[30][15]_i_2_n_0 ;
  wire \fifo_buffer[30][1]_i_1_n_0 ;
  wire \fifo_buffer[30][2]_i_1_n_0 ;
  wire \fifo_buffer[30][3]_i_1_n_0 ;
  wire \fifo_buffer[30][4]_i_1_n_0 ;
  wire \fifo_buffer[30][5]_i_1_n_0 ;
  wire \fifo_buffer[30][6]_i_1_n_0 ;
  wire \fifo_buffer[30][7]_i_1_n_0 ;
  wire \fifo_buffer[30][8]_i_1_n_0 ;
  wire \fifo_buffer[30][9]_i_1_n_0 ;
  wire \fifo_buffer[31][0]_i_2_n_0 ;
  wire \fifo_buffer[31][10]_i_2_n_0 ;
  wire \fifo_buffer[31][11]_i_2_n_0 ;
  wire \fifo_buffer[31][12]_i_2_n_0 ;
  wire \fifo_buffer[31][13]_i_2_n_0 ;
  wire \fifo_buffer[31][14]_i_2_n_0 ;
  wire \fifo_buffer[31][15]_i_3_n_0 ;
  wire \fifo_buffer[31][15]_i_4_n_0 ;
  wire \fifo_buffer[31][1]_i_2_n_0 ;
  wire \fifo_buffer[31][2]_i_2_n_0 ;
  wire \fifo_buffer[31][3]_i_2_n_0 ;
  wire \fifo_buffer[31][4]_i_2_n_0 ;
  wire \fifo_buffer[31][5]_i_2_n_0 ;
  wire \fifo_buffer[31][6]_i_2_n_0 ;
  wire \fifo_buffer[31][7]_i_2_n_0 ;
  wire \fifo_buffer[31][8]_i_2_n_0 ;
  wire \fifo_buffer[31][9]_i_2_n_0 ;
  wire \fifo_buffer[3][0]_i_1_n_0 ;
  wire \fifo_buffer[3][10]_i_1_n_0 ;
  wire \fifo_buffer[3][11]_i_1_n_0 ;
  wire \fifo_buffer[3][12]_i_1_n_0 ;
  wire \fifo_buffer[3][13]_i_1_n_0 ;
  wire \fifo_buffer[3][14]_i_1_n_0 ;
  wire \fifo_buffer[3][15]_i_1_n_0 ;
  wire \fifo_buffer[3][15]_i_2_n_0 ;
  wire \fifo_buffer[3][1]_i_1_n_0 ;
  wire \fifo_buffer[3][2]_i_1_n_0 ;
  wire \fifo_buffer[3][3]_i_1_n_0 ;
  wire \fifo_buffer[3][4]_i_1_n_0 ;
  wire \fifo_buffer[3][5]_i_1_n_0 ;
  wire \fifo_buffer[3][6]_i_1_n_0 ;
  wire \fifo_buffer[3][7]_i_1_n_0 ;
  wire \fifo_buffer[3][8]_i_1_n_0 ;
  wire \fifo_buffer[3][9]_i_1_n_0 ;
  wire \fifo_buffer[4][0]_i_1_n_0 ;
  wire \fifo_buffer[4][10]_i_1_n_0 ;
  wire \fifo_buffer[4][11]_i_1_n_0 ;
  wire \fifo_buffer[4][12]_i_1_n_0 ;
  wire \fifo_buffer[4][13]_i_1_n_0 ;
  wire \fifo_buffer[4][14]_i_1_n_0 ;
  wire \fifo_buffer[4][15]_i_1_n_0 ;
  wire \fifo_buffer[4][1]_i_1_n_0 ;
  wire \fifo_buffer[4][2]_i_1_n_0 ;
  wire \fifo_buffer[4][3]_i_1_n_0 ;
  wire \fifo_buffer[4][4]_i_1_n_0 ;
  wire \fifo_buffer[4][5]_i_1_n_0 ;
  wire \fifo_buffer[4][6]_i_1_n_0 ;
  wire \fifo_buffer[4][7]_i_1_n_0 ;
  wire \fifo_buffer[4][8]_i_1_n_0 ;
  wire \fifo_buffer[4][9]_i_1_n_0 ;
  wire \fifo_buffer[5][0]_i_1_n_0 ;
  wire \fifo_buffer[5][10]_i_1_n_0 ;
  wire \fifo_buffer[5][11]_i_1_n_0 ;
  wire \fifo_buffer[5][12]_i_1_n_0 ;
  wire \fifo_buffer[5][13]_i_1_n_0 ;
  wire \fifo_buffer[5][14]_i_1_n_0 ;
  wire \fifo_buffer[5][15]_i_1_n_0 ;
  wire \fifo_buffer[5][1]_i_1_n_0 ;
  wire \fifo_buffer[5][2]_i_1_n_0 ;
  wire \fifo_buffer[5][3]_i_1_n_0 ;
  wire \fifo_buffer[5][4]_i_1_n_0 ;
  wire \fifo_buffer[5][5]_i_1_n_0 ;
  wire \fifo_buffer[5][6]_i_1_n_0 ;
  wire \fifo_buffer[5][7]_i_1_n_0 ;
  wire \fifo_buffer[5][8]_i_1_n_0 ;
  wire \fifo_buffer[5][9]_i_1_n_0 ;
  wire \fifo_buffer[6][0]_i_1_n_0 ;
  wire \fifo_buffer[6][10]_i_1_n_0 ;
  wire \fifo_buffer[6][11]_i_1_n_0 ;
  wire \fifo_buffer[6][12]_i_1_n_0 ;
  wire \fifo_buffer[6][13]_i_1_n_0 ;
  wire \fifo_buffer[6][14]_i_1_n_0 ;
  wire \fifo_buffer[6][15]_i_1_n_0 ;
  wire \fifo_buffer[6][15]_i_2_n_0 ;
  wire \fifo_buffer[6][1]_i_1_n_0 ;
  wire \fifo_buffer[6][2]_i_1_n_0 ;
  wire \fifo_buffer[6][3]_i_1_n_0 ;
  wire \fifo_buffer[6][4]_i_1_n_0 ;
  wire \fifo_buffer[6][5]_i_1_n_0 ;
  wire \fifo_buffer[6][6]_i_1_n_0 ;
  wire \fifo_buffer[6][7]_i_1_n_0 ;
  wire \fifo_buffer[6][8]_i_1_n_0 ;
  wire \fifo_buffer[6][9]_i_1_n_0 ;
  wire \fifo_buffer[7][0]_i_1_n_0 ;
  wire \fifo_buffer[7][10]_i_1_n_0 ;
  wire \fifo_buffer[7][11]_i_1_n_0 ;
  wire \fifo_buffer[7][12]_i_1_n_0 ;
  wire \fifo_buffer[7][13]_i_1_n_0 ;
  wire \fifo_buffer[7][14]_i_1_n_0 ;
  wire \fifo_buffer[7][15]_i_1_n_0 ;
  wire \fifo_buffer[7][1]_i_1_n_0 ;
  wire \fifo_buffer[7][2]_i_1_n_0 ;
  wire \fifo_buffer[7][3]_i_1_n_0 ;
  wire \fifo_buffer[7][4]_i_1_n_0 ;
  wire \fifo_buffer[7][5]_i_1_n_0 ;
  wire \fifo_buffer[7][6]_i_1_n_0 ;
  wire \fifo_buffer[7][7]_i_1_n_0 ;
  wire \fifo_buffer[7][8]_i_1_n_0 ;
  wire \fifo_buffer[7][9]_i_1_n_0 ;
  wire \fifo_buffer[8][0]_i_1_n_0 ;
  wire \fifo_buffer[8][10]_i_1_n_0 ;
  wire \fifo_buffer[8][11]_i_1_n_0 ;
  wire \fifo_buffer[8][12]_i_1_n_0 ;
  wire \fifo_buffer[8][13]_i_1_n_0 ;
  wire \fifo_buffer[8][14]_i_1_n_0 ;
  wire \fifo_buffer[8][15]_i_1_n_0 ;
  wire \fifo_buffer[8][15]_i_2_n_0 ;
  wire \fifo_buffer[8][1]_i_1_n_0 ;
  wire \fifo_buffer[8][2]_i_1_n_0 ;
  wire \fifo_buffer[8][3]_i_1_n_0 ;
  wire \fifo_buffer[8][4]_i_1_n_0 ;
  wire \fifo_buffer[8][5]_i_1_n_0 ;
  wire \fifo_buffer[8][6]_i_1_n_0 ;
  wire \fifo_buffer[8][7]_i_1_n_0 ;
  wire \fifo_buffer[8][8]_i_1_n_0 ;
  wire \fifo_buffer[8][9]_i_1_n_0 ;
  wire \fifo_buffer[9][0]_i_1_n_0 ;
  wire \fifo_buffer[9][10]_i_1_n_0 ;
  wire \fifo_buffer[9][11]_i_1_n_0 ;
  wire \fifo_buffer[9][12]_i_1_n_0 ;
  wire \fifo_buffer[9][13]_i_1_n_0 ;
  wire \fifo_buffer[9][14]_i_1_n_0 ;
  wire \fifo_buffer[9][15]_i_1_n_0 ;
  wire \fifo_buffer[9][15]_i_2_n_0 ;
  wire \fifo_buffer[9][1]_i_1_n_0 ;
  wire \fifo_buffer[9][2]_i_1_n_0 ;
  wire \fifo_buffer[9][3]_i_1_n_0 ;
  wire \fifo_buffer[9][4]_i_1_n_0 ;
  wire \fifo_buffer[9][5]_i_1_n_0 ;
  wire \fifo_buffer[9][6]_i_1_n_0 ;
  wire \fifo_buffer[9][7]_i_1_n_0 ;
  wire \fifo_buffer[9][8]_i_1_n_0 ;
  wire \fifo_buffer[9][9]_i_1_n_0 ;
  wire [15:0]\fifo_buffer_reg[0] ;
  wire [15:0]\fifo_buffer_reg[10] ;
  wire [15:0]\fifo_buffer_reg[11] ;
  wire [15:0]\fifo_buffer_reg[12] ;
  wire [15:0]\fifo_buffer_reg[13] ;
  wire [15:0]\fifo_buffer_reg[14] ;
  wire [15:0]\fifo_buffer_reg[15] ;
  wire [15:0]\fifo_buffer_reg[16] ;
  wire [15:0]\fifo_buffer_reg[17] ;
  wire [15:0]\fifo_buffer_reg[18] ;
  wire [15:0]\fifo_buffer_reg[19] ;
  wire [15:0]\fifo_buffer_reg[1] ;
  wire [15:0]\fifo_buffer_reg[20] ;
  wire [15:0]\fifo_buffer_reg[21] ;
  wire [15:0]\fifo_buffer_reg[22] ;
  wire [15:0]\fifo_buffer_reg[23] ;
  wire [15:0]\fifo_buffer_reg[24] ;
  wire [15:0]\fifo_buffer_reg[25] ;
  wire [15:0]\fifo_buffer_reg[26] ;
  wire [15:0]\fifo_buffer_reg[27] ;
  wire [15:0]\fifo_buffer_reg[28] ;
  wire [15:0]\fifo_buffer_reg[29] ;
  wire [15:0]\fifo_buffer_reg[2] ;
  wire [15:0]\fifo_buffer_reg[30] ;
  wire [15:0]\fifo_buffer_reg[31] ;
  wire [15:0]\fifo_buffer_reg[3] ;
  wire [15:0]\fifo_buffer_reg[4] ;
  wire [15:0]\fifo_buffer_reg[5] ;
  wire [15:0]\fifo_buffer_reg[6] ;
  wire [15:0]\fifo_buffer_reg[7] ;
  wire [15:0]\fifo_buffer_reg[8] ;
  wire [15:0]\fifo_buffer_reg[9] ;
  wire fire;
  wire fire_IBUF;
  wire fire_IBUF_BUFG;
  wire i_data_in;
  wire i_data_in_IBUF;
  wire [8:0]i_replace_fifo_buffer_addr_9;
  wire [8:0]i_replace_fifo_buffer_addr_9_IBUF;
  wire i_replace_fifo_buffer_write_enable;
  wire i_replace_fifo_buffer_write_enable_IBUF;
  wire o_data_out;
  wire o_data_out_OBUF;
  wire o_data_out_i_100_n_0;
  wire o_data_out_i_101_n_0;
  wire o_data_out_i_102_n_0;
  wire o_data_out_i_103_n_0;
  wire o_data_out_i_104_n_0;
  wire o_data_out_i_105_n_0;
  wire o_data_out_i_106_n_0;
  wire o_data_out_i_107_n_0;
  wire o_data_out_i_108_n_0;
  wire o_data_out_i_109_n_0;
  wire o_data_out_i_110_n_0;
  wire o_data_out_i_111_n_0;
  wire o_data_out_i_112_n_0;
  wire o_data_out_i_113_n_0;
  wire o_data_out_i_114_n_0;
  wire o_data_out_i_115_n_0;
  wire o_data_out_i_116_n_0;
  wire o_data_out_i_117_n_0;
  wire o_data_out_i_118_n_0;
  wire o_data_out_i_119_n_0;
  wire o_data_out_i_1_n_0;
  wire o_data_out_i_4_n_0;
  wire o_data_out_i_56_n_0;
  wire o_data_out_i_57_n_0;
  wire o_data_out_i_58_n_0;
  wire o_data_out_i_59_n_0;
  wire o_data_out_i_5_n_0;
  wire o_data_out_i_60_n_0;
  wire o_data_out_i_61_n_0;
  wire o_data_out_i_62_n_0;
  wire o_data_out_i_63_n_0;
  wire o_data_out_i_64_n_0;
  wire o_data_out_i_65_n_0;
  wire o_data_out_i_66_n_0;
  wire o_data_out_i_67_n_0;
  wire o_data_out_i_68_n_0;
  wire o_data_out_i_69_n_0;
  wire o_data_out_i_6_n_0;
  wire o_data_out_i_70_n_0;
  wire o_data_out_i_71_n_0;
  wire o_data_out_i_72_n_0;
  wire o_data_out_i_73_n_0;
  wire o_data_out_i_74_n_0;
  wire o_data_out_i_75_n_0;
  wire o_data_out_i_76_n_0;
  wire o_data_out_i_77_n_0;
  wire o_data_out_i_78_n_0;
  wire o_data_out_i_79_n_0;
  wire o_data_out_i_7_n_0;
  wire o_data_out_i_80_n_0;
  wire o_data_out_i_81_n_0;
  wire o_data_out_i_82_n_0;
  wire o_data_out_i_83_n_0;
  wire o_data_out_i_84_n_0;
  wire o_data_out_i_85_n_0;
  wire o_data_out_i_86_n_0;
  wire o_data_out_i_87_n_0;
  wire o_data_out_i_88_n_0;
  wire o_data_out_i_89_n_0;
  wire o_data_out_i_90_n_0;
  wire o_data_out_i_91_n_0;
  wire o_data_out_i_92_n_0;
  wire o_data_out_i_93_n_0;
  wire o_data_out_i_94_n_0;
  wire o_data_out_i_95_n_0;
  wire o_data_out_i_96_n_0;
  wire o_data_out_i_97_n_0;
  wire o_data_out_i_98_n_0;
  wire o_data_out_i_99_n_0;
  wire o_data_out_reg_i_10_n_0;
  wire o_data_out_reg_i_11_n_0;
  wire o_data_out_reg_i_12_n_0;
  wire o_data_out_reg_i_13_n_0;
  wire o_data_out_reg_i_14_n_0;
  wire o_data_out_reg_i_15_n_0;
  wire o_data_out_reg_i_16_n_0;
  wire o_data_out_reg_i_17_n_0;
  wire o_data_out_reg_i_18_n_0;
  wire o_data_out_reg_i_19_n_0;
  wire o_data_out_reg_i_20_n_0;
  wire o_data_out_reg_i_21_n_0;
  wire o_data_out_reg_i_22_n_0;
  wire o_data_out_reg_i_23_n_0;
  wire o_data_out_reg_i_24_n_0;
  wire o_data_out_reg_i_25_n_0;
  wire o_data_out_reg_i_26_n_0;
  wire o_data_out_reg_i_27_n_0;
  wire o_data_out_reg_i_28_n_0;
  wire o_data_out_reg_i_29_n_0;
  wire o_data_out_reg_i_2_n_0;
  wire o_data_out_reg_i_30_n_0;
  wire o_data_out_reg_i_31_n_0;
  wire o_data_out_reg_i_32_n_0;
  wire o_data_out_reg_i_33_n_0;
  wire o_data_out_reg_i_34_n_0;
  wire o_data_out_reg_i_35_n_0;
  wire o_data_out_reg_i_36_n_0;
  wire o_data_out_reg_i_37_n_0;
  wire o_data_out_reg_i_38_n_0;
  wire o_data_out_reg_i_39_n_0;
  wire o_data_out_reg_i_3_n_0;
  wire o_data_out_reg_i_40_n_0;
  wire o_data_out_reg_i_41_n_0;
  wire o_data_out_reg_i_42_n_0;
  wire o_data_out_reg_i_43_n_0;
  wire o_data_out_reg_i_44_n_0;
  wire o_data_out_reg_i_45_n_0;
  wire o_data_out_reg_i_46_n_0;
  wire o_data_out_reg_i_47_n_0;
  wire o_data_out_reg_i_48_n_0;
  wire o_data_out_reg_i_49_n_0;
  wire o_data_out_reg_i_50_n_0;
  wire o_data_out_reg_i_51_n_0;
  wire o_data_out_reg_i_52_n_0;
  wire o_data_out_reg_i_53_n_0;
  wire o_data_out_reg_i_54_n_0;
  wire o_data_out_reg_i_55_n_0;
  wire o_data_out_reg_i_8_n_0;
  wire o_data_out_reg_i_9_n_0;
  wire o_w_data_out;
  wire o_w_data_out_OBUF;
  wire o_w_data_out_OBUF_inst_i_100_n_0;
  wire o_w_data_out_OBUF_inst_i_101_n_0;
  wire o_w_data_out_OBUF_inst_i_102_n_0;
  wire o_w_data_out_OBUF_inst_i_103_n_0;
  wire o_w_data_out_OBUF_inst_i_104_n_0;
  wire o_w_data_out_OBUF_inst_i_105_n_0;
  wire o_w_data_out_OBUF_inst_i_106_n_0;
  wire o_w_data_out_OBUF_inst_i_107_n_0;
  wire o_w_data_out_OBUF_inst_i_108_n_0;
  wire o_w_data_out_OBUF_inst_i_109_n_0;
  wire o_w_data_out_OBUF_inst_i_10_n_0;
  wire o_w_data_out_OBUF_inst_i_110_n_0;
  wire o_w_data_out_OBUF_inst_i_111_n_0;
  wire o_w_data_out_OBUF_inst_i_112_n_0;
  wire o_w_data_out_OBUF_inst_i_113_n_0;
  wire o_w_data_out_OBUF_inst_i_114_n_0;
  wire o_w_data_out_OBUF_inst_i_115_n_0;
  wire o_w_data_out_OBUF_inst_i_116_n_0;
  wire o_w_data_out_OBUF_inst_i_117_n_0;
  wire o_w_data_out_OBUF_inst_i_118_n_0;
  wire o_w_data_out_OBUF_inst_i_119_n_0;
  wire o_w_data_out_OBUF_inst_i_11_n_0;
  wire o_w_data_out_OBUF_inst_i_120_n_0;
  wire o_w_data_out_OBUF_inst_i_12_n_0;
  wire o_w_data_out_OBUF_inst_i_13_n_0;
  wire o_w_data_out_OBUF_inst_i_14_n_0;
  wire o_w_data_out_OBUF_inst_i_15_n_0;
  wire o_w_data_out_OBUF_inst_i_16_n_0;
  wire o_w_data_out_OBUF_inst_i_17_n_0;
  wire o_w_data_out_OBUF_inst_i_18_n_0;
  wire o_w_data_out_OBUF_inst_i_19_n_0;
  wire o_w_data_out_OBUF_inst_i_20_n_0;
  wire o_w_data_out_OBUF_inst_i_21_n_0;
  wire o_w_data_out_OBUF_inst_i_22_n_0;
  wire o_w_data_out_OBUF_inst_i_23_n_0;
  wire o_w_data_out_OBUF_inst_i_24_n_0;
  wire o_w_data_out_OBUF_inst_i_25_n_0;
  wire o_w_data_out_OBUF_inst_i_26_n_0;
  wire o_w_data_out_OBUF_inst_i_27_n_0;
  wire o_w_data_out_OBUF_inst_i_28_n_0;
  wire o_w_data_out_OBUF_inst_i_29_n_0;
  wire o_w_data_out_OBUF_inst_i_2_n_0;
  wire o_w_data_out_OBUF_inst_i_30_n_0;
  wire o_w_data_out_OBUF_inst_i_31_n_0;
  wire o_w_data_out_OBUF_inst_i_32_n_0;
  wire o_w_data_out_OBUF_inst_i_33_n_0;
  wire o_w_data_out_OBUF_inst_i_34_n_0;
  wire o_w_data_out_OBUF_inst_i_35_n_0;
  wire o_w_data_out_OBUF_inst_i_36_n_0;
  wire o_w_data_out_OBUF_inst_i_37_n_0;
  wire o_w_data_out_OBUF_inst_i_38_n_0;
  wire o_w_data_out_OBUF_inst_i_39_n_0;
  wire o_w_data_out_OBUF_inst_i_3_n_0;
  wire o_w_data_out_OBUF_inst_i_40_n_0;
  wire o_w_data_out_OBUF_inst_i_41_n_0;
  wire o_w_data_out_OBUF_inst_i_42_n_0;
  wire o_w_data_out_OBUF_inst_i_43_n_0;
  wire o_w_data_out_OBUF_inst_i_44_n_0;
  wire o_w_data_out_OBUF_inst_i_45_n_0;
  wire o_w_data_out_OBUF_inst_i_46_n_0;
  wire o_w_data_out_OBUF_inst_i_47_n_0;
  wire o_w_data_out_OBUF_inst_i_48_n_0;
  wire o_w_data_out_OBUF_inst_i_49_n_0;
  wire o_w_data_out_OBUF_inst_i_4_n_0;
  wire o_w_data_out_OBUF_inst_i_50_n_0;
  wire o_w_data_out_OBUF_inst_i_51_n_0;
  wire o_w_data_out_OBUF_inst_i_52_n_0;
  wire o_w_data_out_OBUF_inst_i_53_n_0;
  wire o_w_data_out_OBUF_inst_i_54_n_0;
  wire o_w_data_out_OBUF_inst_i_55_n_0;
  wire o_w_data_out_OBUF_inst_i_56_n_0;
  wire o_w_data_out_OBUF_inst_i_57_n_0;
  wire o_w_data_out_OBUF_inst_i_58_n_0;
  wire o_w_data_out_OBUF_inst_i_59_n_0;
  wire o_w_data_out_OBUF_inst_i_5_n_0;
  wire o_w_data_out_OBUF_inst_i_60_n_0;
  wire o_w_data_out_OBUF_inst_i_61_n_0;
  wire o_w_data_out_OBUF_inst_i_62_n_0;
  wire o_w_data_out_OBUF_inst_i_63_n_0;
  wire o_w_data_out_OBUF_inst_i_64_n_0;
  wire o_w_data_out_OBUF_inst_i_65_n_0;
  wire o_w_data_out_OBUF_inst_i_66_n_0;
  wire o_w_data_out_OBUF_inst_i_67_n_0;
  wire o_w_data_out_OBUF_inst_i_68_n_0;
  wire o_w_data_out_OBUF_inst_i_69_n_0;
  wire o_w_data_out_OBUF_inst_i_6_n_0;
  wire o_w_data_out_OBUF_inst_i_70_n_0;
  wire o_w_data_out_OBUF_inst_i_71_n_0;
  wire o_w_data_out_OBUF_inst_i_72_n_0;
  wire o_w_data_out_OBUF_inst_i_73_n_0;
  wire o_w_data_out_OBUF_inst_i_74_n_0;
  wire o_w_data_out_OBUF_inst_i_75_n_0;
  wire o_w_data_out_OBUF_inst_i_76_n_0;
  wire o_w_data_out_OBUF_inst_i_77_n_0;
  wire o_w_data_out_OBUF_inst_i_78_n_0;
  wire o_w_data_out_OBUF_inst_i_79_n_0;
  wire o_w_data_out_OBUF_inst_i_7_n_0;
  wire o_w_data_out_OBUF_inst_i_80_n_0;
  wire o_w_data_out_OBUF_inst_i_81_n_0;
  wire o_w_data_out_OBUF_inst_i_82_n_0;
  wire o_w_data_out_OBUF_inst_i_83_n_0;
  wire o_w_data_out_OBUF_inst_i_84_n_0;
  wire o_w_data_out_OBUF_inst_i_85_n_0;
  wire o_w_data_out_OBUF_inst_i_86_n_0;
  wire o_w_data_out_OBUF_inst_i_87_n_0;
  wire o_w_data_out_OBUF_inst_i_88_n_0;
  wire o_w_data_out_OBUF_inst_i_89_n_0;
  wire o_w_data_out_OBUF_inst_i_8_n_0;
  wire o_w_data_out_OBUF_inst_i_90_n_0;
  wire o_w_data_out_OBUF_inst_i_91_n_0;
  wire o_w_data_out_OBUF_inst_i_92_n_0;
  wire o_w_data_out_OBUF_inst_i_93_n_0;
  wire o_w_data_out_OBUF_inst_i_94_n_0;
  wire o_w_data_out_OBUF_inst_i_95_n_0;
  wire o_w_data_out_OBUF_inst_i_96_n_0;
  wire o_w_data_out_OBUF_inst_i_97_n_0;
  wire o_w_data_out_OBUF_inst_i_98_n_0;
  wire o_w_data_out_OBUF_inst_i_99_n_0;
  wire o_w_data_out_OBUF_inst_i_9_n_0;
  wire [15:0]p_0_in;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("tb_replace_fifo_buffer_time_impl.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[0][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[0][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_buffer[0][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[3][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[0][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[10][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[10][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[10][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[10][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[10][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[11][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[11][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[12][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[12][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[12][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[12][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[12][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_buffer[13][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[13][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[13][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(\fifo_buffer[13][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[13][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_buffer[14][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[14][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[14][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(\fifo_buffer[14][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[14][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[15][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[15][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[15][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[15][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[15][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[15][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[15][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[15][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[15][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[15][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[15][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[15][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[15][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[15][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[16][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[16][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[16][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[16][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[16][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[16][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[16][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_buffer[16][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[16][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[16][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[16][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[16][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[16][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[16][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[16][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[16][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[16][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[16][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[16][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[16][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][0]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][10]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][11]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][12]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][13]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][14]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][15]_i_4_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][1]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][2]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][3]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][4]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][5]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][6]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][7]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][8]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[17][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][9]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[17][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[18][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[18][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[18][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[18][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[18][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[18][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[18][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_buffer[18][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[18][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[18][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[18][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[18][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[18][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[18][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[18][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[18][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[18][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[18][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[18][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[18][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][0]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][10]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][11]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][12]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][13]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][14]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][15]_i_4_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][1]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][2]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][3]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][4]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][5]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][6]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][7]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][8]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[19][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][9]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[19][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[1][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[1][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[20][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[20][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[20][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[20][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[20][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[20][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[20][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[20][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[20][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[20][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[20][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[20][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[20][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[20][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[20][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[20][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[20][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[20][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[20][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[20][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_buffer[21][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[21][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[21][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[21][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[22][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[22][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[22][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[22][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[22][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[22][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[22][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \fifo_buffer[22][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[22][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[22][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[22][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[22][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[22][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[22][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[22][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[22][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[22][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[22][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[22][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[22][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[23][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[23][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[24][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[24][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[24][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[24][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[24][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[24][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[24][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[24][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[24][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[24][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[24][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[24][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[24][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[24][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[24][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[24][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[24][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[24][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[24][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[24][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \fifo_buffer[25][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[25][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[25][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[25][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[25][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[26][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[26][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[26][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[26][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[26][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[26][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[26][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \fifo_buffer[26][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[26][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[26][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[26][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[26][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[26][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[26][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[26][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[26][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[26][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[26][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[26][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[26][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][0]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][10]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][11]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][12]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][13]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][14]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][15]_i_4_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][1]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][2]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][3]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][4]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][5]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][6]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][7]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][8]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[27][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[31][9]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[27][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(\fifo_buffer[28][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(\fifo_buffer[28][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(\fifo_buffer[28][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(\fifo_buffer[28][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(\fifo_buffer[28][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(\fifo_buffer[28][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(\fifo_buffer[28][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \fifo_buffer[28][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[28][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(\fifo_buffer[28][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(\fifo_buffer[28][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(\fifo_buffer[28][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(\fifo_buffer[28][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(\fifo_buffer[28][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(\fifo_buffer[28][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(\fifo_buffer[28][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(\fifo_buffer[28][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[28][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[28][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(\fifo_buffer[28][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][0]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][10]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][11]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][12]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][13]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][14]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_4_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \fifo_buffer[29][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[29][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][1]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][2]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][3]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][4]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][5]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][6]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][7]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][8]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \fifo_buffer[29][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][9]_i_2_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I5(\fifo_buffer[29][15]_i_2_n_0 ),
        .O(\fifo_buffer[29][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[2][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \fifo_buffer[30][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[30][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo_buffer[30][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[30][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .O(\fifo_buffer[30][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][0]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_buffer[31][0]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][10]_i_2_n_0 ),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'h0020)) 
    \fifo_buffer[31][10]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .O(\fifo_buffer[31][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][11]_i_2_n_0 ),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[31][11]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][12]_i_2_n_0 ),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'h0008)) 
    \fifo_buffer[31][12]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][13]_i_2_n_0 ),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'h0080)) 
    \fifo_buffer[31][13]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][14]_i_2_n_0 ),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'h0080)) 
    \fifo_buffer[31][14]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .O(\fifo_buffer[31][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_4_n_0 ),
        .O(p_0_in[15]));
  LUT2 #(
    .INIT(4'h7)) 
    \fifo_buffer[31][15]_i_3 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[31][15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \fifo_buffer[31][15]_i_4 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][1]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \fifo_buffer[31][1]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][2]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    \fifo_buffer[31][2]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .O(\fifo_buffer[31][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \fifo_buffer[31][3]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h0002)) 
    \fifo_buffer[31][4]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][5]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \fifo_buffer[31][5]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][6]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h0020)) 
    \fifo_buffer[31][6]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .O(\fifo_buffer[31][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][7]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[31][7]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][8]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h0002)) 
    \fifo_buffer[31][8]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo_buffer[31][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I3(\fifo_buffer[31][15]_i_3_n_0 ),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][9]_i_2_n_0 ),
        .O(p_0_in[9]));
  LUT4 #(
    .INIT(16'h0020)) 
    \fifo_buffer[31][9]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[1]),
        .O(\fifo_buffer[31][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_buffer[3][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[3][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[3][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[4][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \fifo_buffer[5][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I3(\fifo_buffer[21][15]_i_2_n_0 ),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[5][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[6][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[6][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[6][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[6][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \fifo_buffer[7][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(\fifo_buffer[31][15]_i_3_n_0 ),
        .O(\fifo_buffer[7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][0]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][10]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][11]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][12]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][13]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][14]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][15]_i_4_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo_buffer[8][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .O(\fifo_buffer[8][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][1]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][2]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][3]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][4]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][5]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][6]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][7]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][8]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo_buffer[8][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[8][15]_i_2_n_0 ),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I4(\fifo_buffer[31][9]_i_2_n_0 ),
        .I5(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .O(\fifo_buffer[8][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][0]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][0]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][10]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][10]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][11]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][11]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][12]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][12]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][13]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][13]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][14]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][14]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][15]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][15]_i_4_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \fifo_buffer[9][15]_i_2 
       (.I0(i_replace_fifo_buffer_addr_9_IBUF[7]),
        .I1(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[6]),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .O(\fifo_buffer[9][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][1]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][1]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][2]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][2]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][3]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][3]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][4]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][4]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][5]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][5]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][6]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][6]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][7]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][7]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][8]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][8]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \fifo_buffer[9][9]_i_1 
       (.I0(i_replace_fifo_buffer_write_enable_IBUF),
        .I1(\fifo_buffer[9][15]_i_2_n_0 ),
        .I2(\fifo_buffer[31][9]_i_2_n_0 ),
        .I3(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .O(\fifo_buffer[9][9]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[0][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[0][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[0] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[10][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[10][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[10] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[11][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[11][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[11] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[12][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[12][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[12] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[13][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[13][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[13] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[14][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[14][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[14] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[15][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[15][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[15] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[16][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[16][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[16] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[17][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[17][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[17] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[18][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[18][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[18] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[19][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[19][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[19] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[1][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[1][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[1] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[20][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[20][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[20] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[21][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[21][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[21] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[22][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[22][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[22] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[23][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[23][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[23] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[24][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[24][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[24] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[25][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[25][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[25] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[26][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[26][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[26] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[27][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[27][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[27] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[28][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[28][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[28] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[29][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[29][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[29] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[2][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[2][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[2] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[30][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[30][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[30] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][0] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[0]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][10] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[10]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][11] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[11]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][12] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[12]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][13] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[13]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][14] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[14]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][15] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[15]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][1] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[1]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][2] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[2]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][3] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[3]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][4] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[4]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][5] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[5]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][6] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[6]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][7] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[7]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][8] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[8]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[31][9] 
       (.C(fire_IBUF_BUFG),
        .CE(p_0_in[9]),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[31] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[3][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[3][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[3] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[4][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[4][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[4] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[5][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[5][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[5] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[6][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[6][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[6] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[7][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[7][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[7] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[8][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[8][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[8] [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][0] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][10] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][11] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][11]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][12] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][12]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][13] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][13]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][14] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][14]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][15] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][1] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][1]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][2] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][3] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][4] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][5] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][5]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][6] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][6]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][7] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][8] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][8]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \fifo_buffer_reg[9][9] 
       (.C(fire_IBUF_BUFG),
        .CE(\fifo_buffer[9][9]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(i_data_in_IBUF),
        .Q(\fifo_buffer_reg[9] [9]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    fire_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(fire_IBUF),
        .O(fire_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_UNIQ_BASE_ fire_IBUF_inst
       (.I(fire),
        .O(fire_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD25 i_data_in_IBUF_inst
       (.I(i_data_in),
        .O(i_data_in_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD26 \i_replace_fifo_buffer_addr_9_IBUF[0]_inst 
       (.I(i_replace_fifo_buffer_addr_9[0]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD27 \i_replace_fifo_buffer_addr_9_IBUF[1]_inst 
       (.I(i_replace_fifo_buffer_addr_9[1]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD28 \i_replace_fifo_buffer_addr_9_IBUF[2]_inst 
       (.I(i_replace_fifo_buffer_addr_9[2]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[2]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD29 \i_replace_fifo_buffer_addr_9_IBUF[3]_inst 
       (.I(i_replace_fifo_buffer_addr_9[3]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[3]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD30 \i_replace_fifo_buffer_addr_9_IBUF[4]_inst 
       (.I(i_replace_fifo_buffer_addr_9[4]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[4]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD31 \i_replace_fifo_buffer_addr_9_IBUF[5]_inst 
       (.I(i_replace_fifo_buffer_addr_9[5]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[5]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD32 \i_replace_fifo_buffer_addr_9_IBUF[6]_inst 
       (.I(i_replace_fifo_buffer_addr_9[6]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[6]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD33 \i_replace_fifo_buffer_addr_9_IBUF[7]_inst 
       (.I(i_replace_fifo_buffer_addr_9[7]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[7]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD34 \i_replace_fifo_buffer_addr_9_IBUF[8]_inst 
       (.I(i_replace_fifo_buffer_addr_9[8]),
        .O(i_replace_fifo_buffer_addr_9_IBUF[8]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD35 i_replace_fifo_buffer_write_enable_IBUF_inst
       (.I(i_replace_fifo_buffer_write_enable),
        .O(i_replace_fifo_buffer_write_enable_IBUF));
  OBUF o_data_out_OBUF_inst
       (.I(o_data_out_OBUF),
        .O(o_data_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_1
       (.I0(o_w_data_out_OBUF_inst_i_4_n_0),
        .I1(o_w_data_out_OBUF_inst_i_3_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I3(o_data_out_reg_i_2_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I5(o_data_out_reg_i_3_n_0),
        .O(o_data_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_100
       (.I0(\fifo_buffer_reg[3] [0]),
        .I1(\fifo_buffer_reg[2] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [0]),
        .O(o_data_out_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_101
       (.I0(\fifo_buffer_reg[7] [0]),
        .I1(\fifo_buffer_reg[6] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [0]),
        .O(o_data_out_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_102
       (.I0(\fifo_buffer_reg[11] [0]),
        .I1(\fifo_buffer_reg[10] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [0]),
        .O(o_data_out_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_103
       (.I0(\fifo_buffer_reg[15] [0]),
        .I1(\fifo_buffer_reg[14] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [0]),
        .O(o_data_out_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_104
       (.I0(\fifo_buffer_reg[19] [3]),
        .I1(\fifo_buffer_reg[18] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [3]),
        .O(o_data_out_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_105
       (.I0(\fifo_buffer_reg[23] [3]),
        .I1(\fifo_buffer_reg[22] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [3]),
        .O(o_data_out_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_106
       (.I0(\fifo_buffer_reg[27] [3]),
        .I1(\fifo_buffer_reg[26] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [3]),
        .O(o_data_out_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_107
       (.I0(\fifo_buffer_reg[31] [3]),
        .I1(\fifo_buffer_reg[30] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [3]),
        .O(o_data_out_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_108
       (.I0(\fifo_buffer_reg[3] [3]),
        .I1(\fifo_buffer_reg[2] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [3]),
        .O(o_data_out_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_109
       (.I0(\fifo_buffer_reg[7] [3]),
        .I1(\fifo_buffer_reg[6] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [3]),
        .O(o_data_out_i_109_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_110
       (.I0(\fifo_buffer_reg[11] [3]),
        .I1(\fifo_buffer_reg[10] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [3]),
        .O(o_data_out_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_111
       (.I0(\fifo_buffer_reg[15] [3]),
        .I1(\fifo_buffer_reg[14] [3]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [3]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [3]),
        .O(o_data_out_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_112
       (.I0(\fifo_buffer_reg[19] [2]),
        .I1(\fifo_buffer_reg[18] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [2]),
        .O(o_data_out_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_113
       (.I0(\fifo_buffer_reg[23] [2]),
        .I1(\fifo_buffer_reg[22] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [2]),
        .O(o_data_out_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_114
       (.I0(\fifo_buffer_reg[27] [2]),
        .I1(\fifo_buffer_reg[26] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [2]),
        .O(o_data_out_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_115
       (.I0(\fifo_buffer_reg[31] [2]),
        .I1(\fifo_buffer_reg[30] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [2]),
        .O(o_data_out_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_116
       (.I0(\fifo_buffer_reg[3] [2]),
        .I1(\fifo_buffer_reg[2] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [2]),
        .O(o_data_out_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_117
       (.I0(\fifo_buffer_reg[7] [2]),
        .I1(\fifo_buffer_reg[6] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [2]),
        .O(o_data_out_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_118
       (.I0(\fifo_buffer_reg[11] [2]),
        .I1(\fifo_buffer_reg[10] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [2]),
        .O(o_data_out_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_119
       (.I0(\fifo_buffer_reg[15] [2]),
        .I1(\fifo_buffer_reg[14] [2]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [2]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [2]),
        .O(o_data_out_i_119_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_4
       (.I0(o_data_out_reg_i_8_n_0),
        .I1(o_data_out_reg_i_9_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_data_out_reg_i_10_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_data_out_reg_i_11_n_0),
        .O(o_data_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_5
       (.I0(o_data_out_reg_i_12_n_0),
        .I1(o_data_out_reg_i_13_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_data_out_reg_i_14_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_data_out_reg_i_15_n_0),
        .O(o_data_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_56
       (.I0(\fifo_buffer_reg[19] [5]),
        .I1(\fifo_buffer_reg[18] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [5]),
        .O(o_data_out_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_57
       (.I0(\fifo_buffer_reg[23] [5]),
        .I1(\fifo_buffer_reg[22] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [5]),
        .O(o_data_out_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_58
       (.I0(\fifo_buffer_reg[27] [5]),
        .I1(\fifo_buffer_reg[26] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [5]),
        .O(o_data_out_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_59
       (.I0(\fifo_buffer_reg[31] [5]),
        .I1(\fifo_buffer_reg[30] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [5]),
        .O(o_data_out_i_59_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_6
       (.I0(o_data_out_reg_i_16_n_0),
        .I1(o_data_out_reg_i_17_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_data_out_reg_i_18_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_data_out_reg_i_19_n_0),
        .O(o_data_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_60
       (.I0(\fifo_buffer_reg[3] [5]),
        .I1(\fifo_buffer_reg[2] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [5]),
        .O(o_data_out_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_61
       (.I0(\fifo_buffer_reg[7] [5]),
        .I1(\fifo_buffer_reg[6] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [5]),
        .O(o_data_out_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_62
       (.I0(\fifo_buffer_reg[11] [5]),
        .I1(\fifo_buffer_reg[10] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [5]),
        .O(o_data_out_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_63
       (.I0(\fifo_buffer_reg[15] [5]),
        .I1(\fifo_buffer_reg[14] [5]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [5]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [5]),
        .O(o_data_out_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_64
       (.I0(\fifo_buffer_reg[19] [4]),
        .I1(\fifo_buffer_reg[18] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [4]),
        .O(o_data_out_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_65
       (.I0(\fifo_buffer_reg[23] [4]),
        .I1(\fifo_buffer_reg[22] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [4]),
        .O(o_data_out_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_66
       (.I0(\fifo_buffer_reg[27] [4]),
        .I1(\fifo_buffer_reg[26] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [4]),
        .O(o_data_out_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_67
       (.I0(\fifo_buffer_reg[31] [4]),
        .I1(\fifo_buffer_reg[30] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [4]),
        .O(o_data_out_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_68
       (.I0(\fifo_buffer_reg[3] [4]),
        .I1(\fifo_buffer_reg[2] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [4]),
        .O(o_data_out_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_69
       (.I0(\fifo_buffer_reg[7] [4]),
        .I1(\fifo_buffer_reg[6] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [4]),
        .O(o_data_out_i_69_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_7
       (.I0(o_data_out_reg_i_20_n_0),
        .I1(o_data_out_reg_i_21_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_data_out_reg_i_22_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_data_out_reg_i_23_n_0),
        .O(o_data_out_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_70
       (.I0(\fifo_buffer_reg[11] [4]),
        .I1(\fifo_buffer_reg[10] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [4]),
        .O(o_data_out_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_71
       (.I0(\fifo_buffer_reg[15] [4]),
        .I1(\fifo_buffer_reg[14] [4]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [4]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [4]),
        .O(o_data_out_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_72
       (.I0(\fifo_buffer_reg[19] [7]),
        .I1(\fifo_buffer_reg[18] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [7]),
        .O(o_data_out_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_73
       (.I0(\fifo_buffer_reg[23] [7]),
        .I1(\fifo_buffer_reg[22] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [7]),
        .O(o_data_out_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_74
       (.I0(\fifo_buffer_reg[27] [7]),
        .I1(\fifo_buffer_reg[26] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [7]),
        .O(o_data_out_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_75
       (.I0(\fifo_buffer_reg[31] [7]),
        .I1(\fifo_buffer_reg[30] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [7]),
        .O(o_data_out_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_76
       (.I0(\fifo_buffer_reg[3] [7]),
        .I1(\fifo_buffer_reg[2] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [7]),
        .O(o_data_out_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_77
       (.I0(\fifo_buffer_reg[7] [7]),
        .I1(\fifo_buffer_reg[6] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [7]),
        .O(o_data_out_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_78
       (.I0(\fifo_buffer_reg[11] [7]),
        .I1(\fifo_buffer_reg[10] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [7]),
        .O(o_data_out_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_79
       (.I0(\fifo_buffer_reg[15] [7]),
        .I1(\fifo_buffer_reg[14] [7]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [7]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [7]),
        .O(o_data_out_i_79_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_80
       (.I0(\fifo_buffer_reg[19] [6]),
        .I1(\fifo_buffer_reg[18] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [6]),
        .O(o_data_out_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_81
       (.I0(\fifo_buffer_reg[23] [6]),
        .I1(\fifo_buffer_reg[22] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [6]),
        .O(o_data_out_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_82
       (.I0(\fifo_buffer_reg[27] [6]),
        .I1(\fifo_buffer_reg[26] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [6]),
        .O(o_data_out_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_83
       (.I0(\fifo_buffer_reg[31] [6]),
        .I1(\fifo_buffer_reg[30] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [6]),
        .O(o_data_out_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_84
       (.I0(\fifo_buffer_reg[3] [6]),
        .I1(\fifo_buffer_reg[2] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [6]),
        .O(o_data_out_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_85
       (.I0(\fifo_buffer_reg[7] [6]),
        .I1(\fifo_buffer_reg[6] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [6]),
        .O(o_data_out_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_86
       (.I0(\fifo_buffer_reg[11] [6]),
        .I1(\fifo_buffer_reg[10] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [6]),
        .O(o_data_out_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_87
       (.I0(\fifo_buffer_reg[15] [6]),
        .I1(\fifo_buffer_reg[14] [6]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [6]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [6]),
        .O(o_data_out_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_88
       (.I0(\fifo_buffer_reg[19] [1]),
        .I1(\fifo_buffer_reg[18] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [1]),
        .O(o_data_out_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_89
       (.I0(\fifo_buffer_reg[23] [1]),
        .I1(\fifo_buffer_reg[22] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [1]),
        .O(o_data_out_i_89_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_90
       (.I0(\fifo_buffer_reg[27] [1]),
        .I1(\fifo_buffer_reg[26] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [1]),
        .O(o_data_out_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_91
       (.I0(\fifo_buffer_reg[31] [1]),
        .I1(\fifo_buffer_reg[30] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [1]),
        .O(o_data_out_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_92
       (.I0(\fifo_buffer_reg[3] [1]),
        .I1(\fifo_buffer_reg[2] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [1]),
        .O(o_data_out_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_93
       (.I0(\fifo_buffer_reg[7] [1]),
        .I1(\fifo_buffer_reg[6] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [1]),
        .O(o_data_out_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_94
       (.I0(\fifo_buffer_reg[11] [1]),
        .I1(\fifo_buffer_reg[10] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [1]),
        .O(o_data_out_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_95
       (.I0(\fifo_buffer_reg[15] [1]),
        .I1(\fifo_buffer_reg[14] [1]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [1]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [1]),
        .O(o_data_out_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_96
       (.I0(\fifo_buffer_reg[19] [0]),
        .I1(\fifo_buffer_reg[18] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [0]),
        .O(o_data_out_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_97
       (.I0(\fifo_buffer_reg[23] [0]),
        .I1(\fifo_buffer_reg[22] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [0]),
        .O(o_data_out_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_98
       (.I0(\fifo_buffer_reg[27] [0]),
        .I1(\fifo_buffer_reg[26] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [0]),
        .O(o_data_out_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_data_out_i_99
       (.I0(\fifo_buffer_reg[31] [0]),
        .I1(\fifo_buffer_reg[30] [0]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [0]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [0]),
        .O(o_data_out_i_99_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    o_data_out_reg
       (.C(fire_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(o_data_out_i_1_n_0),
        .Q(o_data_out_OBUF));
  MUXF8 o_data_out_reg_i_10
       (.I0(o_data_out_reg_i_28_n_0),
        .I1(o_data_out_reg_i_29_n_0),
        .O(o_data_out_reg_i_10_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_11
       (.I0(o_data_out_reg_i_30_n_0),
        .I1(o_data_out_reg_i_31_n_0),
        .O(o_data_out_reg_i_11_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_12
       (.I0(o_data_out_reg_i_32_n_0),
        .I1(o_data_out_reg_i_33_n_0),
        .O(o_data_out_reg_i_12_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_13
       (.I0(o_data_out_reg_i_34_n_0),
        .I1(o_data_out_reg_i_35_n_0),
        .O(o_data_out_reg_i_13_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_14
       (.I0(o_data_out_reg_i_36_n_0),
        .I1(o_data_out_reg_i_37_n_0),
        .O(o_data_out_reg_i_14_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_15
       (.I0(o_data_out_reg_i_38_n_0),
        .I1(o_data_out_reg_i_39_n_0),
        .O(o_data_out_reg_i_15_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_16
       (.I0(o_data_out_reg_i_40_n_0),
        .I1(o_data_out_reg_i_41_n_0),
        .O(o_data_out_reg_i_16_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_17
       (.I0(o_data_out_reg_i_42_n_0),
        .I1(o_data_out_reg_i_43_n_0),
        .O(o_data_out_reg_i_17_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_18
       (.I0(o_data_out_reg_i_44_n_0),
        .I1(o_data_out_reg_i_45_n_0),
        .O(o_data_out_reg_i_18_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_19
       (.I0(o_data_out_reg_i_46_n_0),
        .I1(o_data_out_reg_i_47_n_0),
        .O(o_data_out_reg_i_19_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF7 o_data_out_reg_i_2
       (.I0(o_data_out_i_4_n_0),
        .I1(o_data_out_i_5_n_0),
        .O(o_data_out_reg_i_2_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[1]));
  MUXF8 o_data_out_reg_i_20
       (.I0(o_data_out_reg_i_48_n_0),
        .I1(o_data_out_reg_i_49_n_0),
        .O(o_data_out_reg_i_20_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_21
       (.I0(o_data_out_reg_i_50_n_0),
        .I1(o_data_out_reg_i_51_n_0),
        .O(o_data_out_reg_i_21_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_22
       (.I0(o_data_out_reg_i_52_n_0),
        .I1(o_data_out_reg_i_53_n_0),
        .O(o_data_out_reg_i_22_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_23
       (.I0(o_data_out_reg_i_54_n_0),
        .I1(o_data_out_reg_i_55_n_0),
        .O(o_data_out_reg_i_23_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF7 o_data_out_reg_i_24
       (.I0(o_data_out_i_56_n_0),
        .I1(o_data_out_i_57_n_0),
        .O(o_data_out_reg_i_24_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_25
       (.I0(o_data_out_i_58_n_0),
        .I1(o_data_out_i_59_n_0),
        .O(o_data_out_reg_i_25_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_26
       (.I0(o_data_out_i_60_n_0),
        .I1(o_data_out_i_61_n_0),
        .O(o_data_out_reg_i_26_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_27
       (.I0(o_data_out_i_62_n_0),
        .I1(o_data_out_i_63_n_0),
        .O(o_data_out_reg_i_27_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_28
       (.I0(o_data_out_i_64_n_0),
        .I1(o_data_out_i_65_n_0),
        .O(o_data_out_reg_i_28_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_29
       (.I0(o_data_out_i_66_n_0),
        .I1(o_data_out_i_67_n_0),
        .O(o_data_out_reg_i_29_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_3
       (.I0(o_data_out_i_6_n_0),
        .I1(o_data_out_i_7_n_0),
        .O(o_data_out_reg_i_3_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[1]));
  MUXF7 o_data_out_reg_i_30
       (.I0(o_data_out_i_68_n_0),
        .I1(o_data_out_i_69_n_0),
        .O(o_data_out_reg_i_30_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_31
       (.I0(o_data_out_i_70_n_0),
        .I1(o_data_out_i_71_n_0),
        .O(o_data_out_reg_i_31_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_32
       (.I0(o_data_out_i_72_n_0),
        .I1(o_data_out_i_73_n_0),
        .O(o_data_out_reg_i_32_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_33
       (.I0(o_data_out_i_74_n_0),
        .I1(o_data_out_i_75_n_0),
        .O(o_data_out_reg_i_33_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_34
       (.I0(o_data_out_i_76_n_0),
        .I1(o_data_out_i_77_n_0),
        .O(o_data_out_reg_i_34_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_35
       (.I0(o_data_out_i_78_n_0),
        .I1(o_data_out_i_79_n_0),
        .O(o_data_out_reg_i_35_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_36
       (.I0(o_data_out_i_80_n_0),
        .I1(o_data_out_i_81_n_0),
        .O(o_data_out_reg_i_36_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_37
       (.I0(o_data_out_i_82_n_0),
        .I1(o_data_out_i_83_n_0),
        .O(o_data_out_reg_i_37_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_38
       (.I0(o_data_out_i_84_n_0),
        .I1(o_data_out_i_85_n_0),
        .O(o_data_out_reg_i_38_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_39
       (.I0(o_data_out_i_86_n_0),
        .I1(o_data_out_i_87_n_0),
        .O(o_data_out_reg_i_39_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_40
       (.I0(o_data_out_i_88_n_0),
        .I1(o_data_out_i_89_n_0),
        .O(o_data_out_reg_i_40_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_41
       (.I0(o_data_out_i_90_n_0),
        .I1(o_data_out_i_91_n_0),
        .O(o_data_out_reg_i_41_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_42
       (.I0(o_data_out_i_92_n_0),
        .I1(o_data_out_i_93_n_0),
        .O(o_data_out_reg_i_42_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_43
       (.I0(o_data_out_i_94_n_0),
        .I1(o_data_out_i_95_n_0),
        .O(o_data_out_reg_i_43_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_44
       (.I0(o_data_out_i_96_n_0),
        .I1(o_data_out_i_97_n_0),
        .O(o_data_out_reg_i_44_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_45
       (.I0(o_data_out_i_98_n_0),
        .I1(o_data_out_i_99_n_0),
        .O(o_data_out_reg_i_45_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_46
       (.I0(o_data_out_i_100_n_0),
        .I1(o_data_out_i_101_n_0),
        .O(o_data_out_reg_i_46_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_47
       (.I0(o_data_out_i_102_n_0),
        .I1(o_data_out_i_103_n_0),
        .O(o_data_out_reg_i_47_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_48
       (.I0(o_data_out_i_104_n_0),
        .I1(o_data_out_i_105_n_0),
        .O(o_data_out_reg_i_48_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_49
       (.I0(o_data_out_i_106_n_0),
        .I1(o_data_out_i_107_n_0),
        .O(o_data_out_reg_i_49_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_50
       (.I0(o_data_out_i_108_n_0),
        .I1(o_data_out_i_109_n_0),
        .O(o_data_out_reg_i_50_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_51
       (.I0(o_data_out_i_110_n_0),
        .I1(o_data_out_i_111_n_0),
        .O(o_data_out_reg_i_51_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_52
       (.I0(o_data_out_i_112_n_0),
        .I1(o_data_out_i_113_n_0),
        .O(o_data_out_reg_i_52_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_53
       (.I0(o_data_out_i_114_n_0),
        .I1(o_data_out_i_115_n_0),
        .O(o_data_out_reg_i_53_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_54
       (.I0(o_data_out_i_116_n_0),
        .I1(o_data_out_i_117_n_0),
        .O(o_data_out_reg_i_54_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_data_out_reg_i_55
       (.I0(o_data_out_i_118_n_0),
        .I1(o_data_out_i_119_n_0),
        .O(o_data_out_reg_i_55_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF8 o_data_out_reg_i_8
       (.I0(o_data_out_reg_i_24_n_0),
        .I1(o_data_out_reg_i_25_n_0),
        .O(o_data_out_reg_i_8_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_data_out_reg_i_9
       (.I0(o_data_out_reg_i_26_n_0),
        .I1(o_data_out_reg_i_27_n_0),
        .O(o_data_out_reg_i_9_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  OBUF o_w_data_out_OBUF_inst
       (.I(o_w_data_out_OBUF),
        .O(o_w_data_out));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    o_w_data_out_OBUF_inst_i_1
       (.I0(rst_IBUF),
        .I1(o_w_data_out_OBUF_inst_i_2_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[3]),
        .I3(o_w_data_out_OBUF_inst_i_3_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[2]),
        .I5(o_w_data_out_OBUF_inst_i_4_n_0),
        .O(o_w_data_out_OBUF));
  MUXF8 o_w_data_out_OBUF_inst_i_10
       (.I0(o_w_data_out_OBUF_inst_i_27_n_0),
        .I1(o_w_data_out_OBUF_inst_i_28_n_0),
        .O(o_w_data_out_OBUF_inst_i_10_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_100
       (.I0(\fifo_buffer_reg[31] [12]),
        .I1(\fifo_buffer_reg[30] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [12]),
        .O(o_w_data_out_OBUF_inst_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_101
       (.I0(\fifo_buffer_reg[3] [12]),
        .I1(\fifo_buffer_reg[2] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [12]),
        .O(o_w_data_out_OBUF_inst_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_102
       (.I0(\fifo_buffer_reg[7] [12]),
        .I1(\fifo_buffer_reg[6] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [12]),
        .O(o_w_data_out_OBUF_inst_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_103
       (.I0(\fifo_buffer_reg[11] [12]),
        .I1(\fifo_buffer_reg[10] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [12]),
        .O(o_w_data_out_OBUF_inst_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_104
       (.I0(\fifo_buffer_reg[15] [12]),
        .I1(\fifo_buffer_reg[14] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [12]),
        .O(o_w_data_out_OBUF_inst_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_105
       (.I0(\fifo_buffer_reg[19] [15]),
        .I1(\fifo_buffer_reg[18] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [15]),
        .O(o_w_data_out_OBUF_inst_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_106
       (.I0(\fifo_buffer_reg[23] [15]),
        .I1(\fifo_buffer_reg[22] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [15]),
        .O(o_w_data_out_OBUF_inst_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_107
       (.I0(\fifo_buffer_reg[27] [15]),
        .I1(\fifo_buffer_reg[26] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [15]),
        .O(o_w_data_out_OBUF_inst_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_108
       (.I0(\fifo_buffer_reg[31] [15]),
        .I1(\fifo_buffer_reg[30] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [15]),
        .O(o_w_data_out_OBUF_inst_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_109
       (.I0(\fifo_buffer_reg[3] [15]),
        .I1(\fifo_buffer_reg[2] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [15]),
        .O(o_w_data_out_OBUF_inst_i_109_n_0));
  MUXF8 o_w_data_out_OBUF_inst_i_11
       (.I0(o_w_data_out_OBUF_inst_i_29_n_0),
        .I1(o_w_data_out_OBUF_inst_i_30_n_0),
        .O(o_w_data_out_OBUF_inst_i_11_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_110
       (.I0(\fifo_buffer_reg[7] [15]),
        .I1(\fifo_buffer_reg[6] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [15]),
        .O(o_w_data_out_OBUF_inst_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_111
       (.I0(\fifo_buffer_reg[11] [15]),
        .I1(\fifo_buffer_reg[10] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [15]),
        .O(o_w_data_out_OBUF_inst_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_112
       (.I0(\fifo_buffer_reg[15] [15]),
        .I1(\fifo_buffer_reg[14] [15]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [15]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [15]),
        .O(o_w_data_out_OBUF_inst_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_113
       (.I0(\fifo_buffer_reg[19] [14]),
        .I1(\fifo_buffer_reg[18] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [14]),
        .O(o_w_data_out_OBUF_inst_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_114
       (.I0(\fifo_buffer_reg[23] [14]),
        .I1(\fifo_buffer_reg[22] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [14]),
        .O(o_w_data_out_OBUF_inst_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_115
       (.I0(\fifo_buffer_reg[27] [14]),
        .I1(\fifo_buffer_reg[26] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [14]),
        .O(o_w_data_out_OBUF_inst_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_116
       (.I0(\fifo_buffer_reg[31] [14]),
        .I1(\fifo_buffer_reg[30] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [14]),
        .O(o_w_data_out_OBUF_inst_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_117
       (.I0(\fifo_buffer_reg[3] [14]),
        .I1(\fifo_buffer_reg[2] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [14]),
        .O(o_w_data_out_OBUF_inst_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_118
       (.I0(\fifo_buffer_reg[7] [14]),
        .I1(\fifo_buffer_reg[6] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [14]),
        .O(o_w_data_out_OBUF_inst_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_119
       (.I0(\fifo_buffer_reg[11] [14]),
        .I1(\fifo_buffer_reg[10] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [14]),
        .O(o_w_data_out_OBUF_inst_i_119_n_0));
  MUXF8 o_w_data_out_OBUF_inst_i_12
       (.I0(o_w_data_out_OBUF_inst_i_31_n_0),
        .I1(o_w_data_out_OBUF_inst_i_32_n_0),
        .O(o_w_data_out_OBUF_inst_i_12_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_120
       (.I0(\fifo_buffer_reg[15] [14]),
        .I1(\fifo_buffer_reg[14] [14]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [14]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [14]),
        .O(o_w_data_out_OBUF_inst_i_120_n_0));
  MUXF8 o_w_data_out_OBUF_inst_i_13
       (.I0(o_w_data_out_OBUF_inst_i_33_n_0),
        .I1(o_w_data_out_OBUF_inst_i_34_n_0),
        .O(o_w_data_out_OBUF_inst_i_13_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_14
       (.I0(o_w_data_out_OBUF_inst_i_35_n_0),
        .I1(o_w_data_out_OBUF_inst_i_36_n_0),
        .O(o_w_data_out_OBUF_inst_i_14_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_15
       (.I0(o_w_data_out_OBUF_inst_i_37_n_0),
        .I1(o_w_data_out_OBUF_inst_i_38_n_0),
        .O(o_w_data_out_OBUF_inst_i_15_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_16
       (.I0(o_w_data_out_OBUF_inst_i_39_n_0),
        .I1(o_w_data_out_OBUF_inst_i_40_n_0),
        .O(o_w_data_out_OBUF_inst_i_16_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_17
       (.I0(o_w_data_out_OBUF_inst_i_41_n_0),
        .I1(o_w_data_out_OBUF_inst_i_42_n_0),
        .O(o_w_data_out_OBUF_inst_i_17_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_18
       (.I0(o_w_data_out_OBUF_inst_i_43_n_0),
        .I1(o_w_data_out_OBUF_inst_i_44_n_0),
        .O(o_w_data_out_OBUF_inst_i_18_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_19
       (.I0(o_w_data_out_OBUF_inst_i_45_n_0),
        .I1(o_w_data_out_OBUF_inst_i_46_n_0),
        .O(o_w_data_out_OBUF_inst_i_19_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_2
       (.I0(o_data_out_reg_i_3_n_0),
        .I1(o_data_out_reg_i_2_n_0),
        .O(o_w_data_out_OBUF_inst_i_2_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[2]));
  MUXF8 o_w_data_out_OBUF_inst_i_20
       (.I0(o_w_data_out_OBUF_inst_i_47_n_0),
        .I1(o_w_data_out_OBUF_inst_i_48_n_0),
        .O(o_w_data_out_OBUF_inst_i_20_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_21
       (.I0(o_w_data_out_OBUF_inst_i_49_n_0),
        .I1(o_w_data_out_OBUF_inst_i_50_n_0),
        .O(o_w_data_out_OBUF_inst_i_21_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_22
       (.I0(o_w_data_out_OBUF_inst_i_51_n_0),
        .I1(o_w_data_out_OBUF_inst_i_52_n_0),
        .O(o_w_data_out_OBUF_inst_i_22_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_23
       (.I0(o_w_data_out_OBUF_inst_i_53_n_0),
        .I1(o_w_data_out_OBUF_inst_i_54_n_0),
        .O(o_w_data_out_OBUF_inst_i_23_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF8 o_w_data_out_OBUF_inst_i_24
       (.I0(o_w_data_out_OBUF_inst_i_55_n_0),
        .I1(o_w_data_out_OBUF_inst_i_56_n_0),
        .O(o_w_data_out_OBUF_inst_i_24_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  MUXF7 o_w_data_out_OBUF_inst_i_25
       (.I0(o_w_data_out_OBUF_inst_i_57_n_0),
        .I1(o_w_data_out_OBUF_inst_i_58_n_0),
        .O(o_w_data_out_OBUF_inst_i_25_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_26
       (.I0(o_w_data_out_OBUF_inst_i_59_n_0),
        .I1(o_w_data_out_OBUF_inst_i_60_n_0),
        .O(o_w_data_out_OBUF_inst_i_26_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_27
       (.I0(o_w_data_out_OBUF_inst_i_61_n_0),
        .I1(o_w_data_out_OBUF_inst_i_62_n_0),
        .O(o_w_data_out_OBUF_inst_i_27_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_28
       (.I0(o_w_data_out_OBUF_inst_i_63_n_0),
        .I1(o_w_data_out_OBUF_inst_i_64_n_0),
        .O(o_w_data_out_OBUF_inst_i_28_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_29
       (.I0(o_w_data_out_OBUF_inst_i_65_n_0),
        .I1(o_w_data_out_OBUF_inst_i_66_n_0),
        .O(o_w_data_out_OBUF_inst_i_29_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_3
       (.I0(o_w_data_out_OBUF_inst_i_5_n_0),
        .I1(o_w_data_out_OBUF_inst_i_6_n_0),
        .O(o_w_data_out_OBUF_inst_i_3_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[1]));
  MUXF7 o_w_data_out_OBUF_inst_i_30
       (.I0(o_w_data_out_OBUF_inst_i_67_n_0),
        .I1(o_w_data_out_OBUF_inst_i_68_n_0),
        .O(o_w_data_out_OBUF_inst_i_30_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_31
       (.I0(o_w_data_out_OBUF_inst_i_69_n_0),
        .I1(o_w_data_out_OBUF_inst_i_70_n_0),
        .O(o_w_data_out_OBUF_inst_i_31_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_32
       (.I0(o_w_data_out_OBUF_inst_i_71_n_0),
        .I1(o_w_data_out_OBUF_inst_i_72_n_0),
        .O(o_w_data_out_OBUF_inst_i_32_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_33
       (.I0(o_w_data_out_OBUF_inst_i_73_n_0),
        .I1(o_w_data_out_OBUF_inst_i_74_n_0),
        .O(o_w_data_out_OBUF_inst_i_33_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_34
       (.I0(o_w_data_out_OBUF_inst_i_75_n_0),
        .I1(o_w_data_out_OBUF_inst_i_76_n_0),
        .O(o_w_data_out_OBUF_inst_i_34_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_35
       (.I0(o_w_data_out_OBUF_inst_i_77_n_0),
        .I1(o_w_data_out_OBUF_inst_i_78_n_0),
        .O(o_w_data_out_OBUF_inst_i_35_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_36
       (.I0(o_w_data_out_OBUF_inst_i_79_n_0),
        .I1(o_w_data_out_OBUF_inst_i_80_n_0),
        .O(o_w_data_out_OBUF_inst_i_36_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_37
       (.I0(o_w_data_out_OBUF_inst_i_81_n_0),
        .I1(o_w_data_out_OBUF_inst_i_82_n_0),
        .O(o_w_data_out_OBUF_inst_i_37_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_38
       (.I0(o_w_data_out_OBUF_inst_i_83_n_0),
        .I1(o_w_data_out_OBUF_inst_i_84_n_0),
        .O(o_w_data_out_OBUF_inst_i_38_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_39
       (.I0(o_w_data_out_OBUF_inst_i_85_n_0),
        .I1(o_w_data_out_OBUF_inst_i_86_n_0),
        .O(o_w_data_out_OBUF_inst_i_39_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_4
       (.I0(o_w_data_out_OBUF_inst_i_7_n_0),
        .I1(o_w_data_out_OBUF_inst_i_8_n_0),
        .O(o_w_data_out_OBUF_inst_i_4_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[1]));
  MUXF7 o_w_data_out_OBUF_inst_i_40
       (.I0(o_w_data_out_OBUF_inst_i_87_n_0),
        .I1(o_w_data_out_OBUF_inst_i_88_n_0),
        .O(o_w_data_out_OBUF_inst_i_40_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_41
       (.I0(o_w_data_out_OBUF_inst_i_89_n_0),
        .I1(o_w_data_out_OBUF_inst_i_90_n_0),
        .O(o_w_data_out_OBUF_inst_i_41_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_42
       (.I0(o_w_data_out_OBUF_inst_i_91_n_0),
        .I1(o_w_data_out_OBUF_inst_i_92_n_0),
        .O(o_w_data_out_OBUF_inst_i_42_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_43
       (.I0(o_w_data_out_OBUF_inst_i_93_n_0),
        .I1(o_w_data_out_OBUF_inst_i_94_n_0),
        .O(o_w_data_out_OBUF_inst_i_43_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_44
       (.I0(o_w_data_out_OBUF_inst_i_95_n_0),
        .I1(o_w_data_out_OBUF_inst_i_96_n_0),
        .O(o_w_data_out_OBUF_inst_i_44_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_45
       (.I0(o_w_data_out_OBUF_inst_i_97_n_0),
        .I1(o_w_data_out_OBUF_inst_i_98_n_0),
        .O(o_w_data_out_OBUF_inst_i_45_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_46
       (.I0(o_w_data_out_OBUF_inst_i_99_n_0),
        .I1(o_w_data_out_OBUF_inst_i_100_n_0),
        .O(o_w_data_out_OBUF_inst_i_46_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_47
       (.I0(o_w_data_out_OBUF_inst_i_101_n_0),
        .I1(o_w_data_out_OBUF_inst_i_102_n_0),
        .O(o_w_data_out_OBUF_inst_i_47_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_48
       (.I0(o_w_data_out_OBUF_inst_i_103_n_0),
        .I1(o_w_data_out_OBUF_inst_i_104_n_0),
        .O(o_w_data_out_OBUF_inst_i_48_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_49
       (.I0(o_w_data_out_OBUF_inst_i_105_n_0),
        .I1(o_w_data_out_OBUF_inst_i_106_n_0),
        .O(o_w_data_out_OBUF_inst_i_49_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_5
       (.I0(o_w_data_out_OBUF_inst_i_9_n_0),
        .I1(o_w_data_out_OBUF_inst_i_10_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_w_data_out_OBUF_inst_i_11_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_w_data_out_OBUF_inst_i_12_n_0),
        .O(o_w_data_out_OBUF_inst_i_5_n_0));
  MUXF7 o_w_data_out_OBUF_inst_i_50
       (.I0(o_w_data_out_OBUF_inst_i_107_n_0),
        .I1(o_w_data_out_OBUF_inst_i_108_n_0),
        .O(o_w_data_out_OBUF_inst_i_50_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_51
       (.I0(o_w_data_out_OBUF_inst_i_109_n_0),
        .I1(o_w_data_out_OBUF_inst_i_110_n_0),
        .O(o_w_data_out_OBUF_inst_i_51_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_52
       (.I0(o_w_data_out_OBUF_inst_i_111_n_0),
        .I1(o_w_data_out_OBUF_inst_i_112_n_0),
        .O(o_w_data_out_OBUF_inst_i_52_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_53
       (.I0(o_w_data_out_OBUF_inst_i_113_n_0),
        .I1(o_w_data_out_OBUF_inst_i_114_n_0),
        .O(o_w_data_out_OBUF_inst_i_53_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_54
       (.I0(o_w_data_out_OBUF_inst_i_115_n_0),
        .I1(o_w_data_out_OBUF_inst_i_116_n_0),
        .O(o_w_data_out_OBUF_inst_i_54_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_55
       (.I0(o_w_data_out_OBUF_inst_i_117_n_0),
        .I1(o_w_data_out_OBUF_inst_i_118_n_0),
        .O(o_w_data_out_OBUF_inst_i_55_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  MUXF7 o_w_data_out_OBUF_inst_i_56
       (.I0(o_w_data_out_OBUF_inst_i_119_n_0),
        .I1(o_w_data_out_OBUF_inst_i_120_n_0),
        .O(o_w_data_out_OBUF_inst_i_56_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_57
       (.I0(\fifo_buffer_reg[19] [9]),
        .I1(\fifo_buffer_reg[18] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [9]),
        .O(o_w_data_out_OBUF_inst_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_58
       (.I0(\fifo_buffer_reg[23] [9]),
        .I1(\fifo_buffer_reg[22] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [9]),
        .O(o_w_data_out_OBUF_inst_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_59
       (.I0(\fifo_buffer_reg[27] [9]),
        .I1(\fifo_buffer_reg[26] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [9]),
        .O(o_w_data_out_OBUF_inst_i_59_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_6
       (.I0(o_w_data_out_OBUF_inst_i_13_n_0),
        .I1(o_w_data_out_OBUF_inst_i_14_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_w_data_out_OBUF_inst_i_15_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_w_data_out_OBUF_inst_i_16_n_0),
        .O(o_w_data_out_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_60
       (.I0(\fifo_buffer_reg[31] [9]),
        .I1(\fifo_buffer_reg[30] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [9]),
        .O(o_w_data_out_OBUF_inst_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_61
       (.I0(\fifo_buffer_reg[3] [9]),
        .I1(\fifo_buffer_reg[2] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [9]),
        .O(o_w_data_out_OBUF_inst_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_62
       (.I0(\fifo_buffer_reg[7] [9]),
        .I1(\fifo_buffer_reg[6] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [9]),
        .O(o_w_data_out_OBUF_inst_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_63
       (.I0(\fifo_buffer_reg[11] [9]),
        .I1(\fifo_buffer_reg[10] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [9]),
        .O(o_w_data_out_OBUF_inst_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_64
       (.I0(\fifo_buffer_reg[15] [9]),
        .I1(\fifo_buffer_reg[14] [9]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [9]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [9]),
        .O(o_w_data_out_OBUF_inst_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_65
       (.I0(\fifo_buffer_reg[19] [8]),
        .I1(\fifo_buffer_reg[18] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [8]),
        .O(o_w_data_out_OBUF_inst_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_66
       (.I0(\fifo_buffer_reg[23] [8]),
        .I1(\fifo_buffer_reg[22] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [8]),
        .O(o_w_data_out_OBUF_inst_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_67
       (.I0(\fifo_buffer_reg[27] [8]),
        .I1(\fifo_buffer_reg[26] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [8]),
        .O(o_w_data_out_OBUF_inst_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_68
       (.I0(\fifo_buffer_reg[31] [8]),
        .I1(\fifo_buffer_reg[30] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [8]),
        .O(o_w_data_out_OBUF_inst_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_69
       (.I0(\fifo_buffer_reg[3] [8]),
        .I1(\fifo_buffer_reg[2] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [8]),
        .O(o_w_data_out_OBUF_inst_i_69_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_7
       (.I0(o_w_data_out_OBUF_inst_i_17_n_0),
        .I1(o_w_data_out_OBUF_inst_i_18_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_w_data_out_OBUF_inst_i_19_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_w_data_out_OBUF_inst_i_20_n_0),
        .O(o_w_data_out_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_70
       (.I0(\fifo_buffer_reg[7] [8]),
        .I1(\fifo_buffer_reg[6] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [8]),
        .O(o_w_data_out_OBUF_inst_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_71
       (.I0(\fifo_buffer_reg[11] [8]),
        .I1(\fifo_buffer_reg[10] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [8]),
        .O(o_w_data_out_OBUF_inst_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_72
       (.I0(\fifo_buffer_reg[15] [8]),
        .I1(\fifo_buffer_reg[14] [8]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [8]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [8]),
        .O(o_w_data_out_OBUF_inst_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_73
       (.I0(\fifo_buffer_reg[19] [11]),
        .I1(\fifo_buffer_reg[18] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [11]),
        .O(o_w_data_out_OBUF_inst_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_74
       (.I0(\fifo_buffer_reg[23] [11]),
        .I1(\fifo_buffer_reg[22] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [11]),
        .O(o_w_data_out_OBUF_inst_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_75
       (.I0(\fifo_buffer_reg[27] [11]),
        .I1(\fifo_buffer_reg[26] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [11]),
        .O(o_w_data_out_OBUF_inst_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_76
       (.I0(\fifo_buffer_reg[31] [11]),
        .I1(\fifo_buffer_reg[30] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [11]),
        .O(o_w_data_out_OBUF_inst_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_77
       (.I0(\fifo_buffer_reg[3] [11]),
        .I1(\fifo_buffer_reg[2] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [11]),
        .O(o_w_data_out_OBUF_inst_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_78
       (.I0(\fifo_buffer_reg[7] [11]),
        .I1(\fifo_buffer_reg[6] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [11]),
        .O(o_w_data_out_OBUF_inst_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_79
       (.I0(\fifo_buffer_reg[11] [11]),
        .I1(\fifo_buffer_reg[10] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [11]),
        .O(o_w_data_out_OBUF_inst_i_79_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_8
       (.I0(o_w_data_out_OBUF_inst_i_21_n_0),
        .I1(o_w_data_out_OBUF_inst_i_22_n_0),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[0]),
        .I3(o_w_data_out_OBUF_inst_i_23_n_0),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[8]),
        .I5(o_w_data_out_OBUF_inst_i_24_n_0),
        .O(o_w_data_out_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_80
       (.I0(\fifo_buffer_reg[15] [11]),
        .I1(\fifo_buffer_reg[14] [11]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [11]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [11]),
        .O(o_w_data_out_OBUF_inst_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_81
       (.I0(\fifo_buffer_reg[19] [10]),
        .I1(\fifo_buffer_reg[18] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [10]),
        .O(o_w_data_out_OBUF_inst_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_82
       (.I0(\fifo_buffer_reg[23] [10]),
        .I1(\fifo_buffer_reg[22] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [10]),
        .O(o_w_data_out_OBUF_inst_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_83
       (.I0(\fifo_buffer_reg[27] [10]),
        .I1(\fifo_buffer_reg[26] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [10]),
        .O(o_w_data_out_OBUF_inst_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_84
       (.I0(\fifo_buffer_reg[31] [10]),
        .I1(\fifo_buffer_reg[30] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [10]),
        .O(o_w_data_out_OBUF_inst_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_85
       (.I0(\fifo_buffer_reg[3] [10]),
        .I1(\fifo_buffer_reg[2] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [10]),
        .O(o_w_data_out_OBUF_inst_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_86
       (.I0(\fifo_buffer_reg[7] [10]),
        .I1(\fifo_buffer_reg[6] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [10]),
        .O(o_w_data_out_OBUF_inst_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_87
       (.I0(\fifo_buffer_reg[11] [10]),
        .I1(\fifo_buffer_reg[10] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [10]),
        .O(o_w_data_out_OBUF_inst_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_88
       (.I0(\fifo_buffer_reg[15] [10]),
        .I1(\fifo_buffer_reg[14] [10]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [10]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [10]),
        .O(o_w_data_out_OBUF_inst_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_89
       (.I0(\fifo_buffer_reg[19] [13]),
        .I1(\fifo_buffer_reg[18] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [13]),
        .O(o_w_data_out_OBUF_inst_i_89_n_0));
  MUXF8 o_w_data_out_OBUF_inst_i_9
       (.I0(o_w_data_out_OBUF_inst_i_25_n_0),
        .I1(o_w_data_out_OBUF_inst_i_26_n_0),
        .O(o_w_data_out_OBUF_inst_i_9_n_0),
        .S(i_replace_fifo_buffer_addr_9_IBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_90
       (.I0(\fifo_buffer_reg[23] [13]),
        .I1(\fifo_buffer_reg[22] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [13]),
        .O(o_w_data_out_OBUF_inst_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_91
       (.I0(\fifo_buffer_reg[27] [13]),
        .I1(\fifo_buffer_reg[26] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [13]),
        .O(o_w_data_out_OBUF_inst_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_92
       (.I0(\fifo_buffer_reg[31] [13]),
        .I1(\fifo_buffer_reg[30] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[29] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[28] [13]),
        .O(o_w_data_out_OBUF_inst_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_93
       (.I0(\fifo_buffer_reg[3] [13]),
        .I1(\fifo_buffer_reg[2] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[1] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[0] [13]),
        .O(o_w_data_out_OBUF_inst_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_94
       (.I0(\fifo_buffer_reg[7] [13]),
        .I1(\fifo_buffer_reg[6] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[5] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[4] [13]),
        .O(o_w_data_out_OBUF_inst_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_95
       (.I0(\fifo_buffer_reg[11] [13]),
        .I1(\fifo_buffer_reg[10] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[9] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[8] [13]),
        .O(o_w_data_out_OBUF_inst_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_96
       (.I0(\fifo_buffer_reg[15] [13]),
        .I1(\fifo_buffer_reg[14] [13]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[13] [13]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[12] [13]),
        .O(o_w_data_out_OBUF_inst_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_97
       (.I0(\fifo_buffer_reg[19] [12]),
        .I1(\fifo_buffer_reg[18] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[17] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[16] [12]),
        .O(o_w_data_out_OBUF_inst_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_98
       (.I0(\fifo_buffer_reg[23] [12]),
        .I1(\fifo_buffer_reg[22] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[21] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[20] [12]),
        .O(o_w_data_out_OBUF_inst_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_w_data_out_OBUF_inst_i_99
       (.I0(\fifo_buffer_reg[27] [12]),
        .I1(\fifo_buffer_reg[26] [12]),
        .I2(i_replace_fifo_buffer_addr_9_IBUF[5]),
        .I3(\fifo_buffer_reg[25] [12]),
        .I4(i_replace_fifo_buffer_addr_9_IBUF[4]),
        .I5(\fifo_buffer_reg[24] [12]),
        .O(o_w_data_out_OBUF_inst_i_99_n_0));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD36 rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
