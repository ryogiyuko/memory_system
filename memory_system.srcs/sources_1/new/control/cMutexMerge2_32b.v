`timescale 1ns / 1ps
module cMutexMerge2_32b( //必须后接fifo
i_drive0, i_data0_32, o_free0,
i_drive1, i_data1_32, o_free1,
i_freeNext, o_driveNext, o_data_32,
rst
);

//input & output port
input i_drive0, i_drive1;
input [31:0] i_data0_32, i_data1_32;
input i_freeNext;
input rst;

output o_free0, o_free1;
output o_driveNext;
output [31:0] o_data_32;


//wire & reg
wire w_firstFire_1,w_secondFire_1,w_sendFire_1;
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire w_driveNext0,w_driveNext1,w_driveNext;
wire w_free0,w_free1,w_free;
wire [31:0] w_data0_32,w_data1_32,w_data_32 ;
reg [31:0] r_data0_32,r_data1_32,r_data_32 ;

//firstFifo
// cFifo1 firstFifo
// (
// .i_drive(i_drive0),
// .i_freeNext(w_free0),
// .o_free(o_free0),
// .o_driveNext(w_driveNext0),
// .o_fire_1(w_firstFire_1),
// .rst(rst)
// );


assign w_firstTrig = i_drive0 | o_free0;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

//secondFifo
// cFifo1 secondFifo(
// .i_drive(i_drive1),
// .i_freeNext(w_free1),
// .o_free(o_free1),
// .o_driveNext(w_driveNext1),
// .o_fire_1(w_secondFire_1),
// .rst(rst)
// );

assign w_secondTrig = i_drive1 | o_free1;

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);


//sendFifo
// cFifo1 sendFifo(
// .i_drive(w_driveNext),
// .i_freeNext(i_freeNext),
// .o_free(w_free),
// .o_driveNext(o_driveNext),
// .o_fire_1(w_sendFire_1),
// .rst(rst)
// );

// always@(posedge w_sendFire_1 or negedge rst)
// begin
//     if(!rst) begin
// 		r_data_32 <= 32'b0;
// 		end
// 	else begin
// 		r_data_32 <= w_data_32;
// 		end
// end

assign o_driveNext = i_drive0 
				   | i_drive1;

assign o_free0 = i_freeNext & w_firstReq;
assign o_free1 = i_freeNext & w_secondReq;

assign w_data_32 = (w_firstReq == 1'b1) ? i_data0_32 :
			((w_secondReq == 1'b1) ? i_data1_32 : 32'b0);

assign o_data_32 = w_data_32;

endmodule
