`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/11 18:52:00
// Design Name: 
// Module Name: replace_fifo_buffer
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


module replace_fifo_buffer(//写+读：6.723，6.8； 读：5.858，6.506，6.948，6.506，6.861 
    input  rst, fire, 
    input [8:0] i_replace_fifo_buffer_addr_9, //两路只需要一位，不需要sel_way_1
    input i_replace_fifo_buffer_write_enable, i_data_in,
    output reg o_data_out,
    output reg o_w_data_out
    );

    //64B = 512 bits =  2^5 行  2^4 列
    reg [15:0] fifo_buffer [31:0];//数组有32个元素，每个元素都是16位的宽

    always @(posedge fire or negedge rst) begin
        if (rst == 0) begin
            o_data_out <= 1'b0;
            fifo_buffer[0] <= 16'b0;fifo_buffer[1] <= 16'b0;fifo_buffer[2] <= 16'b0;fifo_buffer[3] <= 16'b0;
            fifo_buffer[4] <= 16'b0;fifo_buffer[5] <= 16'b0;fifo_buffer[6] <= 16'b0;fifo_buffer[7] <= 16'b0;
            fifo_buffer[8] <= 16'b0;fifo_buffer[9] <= 16'b0;fifo_buffer[10] <= 16'b0;fifo_buffer[11] <= 16'b0;
            fifo_buffer[12] <= 16'b0;fifo_buffer[13] <= 16'b0;fifo_buffer[14] <= 16'b0;fifo_buffer[15] <= 16'b0;
            fifo_buffer[16] <= 16'b0;fifo_buffer[17] <= 16'b0;fifo_buffer[18] <= 16'b0;fifo_buffer[19] <= 16'b0;
            fifo_buffer[20] <= 16'b0;fifo_buffer[21] <= 16'b0;fifo_buffer[22] <= 16'b0;fifo_buffer[23] <= 16'b0;
            fifo_buffer[24] <= 16'b0;fifo_buffer[25] <= 16'b0;fifo_buffer[26] <= 16'b0;fifo_buffer[27] <= 16'b0;
            fifo_buffer[28] <= 16'b0;fifo_buffer[29] <= 16'b0;fifo_buffer[30] <= 16'b0;fifo_buffer[31] <= 16'b0;
        end
        else begin
            o_data_out <= fifo_buffer[ i_replace_fifo_buffer_addr_9[8:4] ][ i_replace_fifo_buffer_addr_9[3:0] ];
            if ( i_replace_fifo_buffer_write_enable==1'b1 ) begin
                fifo_buffer[ i_replace_fifo_buffer_addr_9[8:4] ][ i_replace_fifo_buffer_addr_9[3:0] ] <= i_data_in;
            end
        end
    end
    always @( *) begin
        if(rst==0) o_w_data_out<=1'b0;
        else o_w_data_out <= fifo_buffer[ i_replace_fifo_buffer_addr_9[8:4] ][ i_replace_fifo_buffer_addr_9[3:0] ] ;
    end 

endmodule
