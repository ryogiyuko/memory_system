`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/16 10:38:34
// Design Name: 
// Module Name: Dcache_D_V_buffer
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


module Dcache_D_V_buffer( //待测
    input  rst, fire, 
    input [7:0] i_D_V_buffer_addr_8, //2b为单位，最下面不管
    input i_D_V_write_enable, 
    input [1:0] i_data_in_2, //高位D,V
    output reg [15:0] o_w_data_out_16
    );
    
    // 16b/set => 16b * 32sets = 64B
    // 64B = 512b = 32 * 16 = 2^5 行  2^4 列
    reg [15:0] D_V_buffer [31:0];//数组有32个元素，每个元素都是16位的宽  D,V

    always @(posedge fire or negedge rst) begin
        if (rst == 0) begin
            D_V_buffer[0] <= 16'b0;D_V_buffer[1] <= 16'b0;D_V_buffer[2] <= 16'b0;D_V_buffer[3] <= 16'b0;
            D_V_buffer[4] <= 16'b0;D_V_buffer[5] <= 16'b0;D_V_buffer[6] <= 16'b0;D_V_buffer[7] <= 16'b0;
            D_V_buffer[8] <= 16'b0;D_V_buffer[9] <= 16'b0;D_V_buffer[10] <= 16'b0;D_V_buffer[11] <= 16'b0;
            D_V_buffer[12] <= 16'b0;D_V_buffer[13] <= 16'b0;D_V_buffer[14] <= 16'b0;D_V_buffer[15] <= 16'b0;
            D_V_buffer[16] <= 16'b0;D_V_buffer[17] <= 16'b0;D_V_buffer[18] <= 16'b0;D_V_buffer[19] <= 16'b0;
            D_V_buffer[20] <= 16'b0;D_V_buffer[21] <= 16'b0;D_V_buffer[22] <= 16'b0;D_V_buffer[23] <= 16'b0;
            D_V_buffer[24] <= 16'b0;D_V_buffer[25] <= 16'b0;D_V_buffer[26] <= 16'b0;D_V_buffer[27] <= 16'b0;
            D_V_buffer[28] <= 16'b0;D_V_buffer[29] <= 16'b0;D_V_buffer[30] <= 16'b0;D_V_buffer[31] <= 16'b0;
        end
        else begin
            if ( i_D_V_write_enable==1'b1 ) begin
                D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b1} ] <= i_data_in_2[1];
                D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b0} ] <= i_data_in_2[0];
            end
            else begin
                D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b1} ] <= D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b1} ];
                D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b0} ] <= D_V_buffer[ i_D_V_buffer_addr_8[7:3] ][ {i_D_V_buffer_addr_8[2:0], 1'b0} ];
            end
        end
    end
    always @(i_D_V_buffer_addr_8 or fire) begin
       o_w_data_out_16 = D_V_buffer[ i_D_V_buffer_addr_8[7:3] ];
    end 


endmodule
