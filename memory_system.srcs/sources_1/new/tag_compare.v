`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/13 19:18:41
// Design Name: 
// Module Name: tag_compare
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


module tag_compare(
    input [19:0] w_Icache_addr_tag_20,
    input [19:0] Icache_SRAM_out_way1_tag_20,Icache_SRAM_out_way0_tag_20,
    input Icache_SRAM_out_way1_V,Icache_SRAM_out_way0_V,
    input r_fifo_buffer_data_out,
    input [255:0] Icache_SRAM_out_way1_data_256,Icache_SRAM_out_way0_data_256,
    
    output hit,//是否命中
    output [1:0] way_hit_2,//[1] way1 [0] way0，命中哪一路
    output w_fifo_buffer_data_in,//为0时way0优先，为1时way1优先
    output [255:0]w_hit_data_Selector2_to_ifu_32B
    );
    
//    wire hit;//是否命中
//    wire [1:0] way_hit_2;//[1] way1 [0] way0，命中哪一路
    assign way_hit_2[1] = ( ( (w_Icache_addr_tag_20 - Icache_SRAM_out_way1_tag_20) == 20'b0) && Icache_SRAM_out_way1_V ) ? 1:0 ;
    assign way_hit_2[0] = ( ( (w_Icache_addr_tag_20 - Icache_SRAM_out_way0_tag_20) == 20'b0) && Icache_SRAM_out_way0_V ) ? 1:0 ;
    assign hit = way_hit_2[1] | way_hit_2[0];
    assign w_fifo_buffer_data_in = hit ? way_hit_2[1] : ~r_fifo_buffer_data_out;
    assign w_hit_data_Selector2_to_ifu_32B = way_hit_2[1] ? Icache_SRAM_out_way1_data_256 : Icache_SRAM_out_way0_data_256;

endmodule
