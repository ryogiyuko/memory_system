//-----------------------------------------------
//	module name: cFifo1
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-15)
//-----------------------------------------------

`timescale 1ns / 1ps

module cFifo1(
i_drive,i_freeNext,
o_free,o_driveNext,
o_fire_1,rst
);

input i_drive, i_freeNext;
output o_free, o_driveNext;
output o_fire_1;
input rst;

(* dont_touch="true" *)wire [1:0] w_outRRelay_2,w_outARelay_2;
(* dont_touch="true" *)wire w_driveNext;

//pipeline
(* dont_touch="true" *)sender sender(
	.i_drive(i_drive),
	.o_free(o_free),
	.outR(w_outRRelay_2[0]),
	.i_free(o_driveNext),
	.rst(rst)
);

(* dont_touch="true" *)relay relay0(
	.inR(w_outRRelay_2[0]),
	.inA(w_outARelay_2[0]),
	.outR(w_outRRelay_2[1]),
	.outA(w_outARelay_2[1]),
	.fire(o_fire_1)
);

(* dont_touch="true" *)receiver receiver(
	.inR(w_outRRelay_2[1]),
	.inA(w_outARelay_2[1]),
	.i_freeNext(i_freeNext)
);

(* dont_touch="true" *)delay1Unit outdelay0 (.inR(o_fire_1), .outR(o_driveNext), .rst(rst));
// (* dont_touch="true" *)delay2Unit outdelay1 (.inR(w_driveNext), .outR(o_driveNext), .rst(rst));
endmodule
