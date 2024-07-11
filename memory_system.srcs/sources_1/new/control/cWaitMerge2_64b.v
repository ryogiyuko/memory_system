

module cWaitMerge2_64b(
i_drive0,i_data0_32,o_free0,
i_drive1,i_data1_32,o_free1,rst,
o_driveNext,o_data_64,i_freeNext
);

//input & output port
input i_drive0,i_drive1;
input [31:0] i_data0_32;
input [31:0] i_data1_32;
input i_freeNext;
input rst;

output o_free0,o_free1;
output o_driveNext;
output [63:0] o_data_64;

//wire & reg
wire w_drive0Next,w_drive1Next;
wire w_firstFire_1,w_secondFire_1,w_sendFire_1;
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire w_driveNext;
wire w_sendDrive,w_sendFree;
wire [31:0] w_data0_32;
wire [31:0] w_data1_32;

reg [31:0] r_data0_32;
reg [31:0] r_data1_32;


//firstFifo
// cFifo1 firstFifo(
// .i_drive(i_drive0),
// .i_freeNext(w_sendFree),
// .o_free(),
// .o_driveNext(w_drive0Next),
// .o_fire_1(w_firstFire_1),
// .rst(rst)
// );

// always@(posedge w_firstFire_1 or negedge rst)
// begin
//     if(!rst) begin
// 		r_data0_32 <= 32'b0;
// 		end
// 	else begin
// 		r_data0_32 <= i_data0_32;
// 		end
// end
assign w_data0_32 = i_data0_32;
assign w_firstTrig = i_drive0 | w_sendFree;
(* dont_touch="true" *)delay1Unit outdelay0 (.inR(i_drive0), .outR(w_drive0Next), .rst(rst));
contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

//secondFifo
// cFifo1 secondFifo(
// .i_drive(i_drive1),
// .i_freeNext(w_sendFree),
// .o_free(),
// .o_driveNext(w_drive1Next),
// .o_fire_1(w_secondFire_1),
// .rst(rst)
// );

// always@(posedge w_secondFire_1 or negedge rst)
// begin
//     if(!rst) begin
// 		r_data1_32 <= 1'b0;
// 		end
// 	else begin
// 		r_data1_32 <= i_data1_32;
// 		end
// end
assign w_data1_32 = i_data1_32;
assign w_secondTrig = i_drive1 | w_sendFree;
(* dont_touch="true" *)delay1Unit outdelay1 (.inR(i_drive1), .outR(w_drive1Next), .rst(rst));
contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);

assign w_driveNext = w_drive0Next | w_drive1Next;
assign w_sendDrive = w_driveNext & w_secondReq & w_firstReq;
assign w_sendFree = i_freeNext;
assign o_free0 = i_freeNext;
assign o_free1 = i_freeNext;
assign o_data_64 = {w_data1_32, w_data0_32};
assign o_driveNext = w_sendDrive;

endmodule
