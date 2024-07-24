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
    input [7:0] i_data_in_8,
    output reg [7:0] o_w_data_out_8
    );
    
    // 8b/set => 8b * 32sets = 32B
    // 64B = 256b = 32 * 8 = 2^5 行  2^4 列
    reg  [7:0] plru_buffer [31:0];//数组有32个元素，每个元素都是16位的宽  D,V

    always @(posedge fire or negedge rst) begin
        if (rst == 0) begin
            plru_buffer[0] <= 8'b0;plru_buffer[1] <= 8'b0;plru_buffer[2] <= 8'b0;plru_buffer[3] <= 8'b0;
            plru_buffer[4] <= 8'b0;plru_buffer[5] <= 8'b0;plru_buffer[6] <= 8'b0;plru_buffer[7] <= 8'b0;
            plru_buffer[8] <= 8'b0;plru_buffer[9] <= 8'b0;plru_buffer[10] <= 8'b0;plru_buffer[11] <= 8'b0;
            plru_buffer[12] <= 8'b0;plru_buffer[13] <= 8'b0;plru_buffer[14] <= 8'b0;plru_buffer[15] <= 8'b0;
            plru_buffer[16] <= 8'b0;plru_buffer[17] <= 8'b0;plru_buffer[18] <= 8'b0;plru_buffer[19] <= 8'b0;
            plru_buffer[20] <= 8'b0;plru_buffer[21] <= 8'b0;plru_buffer[22] <= 8'b0;plru_buffer[23] <= 8'b0;
            plru_buffer[24] <= 8'b0;plru_buffer[25] <= 8'b0;plru_buffer[26] <= 8'b0;plru_buffer[27] <= 8'b0;
            plru_buffer[28] <= 8'b0;plru_buffer[29] <= 8'b0;plru_buffer[30] <= 8'b0;plru_buffer[31] <= 8'b0;
        end
        else begin
            if ( i_plru_write_enable==1'b1 ) begin
                plru_buffer[ i_plru_buffer_addr_5 ]<= i_data_in_8;  
            end
            else begin
                plru_buffer[ i_plru_buffer_addr_5 ]<= plru_buffer[ i_plru_buffer_addr_5 ];
            end
        end
    end
    always @( *) begin
        if(rst==0) o_w_data_out_8=8'b0;
        else o_w_data_out_8 = plru_buffer[ i_plru_buffer_addr_5];
    end 

endmodule
