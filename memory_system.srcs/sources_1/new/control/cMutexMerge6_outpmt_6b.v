`timescale 1ns / 1ps

module cMutexMerge6_outpmt_6b( 
i_drive0, i_data0, o_free0,
i_drive1, i_data1, o_free1,
i_drive2, i_data2, o_free2,
i_drive3, i_data3, o_free3,
i_drive4, i_data4, o_free4,
i_drive5, i_data5, o_free5,
i_freeNext, o_driveNext, o_data ,
rst,
pmt
);
 
//input & output port
input i_drive0, i_drive1, i_drive2, i_drive3, i_drive4, i_drive5;
input [5:0] i_data0, i_data1, i_data2, i_data3, i_data4, i_data5;
input i_freeNext;
input rst;

output o_free0, o_free1, o_free2, o_free3, o_free4, o_free5;
output o_driveNext;
output [5:0] o_data ;
output pmt;
 
//wire & reg
wire w_firstTrig, w_secondTrig, w_thirdTrig, w_fourTrig, w_fiveTrig,w_sixTrig;
wire w_firstReq, w_secondReq, w_thirdReq, w_fourReq, w_fiveReq,w_sixReq;
wire w_driveNext;
wire [34:0]  w_data  ;
wire w_pmt;

assign w_firstTrig = i_drive0 | o_free0;
assign w_secondTrig = i_drive1 | o_free1;
assign w_thirdTrig = i_drive2 | o_free2;
assign w_fourTrig = i_drive3 | o_free3;
assign w_fiveTrig = i_drive4 | o_free4;
assign w_sixTrig = i_drive5 | o_free5;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);

contTap thirdTap(
.trig(w_thirdTrig),
.req(w_thirdReq)
);

contTap fourTap(
.trig(w_fourTrig),
.req(w_fourReq)
);

contTap fiveTap(
.trig(w_fiveTrig),
.req(w_fiveReq)
);

contTap sixTap(
.trig(w_sixTrig),
.req(w_sixReq)
);

//delay1U(inR, outR);
delay1U udt_delay1(
.inR    ( w_firstReq | w_secondReq | w_thirdReq | w_fourReq | w_fiveReq | w_sixReq  ),
.outR   ( w_pmt  )
);

assign w_driveNext = i_drive0 | i_drive1 | i_drive2| i_drive3| i_drive4| i_drive5;
assign o_driveNext = w_driveNext;

assign o_free0 = i_freeNext & w_firstReq;
assign o_free1 = i_freeNext & w_secondReq;
assign o_free2 = i_freeNext & w_thirdReq;
assign o_free3 = i_freeNext & w_fourReq;
assign o_free4 = i_freeNext & w_fiveReq;
assign o_free5 = i_freeNext & w_sixReq;

assign pmt = w_pmt;
assign w_data  =  (w_firstReq == 1'b1) 	? i_data0 :
			    ( (w_secondReq == 1'b1) ? i_data1 : 
				( (w_thirdReq == 1'b1) 	? i_data2 :
				( (w_fourReq == 1'b1) 	? i_data3 : 
				( (w_fiveReq == 1'b1) 	? i_data4 : 
				( (w_sixReq == 1'b1) 	? i_data5: 6'b0 )))));

assign o_data  = w_data ;

endmodule
