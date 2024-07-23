`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/16 20:15:45
// Design Name: 
// Module Name: dcache_tag_compare
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


module dcache_tag_compare(
    input [21:0] w_dcache_pa_tag_22, //w_dcache_PA_34[33:12]
    
    input [255:0] w_dataSRAM_out_way0_32B, w_dataSRAM_out_way1_32B,w_dataSRAM_out_way2_32B, w_dataSRAM_out_way3_32B,
    input [255:0] w_dataSRAM_out_way4_32B, w_dataSRAM_out_way5_32B, w_dataSRAM_out_way6_32B, w_dataSRAM_out_way7_32B, 
    input [21:0] w_tagSRAM_out_way0_22, w_tagSRAM_out_way1_22, w_tagSRAM_out_way2_22, w_tagSRAM_out_way3_22,
    input [21:0] w_tagSRAM_out_way4_22, w_tagSRAM_out_way5_22, w_tagSRAM_out_way6_22, w_tagSRAM_out_way7_22,
    
    input [15:0] w_D_V_buffer_dataOut_16,//1位 D,0位 V
    input [2:0] r_plru_evictWay_3,
    input [6:0] w_plru_buffer_out_7,

    output w_hit, 
    output [7:0]w_way_hit_8, w_way_dirty_8,
    output [2:0] w_hit_way_3,
    output reg [7:0] w_plru_buffer_dataIn_8

    );

    //tag compare
    assign w_way_hit_8[7] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way7_22)==20'b0 ) && w_D_V_buffer_dataOut_16[14] ) ?  1:0;
    assign w_way_dirty_8[7] = w_D_V_buffer_dataOut_16[15];
    assign w_way_hit_8[6] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way6_22)==20'b0 ) && w_D_V_buffer_dataOut_16[12] ) ?  1:0;
    assign w_way_dirty_8[6] = w_D_V_buffer_dataOut_16[13];
    assign w_way_hit_8[5] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way5_22)==20'b0 ) && w_D_V_buffer_dataOut_16[10] ) ?  1:0;
    assign w_way_dirty_8[5] = w_D_V_buffer_dataOut_16[11];
    assign w_way_hit_8[4] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way4_22)==20'b0 ) && w_D_V_buffer_dataOut_16[8] ) ?  1:0;
    assign w_way_dirty_8[4] = w_D_V_buffer_dataOut_16[9];
    assign w_way_hit_8[3] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way3_22)==20'b0 ) && w_D_V_buffer_dataOut_16[6] ) ?  1:0;
    assign w_way_dirty_8[3] = w_D_V_buffer_dataOut_16[7];
    assign w_way_hit_8[2] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way2_22)==20'b0 ) && w_D_V_buffer_dataOut_16[4] ) ?  1:0;
    assign w_way_dirty_8[2] = w_D_V_buffer_dataOut_16[5];
    assign w_way_hit_8[1] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way1_22)==20'b0 ) && w_D_V_buffer_dataOut_16[2] ) ?  1:0;
    assign w_way_dirty_8[1] = w_D_V_buffer_dataOut_16[3];
    assign w_way_hit_8[0] =( ( ( w_dcache_pa_tag_22 - w_tagSRAM_out_way0_22)==20'b0 ) && w_D_V_buffer_dataOut_16[0] ) ?  1:0;
    assign w_way_dirty_8[0] = w_D_V_buffer_dataOut_16[1];

    assign w_hit = w_way_hit_8[7] | w_way_hit_8[6] | w_way_hit_8[5] | w_way_hit_8[4] |w_way_hit_8[3] | w_way_hit_8[2] | w_way_hit_8[1] | w_way_hit_8[0];

    //plru 
    always @(w_hit or w_way_hit_8[7:0] or w_plru_buffer_out_7[6:0]) begin
        if(w_hit==1)begin
          case (w_way_hit_8[7:0])
            
          endcase
        end
    end

endmodule
