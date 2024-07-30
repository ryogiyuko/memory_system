//-----------------------------------------------
//	module name: cArbMerge5_51b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-30)
//-----------------------------------------------

module cArbMerge8_74b(
	i_drive0,i_drive1,i_drive2,i_drive3,i_drive4,i_drive5,i_drive6,i_drive7,
	i_data0_74,i_data1_74,i_data2_74,i_data3_74,i_data4_74,i_data5_74,i_data6_74,i_data7_74,
	i_freeNext,rst,
	o_free0,o_free1,o_free2,o_free3,o_free4,o_free5,o_free6,o_free7,
	o_driveNext,o_data_74
);

//input & output port
input i_drive0,i_drive1,i_drive2,i_drive3,i_drive4,i_drive5,i_drive6,i_drive7;
input [73:0] i_data0_74,i_data1_74,i_data2_74,i_data3_74,i_data4_74,i_data5_74,i_data6_74,i_data7_74;
input i_freeNext;
input rst;

output o_free0,o_free1,o_free2,o_free3,o_free4,o_free5,o_free6,o_free7;
output o_driveNext;
output [73:0] o_data_74;

(* dont_touch="true" *)wire w_westFire_1,w_eastFire_1,w_northFire_1,w_southFire_1,w_southeastFire_1,w_northwestFire_1,w_northeastFire_1,w_southwestFire_1;
(* dont_touch="true" *)wire w_sendFire_1,w_sendPreDrive0;
(* dont_touch="true" *)wire w_free0Next,w_free1Next,w_free2Next,w_free3Next,w_free4Next,w_free5Next,w_free6Next,w_free7Next;
(* dont_touch="true" *)wire w_drive0Next,w_drive1Next,w_drive2Next,w_drive3Next,w_drive4Next,w_drive5Next,w_drive6Next,w_drive7Next;
(* dont_touch="true" *)wire w_westReset,w_eastReset,w_northReset,w_southReset,w_northeastReset,w_northWestReset,w_southeastReset,w_southwestRest;
(* dont_touch="true" *)wire w_westTrig,w_eastTrig,w_northTrig,w_southTrig,w_southwestTrig,w_southeastTrig,w_northwestTrig,w_northeastTrig;
(* dont_touch="true" *)wire w_westReq,w_eastReq,w_northReq,w_southReq,w_southeastReq,w_southwestReq,w_northeastReq,w_northwestReq;
(* dont_touch="true" *)wire [7:0] w_validation_8;
(* dont_touch="true" *)wire w_isValid;
(* dont_touch="true" *)wire RoundAgain,w_updateTrig;
(* dont_touch="true" *)wire pmt;
(* dont_touch="true" *)wire w_sendTrig,w_sendDrive;
(* dont_touch="true" *)wire w_sendFree,w_sendPreDrive,w_roundTrig;
(* dont_touch="true" *)wire [73:0] w_data0_74,w_data1_74,w_data2_74,w_data3_74,w_data4_74,w_data5_74,w_data6_74,w_data7_74;
(* dont_touch="true" *)wire [73:0] w_data_74;
(* dont_touch="true" *)wire [7:0] w_priority_8;
(* dont_touch="true" *)reg [73:0] r_data0_74,r_data1_74,r_data2_74,r_data3_74,r_data4_74,r_data5_74,r_data6_74,r_data7_74;
(* dont_touch="true" *)reg [73:0] r_data_74;
(* dont_touch="true" *)reg [7:0] r_priority_8;

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
		r_data0_74 <= 74'b0;
		end
	else begin
		r_data0_74 <= i_data0_74;
		end
end
assign w_data0_74 = r_data0_74;
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
		r_data1_74 <= 74'b0;
		end
	else begin
		r_data1_74 <= i_data1_74;
		end
end
assign w_data1_74 = r_data1_74;
assign w_eastTrig = w_eastFire_1 | w_eastReset;
(* dont_touch="true" *)contTap eastTap(
.trig(w_eastTrig),
.req(w_eastReq)
);

