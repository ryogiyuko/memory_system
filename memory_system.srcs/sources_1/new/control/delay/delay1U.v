//-----------------------------------------------
//	module name: delay1U
//	author: 
//  modifier: 
//	version: 2nd version (2023-06-15)
//	description: 
//		one unit delay
//      output ==> input (==>:one uint delay)
//-----------------------------------------------
`timescale 1ns / 1ps

(* dont_touch="yes" *)module delay1U(inR, outR);
input inR;
output outR;

wire outR0;
LUT1 #(.INIT(2'b10)) delay0
(
    .O(outR0),
    .I0(inR)
);
LUT1 #(.INIT(2'b10)) delay1
(
    .O(outR),
    .I0(outR0)
);
endmodule