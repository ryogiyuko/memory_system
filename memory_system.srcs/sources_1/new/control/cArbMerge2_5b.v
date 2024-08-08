//-----------------------------------------------
//	module name: cArbMerge2_5b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-30)
//-----------------------------------------------

module cArbMerge2_5b(
	i_drive0,i_drive1,//i_drive2,i_drive3,i_drive4,i_drive5,i_drive6,i_drive7,
	i_data0 ,i_data1 ,//i_data2 ,i_data3 ,i_data4 ,i_data5 ,i_data6 ,i_data7 ,
	i_freeNext,rst,
	o_free0,o_free1,//o_free2,o_free3,o_free4,o_free5,o_free6,o_free7,
	o_driveNext,o_data 
); 

//input & output port
input i_drive0,i_drive1;
input [4:0] i_data0 ,i_data1 ;
input i_freeNext;
input rst;

output o_free0,o_free1;
output o_driveNext;
output [4:0] o_data ;

(* dont_touch="true" *)wire w_westFire_1,w_eastFire_1,w_northFire_1,w_southFire_1,w_southeastFire_1,w_northwestFire_1,w_northeastFire_1,w_southwestFire_1;
(* dont_touch="true" *)wire w_sendFire_1,w_sendPreDrive0;
(* dont_touch="true" *)wire w_free0Next,w_free1Next,w_free2Next,w_free3Next,w_free4Next,w_free5Next,w_free6Next,w_free7Next;
(* dont_touch="true" *)wire w_drive0Next,w_drive1Next,w_drive2Next,w_drive3Next,w_drive4Next,w_drive5Next,w_drive6Next,w_drive7Next;
(* dont_touch="true" *)wire w_westReset,w_eastReset,w_northReset,w_southReset,w_northeastReset,w_northWestReset,w_southeastReset,w_southwestRest;
(* dont_touch="true" *)wire w_westTrig,w_eastTrig,w_northTrig,w_southTrig,w_southwestTrig,w_southeastTrig,w_northwestTrig,w_northeastTrig;
(* dont_touch="true" *)wire w_westReq,w_eastReq,w_northReq,w_southReq,w_southeastReq,w_southwestReq,w_northeastReq,w_northwestReq;
(* dont_touch="true" *)wire [1:0] w_validation_2;
(* dont_touch="true" *)wire w_isValid;
(* dont_touch="true" *)wire RoundAgain,w_updateTrig;
(* dont_touch="true" *)wire pmt;
(* dont_touch="true" *)wire w_sendTrig,w_sendDrive;
(* dont_touch="true" *)wire w_sendFree,w_sendPreDrive,w_roundTrig;
(* dont_touch="true" *)wire [4:0] w_data0 ,w_data1  ;
(* dont_touch="true" *)wire [4:0] w_data ;
(* dont_touch="true" *)wire [1:0] w_priority_2;
(* dont_touch="true" *)reg [4:0] r_data0 ,r_data1  ;
(* dont_touch="true" *)reg [4:0] r_data ;
(* dont_touch="true" *)reg [1:0] r_priority_2;

