//-----------------------------------------------
//	module name: cSelector7
//	author: 
//  modified by: 
//	version: 1st version (2024-07-11)
//-----------------------------------------------

`timescale 1ns / 1ps

module cPmtSelector2(//condfork,注意valid用o_fire结合触发器稳定住再输入
    input       rst,         
    input       i_drive,
    output      o_free, 
    output      o_fire,
    input       valid0,valid1,
    output      o_driveNext0,o_driveNext1,
    input       i_freeNext0, i_freeNext1,
	input  		pmt
);

 

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext;
wire w_driveNext0,w_driveNext1;

//pipeline
(* dont_touch="true" *)sender sender(
	.i_drive    (i_drive),
	.o_free     (o_free),
	.outR       (w_outRRelay_2[0]),
	.i_free     (w_fire),
	.rst        (rst)
);

(* dont_touch="true" *)pmtRelay relay0(
	.inR        (w_outRRelay_2[0]),
	.inA        (w_outARelay_2[0]),
	.outR       (w_outRRelay_2[1]),
	.outA       (w_outARelay_2[1]),
	.fire       (w_fire),
	.pmt		(pmt)
);

(* dont_touch="true" *)receiver receiver(
	.inR        (w_outRRelay_2[1]),
	.inA        (w_outARelay_2[1]),
	.i_freeNext (w_freeNext)
);

//delay here must match the time of counter to change.
(* dont_touch="true" *)delay2U outdelay0(.inR(w_fire), .outR(w_driveNext0));

//control signal
assign o_driveNext0 = w_driveNext0 & valid0;
assign o_driveNext1 = w_driveNext0 & valid1;

assign o_fire = w_fire;
assign w_freeNext = i_freeNext0 | i_freeNext1 ;

endmodule
