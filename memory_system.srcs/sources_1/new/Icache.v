`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 21:24:02
// Design Name: 
// Module Name: Icache
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


module Icache(
    input i_rst,

    //MMU
    input i_Itlb_drive,
    output o_Itlb_free,
    input [33:0] i_Itlb_PA_34,

    //L2 Cache
    input i_L2Cache_drive, i_freeNext_L2Cache,
    output o_L2Cache_free, o_driveNext_L2Cache,
    input [255:0] i_L2Cache_refillLine_32B,

    //IFU
    input i_freeNext_ifu,
    output o_driveNext_ifu,
    output [255:0] o_hit_data_to_ifu_32B

    );
endmodule
