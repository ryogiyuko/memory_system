`timescale 1ns / 1ps
module cMutexMerge2_35b( //必须后接fifo
i_drive0, i_data0, o_free0,
i_drive1, i_data1, o_free1,
i_freeNext, o_driveNext, o_data ,
rst
);
 
//input & output port
input i_drive0, i_drive1;
input [34:0] i_data0, i_data1;
input i_freeNext;
input rst;

output o_free0, o_free1;
output o_driveNext;
output [34:0] o_data ;


//wire & reg
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire w_driveNext0,w_driveNext1,w_driveNext;
wire [34:0]  w_data  ;

assign w_firstTrig = i_drive0 | o_free0;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

assign w_secondTrig = i_drive1 | o_free1;

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);


assign o_driveNext = i_drive0 
				   | i_drive1;

assign o_free0 = i_freeNext & w_firstReq;
assign o_free1 = i_freeNext & w_secondReq;

assign w_data  = (w_firstReq == 1'b1) ? i_data0 :
			((w_secondReq == 1'b1) ? i_data1 : 35'b0);

assign o_data  = w_data ;

endmodule
