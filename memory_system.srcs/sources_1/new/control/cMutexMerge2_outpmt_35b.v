`timescale 1ns / 1ps

module cMutexMerge2_outpmt_35b( 
i_drive0, i_data0, o_free0,
i_drive1, i_data1, o_free1,
i_freeNext, o_driveNext, o_data ,
rst,
pmt
);
 
//input & output port
input i_drive0, i_drive1;
input [34:0] i_data0, i_data1;
input i_freeNext;
input rst;

output o_free0, o_free1;
output o_driveNext;
output [34:0] o_data ;
output pmt;
 
//wire & reg
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire w_driveNext;
wire [34:0]  w_data  ;
wire w_pmt;

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


//delay1U(inR, outR);
delay1U udt_delay1(
.inR    ( w_firstReq | w_secondReq  ),
.outR   ( w_pmt  )
);

assign w_driveNext = i_drive0 | i_drive1;
assign o_driveNext = w_driveNext;

assign o_free0 = i_freeNext & w_firstReq;
assign o_free1 = i_freeNext & w_secondReq;
assign pmt = w_pmt;
assign w_data  = (w_firstReq == 1'b1) ? i_data0 :
			((w_secondReq == 1'b1) ? i_data1 : 35'b0);

assign o_data  = w_data ;

endmodule
