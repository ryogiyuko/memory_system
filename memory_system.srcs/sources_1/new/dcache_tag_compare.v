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
    output reg w_dirty,
    output reg [255:0] w_hitway_data_32B,w_evict_way_32B,
    output [7:0]w_way_hit_8, w_way_dirty_8,
    output reg [2:0] w_hit_way_3,
    output reg [6:0] w_plru_buffer_dataIn_7

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
    
    always @( *) begin
        case (w_way_hit_8)
            8'b00000001:begin
              w_hitway_data_32B = w_dataSRAM_out_way0_32B;
              w_dirty = w_way_dirty_8[0];
              w_hit_way_3 = 3'b000;
            end
            8'b00000010:begin
              w_hitway_data_32B = w_dataSRAM_out_way1_32B;
              w_dirty = w_way_dirty_8[1];
              w_hit_way_3 = 3'b001;
            end 
            8'b00000100:begin
              w_hitway_data_32B = w_dataSRAM_out_way2_32B;
              w_dirty = w_way_dirty_8[2];
              w_hit_way_3 = 3'b010;
            end
            8'b00001000:begin
              w_hitway_data_32B = w_dataSRAM_out_way3_32B;
              w_dirty = w_way_dirty_8[3];
              w_hit_way_3 = 3'b011;
            end
            8'b00010000:begin
              w_hitway_data_32B = w_dataSRAM_out_way4_32B;
              w_dirty = w_way_dirty_8[4];
              w_hit_way_3 = 3'b100;
            end
            8'b00100000: begin
              w_hitway_data_32B = w_dataSRAM_out_way5_32B;
              w_dirty = w_way_dirty_8[5];
              w_hit_way_3 = 3'b101;
            end
            8'b01000000: begin
              w_hitway_data_32B = w_dataSRAM_out_way6_32B;
              w_dirty = w_way_dirty_8[6];
              w_hit_way_3 = 3'b110;
            end
            8'b10000000: begin
              w_hitway_data_32B = w_dataSRAM_out_way7_32B;
              w_dirty = w_way_dirty_8[7];
              w_hit_way_3 = 3'b111;
            end
          default: begin
            w_dirty = 1'b0; 
            w_hitway_data_32B = 256'b0;
            w_hit_way_3 = 3'b000;
          end
        endcase
    end

    //plru 
//           w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
//           w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
//           w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
//           w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
//           w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
//           w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
//           w_plru_buffer_dataIn_7[0] = w_plru_buffer_out_7[0];
    always @(w_hit or w_way_hit_8[7:0] or w_plru_buffer_out_7[6:0]) begin
        //hit 命中行变为最PLRU
        if(w_hit==1)begin
          case (w_way_hit_8[7:0])
            8'b00000001:begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = 1'b1;
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b1;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            8'b00000010:begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = 1'b0;
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b1;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end 
            8'b00000100:begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = 1'b1;
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b0;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            8'b00001000:begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = 1'b0;
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b0;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            8'b00010000:begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = 1'b1;
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b1;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            8'b00100000: begin
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = 1'b0;
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b1;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            8'b01000000: begin
              w_plru_buffer_dataIn_7[6] = 1'b1;
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b0;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            8'b10000000: begin
              w_plru_buffer_dataIn_7[6] = 1'b0;
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b0;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            default: w_plru_buffer_dataIn_7 = w_plru_buffer_out_7;
          endcase
        end

        //miss 被驱逐行变为最PLRU
        else begin
          case (r_plru_evictWay_3)
            3'b000: begin
              w_evict_way_32B = w_dataSRAM_out_way0_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = 1'b1;
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b1;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            3'b001: begin
              w_evict_way_32B = w_dataSRAM_out_way1_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = 1'b0;
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b1;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            3'b010: begin
              w_evict_way_32B = w_dataSRAM_out_way2_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = 1'b1;
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b0;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            3'b011: begin
              w_evict_way_32B = w_dataSRAM_out_way3_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = 1'b0;
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = w_plru_buffer_out_7[2];
              w_plru_buffer_dataIn_7[1] = 1'b0;
              w_plru_buffer_dataIn_7[0] = 1'b1;
            end
            3'b100: begin
              w_evict_way_32B = w_dataSRAM_out_way4_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = 1'b1;
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b1;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            3'b101: begin
              w_evict_way_32B = w_dataSRAM_out_way5_32B;
              w_plru_buffer_dataIn_7[6] = w_plru_buffer_out_7[6];
              w_plru_buffer_dataIn_7[5] = 1'b0;
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b1;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            3'b110: begin
              w_evict_way_32B = w_dataSRAM_out_way6_32B;
              w_plru_buffer_dataIn_7[6] = 1'b1;
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b0;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            3'b111: begin
              w_evict_way_32B = w_dataSRAM_out_way7_32B;
              w_plru_buffer_dataIn_7[6] = 1'b0;
              w_plru_buffer_dataIn_7[5] = w_plru_buffer_out_7[5];
              w_plru_buffer_dataIn_7[4] = w_plru_buffer_out_7[4];
              w_plru_buffer_dataIn_7[3] = w_plru_buffer_out_7[3];
              w_plru_buffer_dataIn_7[2] = 1'b0;
              w_plru_buffer_dataIn_7[1] = w_plru_buffer_out_7[1];
              w_plru_buffer_dataIn_7[0] = 1'b0;
            end
            default: begin
              w_evict_way_32B = 256'b0;
              w_plru_buffer_dataIn_7 = w_plru_buffer_out_7;
            end
          endcase
        end
    end

endmodule
