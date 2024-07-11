//-----------------------------------------------
//	module name: contTap
//	author: Anping HE (heap@lzu.edu.cn)
//	version: 1st version (2021-11-13)
//	description: 
//		standard click  
//		tech: xilinx fpga
//----------------------------------------------
`timescale 1ns / 1ps

(* dont_touch="true" *)module contTap(trig, req);//, rst);

input trig;
//input rst;
output req;

wire reqNeg;

LUT1 #(.INIT(2'b01)) tmp_inv 
(
   .O   ( reqNeg ),   
   .I0  ( req    )
);

FDPE #(.INIT(1'b0)) ff_state (
    .Q  ( req),      // 1-bit Data output
    .C  ( trig),      // 1-bit Clock input
    .CE ( 1'b1),    // 1-bit Clock enable input
    .PRE( 1'b0),  // 1-bit Asynchronous preset input
    .D  ( reqNeg)       // 1-bit Data input
   );

endmodule
