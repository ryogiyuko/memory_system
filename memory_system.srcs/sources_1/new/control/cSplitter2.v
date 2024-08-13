
`timescale 1ns / 1ps

module cSplitter2(
i_drive, o_free,
o_driveNext0, i_freeNext0,
o_driveNext1, i_freeNext1,
rst);

input i_drive;
input i_freeNext0,i_freeNext1;
input rst;

output o_free;
output o_driveNext0,o_driveNext1;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext,w_free0Next,w_free1Next;
wire w_driveNext0;
wire w_sendFree;
wire w_sendDrive;
wire w_firstTrig, w_firstReq;
wire w_secondTrig, w_secondReq;

(* dont_touch="true" *)delay1Unit outdelay1 (.inR(i_freeNext0), .outR(w_free0Next), .rst(rst));

assign w_firstTrig = w_free0Next | w_sendDrive;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

(* dont_touch="true" *)delay1Unit outdelay2 (.inR(i_freeNext1), .outR(w_free1Next), .rst(rst));

assign w_secondTrig = w_free1Next | w_sendDrive;

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);

assign w_freeNext = w_free0Next | w_free1Next;
assign w_sendFree = w_freeNext & !(w_secondReq | w_firstReq);
assign w_sendDrive = i_drive;
assign o_free = w_sendFree;
assign o_driveNext0 = i_drive;
assign o_driveNext1 = i_drive;

endmodule