//----------------westFifo---------------//
(* dont_touch="true" *)cPmtFifo1 westPmtFifo(
.i_drive(i_drive0),
.i_freeNext(w_westReset),
.o_free(o_free0),
.o_driveNext(w_drive0Next),
.o_fire_1(w_westFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_westFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data0  <= 5'b0;
		end
	else begin
		r_data0  <= i_data0 ;
		end
end
assign w_data0  = r_data0 ;
assign w_westTrig = w_westFire_1 | w_westReset;
(* dont_touch="true" *)contTap westTap(
.trig(w_westTrig),
.req(w_westReq)
);

//----------------eastFifo---------------//
(* dont_touch="true" *)cPmtFifo1 eastPmtFifo(
.i_drive(i_drive1),
.i_freeNext(w_eastReset),
.o_free(o_free1),
.o_driveNext(w_drive1Next),
.o_fire_1(w_eastFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_eastFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data1  <= 5'b0;
		end
	else begin
		r_data1  <= i_data1 ;
		end
end
assign w_data1  = r_data1 ;
assign w_eastTrig = w_eastFire_1 | w_eastReset;
(* dont_touch="true" *)contTap eastTap(
.trig(w_eastTrig),
.req(w_eastReq)
);


//priority
always@(posedge w_updateTrig or negedge rst)
begin
	if(!rst)
		r_priority_2 = 2'b00;
	else
	    if(r_priority_2 == 2'b00)
            r_priority_2 = 2'b01;
        else
		if(r_priority_2 == 2'b01)
			r_priority_2 = 2'b10;
		else
			r_priority_2 = 2'b00;
end 
assign w_priority_2 = r_priority_2;

//dir validation
assign w_validation_2[0] = w_priority_2[0]  & w_westReq;
assign w_validation_2[1] = w_priority_2[1]  & w_eastReq;
// assign w_validation_8[2] = w_priority_8[2]  & w_northReq;
// assign w_validation_8[3] = w_priority_8[3]  & w_southReq;
// assign w_validation_8[4] = w_priority_8[4]  & w_northeastReq;
// assign w_validation_8[5] = w_priority_8[5]  & w_northwestReq;
// assign w_validation_8[6] = w_priority_8[6]  & w_southwestReq;
// assign w_validation_8[7] = w_priority_8[7]  & w_southeastReq;
assign w_isValid = w_validation_2[0] | w_validation_2[1] ;


//Mux
(* dont_touch="true" *)assign w_data= (w_validation_2 == 2'b01) ? w_data0 :
										 ((w_validation_2 == 2'b10) ? w_data1 :  5'b0 );

//lock
assign pmt = ~(w_westReq | w_eastReq );

//RoundAgain
assign RoundAgain = w_updateTrig & ~pmt;
assign w_sendTrig = RoundAgain | w_drive0Next | w_drive1Next ;

(* dont_touch="true" *)delay2U delay0(
.inR(w_sendTrig),
.outR(w_sendPreDrive0)
);

(* dont_touch="true" *)delay2U delay3(
.inR(w_sendPreDrive0),
.outR(w_sendPreDrive)
);

wire w_roundDrive,w_sendFinish;
assign w_sendDrive = w_sendPreDrive & w_isValid;
assign w_roundDrive = w_sendPreDrive & (~w_isValid);

(* dont_touch="true" *)delay2U delay1(
.inR(w_roundDrive),
.outR(w_roundTrig)
);
(* dont_touch="true" *)delay2U delay2(
.inR(i_freeNext),
.outR(w_sendFinish)
);
assign w_updateTrig = w_sendFinish | w_roundTrig;

//resetTrig
assign w_westReset = w_priority_2[0]  & w_westReq & i_freeNext; 
assign w_eastReset = w_priority_2[1]  & w_eastReq & i_freeNext;
// assign w_northReset = w_priority_8[2]  & w_northReq & i_freeNext;
// assign w_southReset = w_priority_8[3]  & w_southReq & i_freeNext;
// assign w_northeastReset = w_priority_8[4]  & w_northeastReq & i_freeNext;
// assign w_northwestReset = w_priority_8[5]  & w_northwestReq & i_freeNext;
// assign w_southwestReset = w_priority_8[6]  & w_southwestReq & i_freeNext;
// assign w_southeastReset = w_priority_8[7]  & w_southeastReq & i_freeNext;
//sendFifo
(* dont_touch="true" *)cFifo1 sendFifo(
.i_drive(w_sendDrive),
.i_freeNext(i_freeNext),
.o_free(w_sendFree),
.o_driveNext(o_driveNext),
.o_fire_1(w_sendFire_1),
.rst(rst)
);

always@(posedge w_sendFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data <= 5'b0;
		end
	else begin
		r_data <= w_data;
		end
end
assign o_data = r_data;
endmodule