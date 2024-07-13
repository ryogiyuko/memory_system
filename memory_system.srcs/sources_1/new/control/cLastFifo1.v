//-----------------------------------------------
//	module name: cLastFifo2
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-15)
//-----------------------------------------------

`timescale 1ns / 1ps

module cLastFifo1(
i_drive,rst,
o_free,o_driveNext,
o_fire_1
);

input i_drive, rst;
output o_free, o_driveNext;
output o_fire_1;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_outR;
wire w_driveNext;

//pipeline
(* dont_touch="true" *)sender sender(
	.i_drive(i_drive),
	.o_free(o_free),
	.outR(w_outRRelay_2[0]),
	.i_free(w_driveNext),
	.rst(rst)
);

(* dont_touch="true" *)relay relay0(
	.inR(w_outRRelay_2[0]),
	.inA(w_outARelay_2[0]),
	.outR(w_outRRelay_2[1]),
	.outA(w_outRRelay_2[1]),
	.fire(o_fire_1)
);

(* dont_touch="true" *)delay2Unit outdelay0 (.inR(o_fire_1), .outR(w_driveNext), .rst(rst));
//delay1U outdelay1 (.inR(w_driveNext), .outR(o_driveNext));
(* dont_touch="true" *)delay2Unit outdelay1 (.inR(w_driveNext),.outR(o_driveNext), .rst(rst));
endmodule
