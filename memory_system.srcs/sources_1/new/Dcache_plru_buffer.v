`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/16 10:38:56
// Design Name: 
// Module Name: Dcache_plru_buffer
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


module Dcache_plru_buffer(
    input  rst, fire, 
    input [4:0] i_plru_buffer_addr_5, //2b为单位，最下面不管
    input i_plru_write_enable, 
    input [6:0] i_data_in_7,
    output  [6:0] o_w_data_out_7
    );
    
    // 8b/set => 8b * 32sets = 32B
    // 64B = 256b = 32 * 8 = 2^5 行  2^4 列
    reg  [6:0] plru_buffer [31:0];//数组有32个元素，每个元素都是16位的宽  D,V

    always @(posedge fire or negedge rst) begin
        if (rst == 0) begin
            plru_buffer[0] <= 7'b0;plru_buffer[1] <= 7'b0;plru_buffer[2] <= 7'b0;plru_buffer[3] <= 7'b0;
            plru_buffer[4] <= 7'b0;plru_buffer[5] <= 7'b0;plru_buffer[6] <= 7'b0;plru_buffer[7] <= 7'b0;
            plru_buffer[8] <= 7'b0;plru_buffer[9] <= 7'b0;plru_buffer[10] <= 7'b0;plru_buffer[11] <= 7'b0;
            plru_buffer[12] <= 7'b0;plru_buffer[13] <= 7'b0;plru_buffer[14] <= 7'b0;plru_buffer[15] <= 7'b0;
            plru_buffer[16] <= 7'b0;plru_buffer[17] <= 7'b0;plru_buffer[18] <= 7'b0;plru_buffer[19] <= 7'b0;
            plru_buffer[20] <= 7'b0;plru_buffer[21] <= 7'b0;plru_buffer[22] <= 7'b0;plru_buffer[23] <= 7'b0;
            plru_buffer[24] <= 7'b0;plru_buffer[25] <= 7'b0;plru_buffer[26] <= 7'b0;plru_buffer[27] <= 7'b0;
            plru_buffer[28] <= 7'b0;plru_buffer[29] <= 7'b0;plru_buffer[30] <= 7'b0;plru_buffer[31] <= 7'b0;
        end
        else begin
            if ( i_plru_write_enable==1'b1 ) begin
                plru_buffer[ i_plru_buffer_addr_5 ]<= i_data_in_7;  
            end
            else begin
                plru_buffer[ i_plru_buffer_addr_5 ]<= plru_buffer[ i_plru_buffer_addr_5 ];
            end
        end
    end

    assign   o_w_data_out_7 = plru_buffer[ i_plru_buffer_addr_5];
 

endmodule