//----------------northFifo---------------//
(* dont_touch="true" *)cPmtFifo1 northPmtFifo(
.i_drive(i_drive2),
.i_freeNext(w_northReset),
.o_free(o_free2),
.o_driveNext(w_drive2Next),
.o_fire_1(w_northFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_northFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data2_74 <= 74'b0;
		end
	else begin
		r_data2_74 <= i_data2_74;
		end
end
assign w_data2_74 = r_data2_74;
assign w_northTrig = w_northFire_1 | w_northReset;
(* dont_touch="true" *)contTap northTap(
.trig(w_northTrig),
.req(w_northReq)
);

//----------------southFifo---------------//
(* dont_touch="true" *)cPmtFifo1 southPmtFifo(
.i_drive(i_drive3),
.i_freeNext(w_southReset),
.o_free(o_free3),
.o_driveNext(w_drive3Next),
.o_fire_1(w_southFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_southFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data3_74 <= 74'b0;
		end
	else begin
		r_data3_74 <= i_data3_74;
		end
end
assign w_data3_74 = r_data3_74;
assign w_southTrig = w_southFire_1 | w_southReset;
(* dont_touch="true" *)contTap southTap(
.trig(w_southTrig),
.req(w_southReq)
);

//----------------northeastFifo---------------//
(* dont_touch="true" *)cPmtFifo1 northeastPmtFifo(
.i_drive(i_drive4),
.i_freeNext(w_northeastReset),
.o_free(o_free4),
.o_driveNext(w_drive4Next),
.o_fire_1(w_northeastFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_northeastFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data4_74 <= 74'b0;
		end
	else begin
		r_data4_74 <= i_data4_74;
		end
end
assign w_data4_74 = r_data4_74;
assign w_northeastTrig = w_northeastFire_1 | w_northeastReset;
(* dont_touch="true" *)contTap northeastTap(
.trig(w_northeastTrig),
.req(w_northeastReq)
);

//----------------northwestFifo---------------//
(* dont_touch="true" *)cPmtFifo1 northwestPmtFifo(
.i_drive(i_drive5),
.i_freeNext(w_northwestReset),
.o_free(o_free5),
.o_driveNext(w_drive5Next),
.o_fire_1(w_northwestFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_northwestFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data5_74 <= 74'b0;
		end
	else begin
		r_data5_74 <= i_data5_74;
		end
end
assign w_data5_74 = r_data5_74;
assign w_northwestTrig = w_northwestFire_1 | w_northwestReset;
(* dont_touch="true" *)contTap northwestTap(
.trig(w_northwestTrig),
.req(w_northwestReq)
);

//----------------southwestFifo---------------//
(* dont_touch="true" *)cPmtFifo1 southwestPmtFifo(
.i_drive(i_drive6),
.i_freeNext(w_southwestReset),
.o_free(o_free6),
.o_driveNext(w_drive6Next),
.o_fire_1(w_southwestFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_southwestFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data6_74 <= 74'b0;
		end
	else begin
		r_data6_74 <= i_data6_74;
		end
end
assign w_data6_74 = r_data6_74;
assign w_southwestTrig = w_southwestFire_1 | w_southwestReset;
(* dont_touch="true" *)contTap southwestTap(
.trig(w_southwestTrig),
.req(w_southwestReq)
);

//----------------southeastFifo---------------//
(* dont_touch="true" *)cPmtFifo1 southeastPmtFifo(
.i_drive(i_drive7),
.i_freeNext(w_southeastReset),
.o_free(o_free7),
.o_driveNext(w_drive7Next),
.o_fire_1(w_southeastFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_southeastFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data7_74 <= 74'b0;
		end
	else begin
		r_data7_74 <= i_data7_74;
		end
end
assign w_data7_74 = r_data7_74;
assign w_southeastTrig = w_southeastFire_1 | w_southeastReset;
(* dont_touch="true" *)contTap southeastTap(
.trig(w_southeastTrig),
.req(w_southeastReq)
);

//priority
always@(posedge w_updateTrig or negedge rst)
begin
	if(!rst)
		r_priority_8 = 8'b00000000;
	else
	    if(r_priority_8 == 8'b00000000)
            r_priority_8 = 8'b00000001;
        else
		if(r_priority_8 == 8'b00000001)
			r_priority_8 = 8'b00000010;
		else
		if(r_priority_8 == 8'b00000010)
			r_priority_8 = 8'b00000100;
		else
		if(r_priority_8 == 8'b00000100)
			r_priority_8 = 8'b00001000;
		else
		if(r_priority_8 == 8'b00001000)
			r_priority_8 = 8'b00010000;
		else
		if(r_priority_8 == 8'b00010000)
			r_priority_8 = 8'b00100000;
		else
		if(r_priority_8 == 8'b00100000)
			r_priority_8 = 8'b01000000;
		else
		if(r_priority_8 == 8'b01000000)
			r_priority_8 = 8'b10000000;	
		else
			r_priority_8 = 8'b00000000;
end 
assign w_priority_8 = r_priority_8;

//dir validation
assign w_validation_8[0] = w_priority_8[0]  & w_westReq;
assign w_validation_8[1] = w_priority_8[1]  & w_eastReq;
assign w_validation_8[2] = w_priority_8[2]  & w_northReq;
assign w_validation_8[3] = w_priority_8[3]  & w_southReq;
assign w_validation_8[4] = w_priority_8[4]  & w_northeastReq;
assign w_validation_8[5] = w_priority_8[5]  & w_northwestReq;
assign w_validation_8[6] = w_priority_8[6]  & w_southwestReq;
assign w_validation_8[7] = w_priority_8[7]  & w_southeastReq;
assign w_isValid = w_validation_8[0] | w_validation_8[1] | w_validation_8[2] | w_validation_8[3] | w_validation_8[4] | w_validation_8[5] | w_validation_8[6] | w_validation_8[7];


//Mux
(* dont_touch="true" *)assign w_data_74 = (w_validation_8 == 8'b00000001) ? w_data0_74 :
										 ((w_validation_8 == 8'b00000010) ? w_data1_74 : 
										 ((w_validation_8 == 8'b00000100) ? w_data2_74 :
										 ((w_validation_8 == 8'b00001000) ? w_data3_74 :
										 ((w_validation_8 == 8'b00010000) ? w_data4_74 : 
										 ((w_validation_8 == 8'b00100000) ? w_data5_74 :
										 ((w_validation_8 == 8'b01000000) ? w_data6_74 :	
										 ((w_validation_8 == 8'b10000000) ? w_data7_74 : 74'b0 )))))));

//lock
assign pmt = ~(w_westReq | w_eastReq | w_northReq | w_southReq | w_southeastReq | w_southwestReq | w_northeastReq | w_northwestReq);

//RoundAgain
assign RoundAgain = w_updateTrig & ~pmt;
assign w_sendTrig = RoundAgain | w_drive0Next | w_drive1Next | w_drive2Next | w_drive3Next | w_drive4Next | w_drive5Next | w_drive6Next | w_drive7Next;

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
assign w_westReset = w_priority_8[0]  & w_westReq & i_freeNext; 
assign w_eastReset = w_priority_8[1]  & w_eastReq & i_freeNext;
assign w_northReset = w_priority_8[2]  & w_northReq & i_freeNext;
assign w_southReset = w_priority_8[3]  & w_southReq & i_freeNext;
assign w_northeastReset = w_priority_8[4]  & w_northeastReq & i_freeNext;
assign w_northwestReset = w_priority_8[5]  & w_northwestReq & i_freeNext;
assign w_southwestReset = w_priority_8[6]  & w_southwestReq & i_freeNext;
assign w_southeastReset = w_priority_8[7]  & w_southeastReq & i_freeNext;
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
		r_data_74 <= 74'b0;
		end
	else begin
		r_data_74 <= w_data_74;
		end
end
assign o_data_74 = r_data_74;
endmodule