//-----------------------------------------------
//	module name: receiver
//	author: Tong Fu
//	version: 1st version (2023-06-15)
//	description: 
//		permit sink  
//		tech: xilinx fpga
//-----------------------------------------------
`timescale 1ns / 1ps

(* dont_touch="true" *)module receiver(
inR, inA, i_freeNext);

input inR;
input i_freeNext;
output inA;

(* dont_touch="true" *)FDPE #(.INIT(1'b0)) ff_state (
    .Q      ( inA        ),      // 1-bit Data output
    .C      ( i_freeNext ),      // 1-bit Clock input
    .CE     ( 1'b1       ),      // 1-bit Clock enable input
    .PRE    ( 1'b0       ),      // 1-bit Asynchronous preset input
    .D      ( inR        )       // 1-bit Data input
   );

endmodule
