//-----------------------------------------------
//	module name: sender
//	author: Tong Fu
//	version: 1st version (2023-06-15)
//	description: 
//		standard click  
//		tech: xilinx fpga
//----------------------------------------------
`timescale 1ns / 1ps

module sender(
i_drive, o_free, outR, i_free, rst
);

input   i_drive;
input   i_free;
output  o_free;
output  outR;
input   rst;

wire reqNeg;
reg outR0;
LUT1 #(.INIT(2'b01)) tmp_inv 
(
   .O(reqNeg),   
   .I0(outR)  
);

always @(posedge i_drive or negedge rst)
begin
    if (rst == 1'b0)
        outR0 <= 1'b0 ;
    else
        outR0 <= reqNeg ;
end
assign outR = outR0;

LUT1 #(.INIT(2'b10)) reply_delay
(
    .O(o_free),
    .I0(i_free)
);

endmodule
