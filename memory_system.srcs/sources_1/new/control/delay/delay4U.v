`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/20 17:57:26
// Design Name: 
// Module Name: delay4U
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


module delay4U(
inR, outR
    );
input inR;
output outR;
    
wire outR0;

(* dont_touch="true" *)delay2U delay0(.inR(inR), .outR(outR0));
(* dont_touch="true" *)delay2U delay1(.inR(outR0), .outR(outR));

endmodule
