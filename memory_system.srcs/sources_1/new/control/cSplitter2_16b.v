

`timescale 1ns / 1ps

module cSplitter2_16b(
i_drive, i_data_16, o_free,
o_driveNext0, i_freeNext0, o_data0_8,
o_driveNext1, i_freeNext1, o_data1_8,
rst);

input i_drive;
input i_freeNext0,i_freeNext1;
input rst;
input [15:0] i_data_16;

output o_free;
output o_driveNext0,o_driveNext1;
output [7:0] o_data0_8;
output [7:0] o_data1_8;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext,w_free0Next,w_free1Next;
wire w_driveNext0;
wire w_sendFree;
wire w_sendDrive;
wire w_firstTrig, w_firstReq;
wire w_secondTrig, w_secondReq;
// reg [7:0] r_data0_8;
// reg [7:0] r_data1_8;

//pipeline
// sender sender(
// 	.i_drive(i_drive),
// 	.o_free(o_free),
// 	.outR(w_outRRelay_2[0]),
// 	.i_free(w_fire),
// 	.rst(rst)
// );

// relay relay0(
// 	.inR(w_outRRelay_2[0]),
// 	.inA(w_outARelay_2[0]),
// 	.outR(w_outRRelay_2[1]),
// 	.outA(w_outARelay_2[1]),
// 	.fire(w_fire)
// );

// receiver receiver(
// 	.inR(w_outRRelay_2[1]),
// 	.inA(w_outARelay_2[1]),
// 	.i_freeNext(w_freeNext)
// );

// always @(posedge w_fire or negedge rst) begin
// 	if (!rst) begin
// 		r_data0_8 <= 8'b0; 
// 		r_data1_8 <= 8'b0; 
// 	end else begin
// 		r_data0_8 <= i_data_16[7:0];
// 		r_data1_8 <= i_data_16[15:8];
// 	end
// end

assign o_data0_8 = i_data_16[15:8];
assign o_data1_8 = i_data_16[7:0];

//control signal
// delay2U outdelay0(.inR(w_fire), .outR(w_driveNext0));
// assign o_driveNext0 = i_drive;
// assign o_driveNext1 = i_drive;
// assign o_free = i_freeNext0 | i_freeNext1;

(* dont_touch="true" *)delay1Unit outdelay1 (.inR(i_freeNext0), .outR(w_free0Next), .rst(rst));

assign w_firstTrig = i_freeNext0 | w_sendDrive;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

(* dont_touch="true" *)delay1Unit outdelay2 (.inR(i_freeNext1), .outR(w_free1Next), .rst(rst));

assign w_secondTrig = i_freeNext1 | w_sendDrive;

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

