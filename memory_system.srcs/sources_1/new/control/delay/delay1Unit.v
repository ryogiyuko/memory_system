`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/26 10:00:04
// Design Name: 
// Module Name: delay1Unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


(*dont_touch = "true"*)module delay1Unit(
	inR, outR, rst
    );
	input   rst;
	input	inR;
	output	outR;
	
	wire	in_nor, out_delayed, out_tmp;
    reg    outR;

assign in_nor = out_delayed ^ inR;

always @(posedge in_nor or negedge rst)
begin
  if(!rst)
    outR <= 1'b0;
  else
    outR <= out_tmp;
end

assign out_tmp = ~outR;
assign out_delayed = outR;

endmodule
