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


module replace_fifo_buffer(
    input  rst, fire, 
    input [8:0] i_replace_fifo_buffer_addr_9, //两路只需要一位，不需要sel_way_1
    input i_replace_fifo_buffer_write_enable, i_data_in,
    output reg o_data_out
    );

    //64B = 512 bits = 2^4 行 * 2^5 列
    reg [15:0] fifo_buffer [31:0];

    always @(posedge fire or negedge rst) begin
        if (rst == 0) begin
            fifo_buffer[0] <= 32'b0;fifo_buffer[1] <= 32'b0;fifo_buffer[2] <= 32'b0;fifo_buffer[3] <= 32'b0;
            fifo_buffer[4] <= 32'b0;fifo_buffer[5] <= 32'b0;fifo_buffer[6] <= 32'b0;fifo_buffer[7] <= 32'b0;
            fifo_buffer[8] <= 32'b0;fifo_buffer[9] <= 32'b0;fifo_buffer[10] <= 32'b0;fifo_buffer[11] <= 32'b0;
            fifo_buffer[12] <= 32'b0;fifo_buffer[13] <= 32'b0;fifo_buffer[14] <= 32'b0;fifo_buffer[15] <= 32'b0;
        end
        else begin
            o_data_out <= fifo_buffer[ i_replace_fifo_buffer_addr_9[8:5] ][ i_replace_fifo_buffer_addr_9[4:0] ];
            if ( i_replace_fifo_buffer_write_enable==1'b1 ) begin
                fifo_buffer[ i_replace_fifo_buffer_addr_9[8:5] ][ i_replace_fifo_buffer_addr_9[4:0] ] <= i_data_in;
            end
        end
    end

endmodule
