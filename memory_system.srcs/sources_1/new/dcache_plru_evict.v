`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/16 16:14:58
// Design Name: 
// Module Name: dcache_plru_evict
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


module dcache_plru_evict( //找最不经常访问的进行替换，
    input [6:0] w_plru_buffer_out_7,
    output reg [2:0]  w_dcache_plru_evict_out_evictWay_3
    );

//                             [0]  0 way0-way3 最近没被使用
//                             /\
//                            /  \
//                           /    \
//                         0/      \1
//                         /        \
//                      [1]          [2]       [1]为0 way0-way1 最近没被使用
//                      /\           /\
//                    0/  \1       0/  \1
//                    /    \       /    \
//                  [3]   [4]    [5]    [6]    [3]为0 way0  最近没被使用
//                  /\     /\     /\     /\
//                0/  \1 0/  \1 0/  \1 0/  \1
//                
//                

    always @( w_plru_buffer_out_7[6:0] ) begin
        casez (w_plru_buffer_out_7[6:0] )
            7'b???0?00: w_dcache_plru_evict_out_evictWay_3 = 3'b000 ;
            7'b???1?00: w_dcache_plru_evict_out_evictWay_3 = 3'b001 ;
            7'b??0??10: w_dcache_plru_evict_out_evictWay_3 = 3'b010 ;
            7'b??1??10: w_dcache_plru_evict_out_evictWay_3 = 3'b011 ;
            7'b?0??0?1: w_dcache_plru_evict_out_evictWay_3 = 3'b100 ;
            7'b?1??0?1: w_dcache_plru_evict_out_evictWay_3 = 3'b101 ;
            7'b0???1?1: w_dcache_plru_evict_out_evictWay_3 = 3'b110 ;
            7'b1???1?1: w_dcache_plru_evict_out_evictWay_3 = 3'b111 ;
            default: w_dcache_plru_evict_out_evictWay_3 = 3'b0 ;
        endcase
    end


endmodule
