`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/13 08:39:28
// Design Name: 
// Module Name: replace_fifo_buffer_tb
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



module replace_fifo_buffer_tb;

// replace_fifo_buffer Parameters
parameter PERIOD    = 5;
parameter rst_cycle  = 25;
parameter run_time  = 5;

// replace_fifo_buffer Inputs
reg   rst                                  = 1'b1 ;
reg   fire                                 = 0 ;
reg   [8:0]  i_replace_fifo_buffer_addr_9  = 0 ;
reg   i_replace_fifo_buffer_write_enable   = 0 ;
reg   i_data_in                            = 0 ;

// replace_fifo_buffer Outputs
wire  o_data_out                           ;
wire  o_w_data_out;

reg [6:0] count = 0;

initial
begin
    #2; rst = 0;
    #(PERIOD*rst_cycle-2);

//    #(PERIOD/2)  fire=~fire;
//    #(PERIOD/2)  fire=~fire;

    forever begin
        #(PERIOD/2.0)  fire=~fire;//必须要有个小数，否则向下取整
        #(PERIOD/2.0)  fire=~fire;
        #run_time;
 
    end
end


replace_fifo_buffer u_replace_fifo_buffer(
    .rst                                (rst                                ),
    .fire                               (fire                               ),
    .i_replace_fifo_buffer_addr_9       (i_replace_fifo_buffer_addr_9       ),
    .i_replace_fifo_buffer_write_enable (i_replace_fifo_buffer_write_enable ),
    .i_data_in                          (i_data_in                          ),
    .o_data_out                         (o_data_out                         ),
    .o_w_data_out                       (o_w_data_out                       )
);


initial
begin
    #(PERIOD*rst_cycle) rst  =  1;

    //case1 写
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b10110_0111;
    i_replace_fifo_buffer_write_enable = 1;
    i_data_in =1;

    #(PERIOD+run_time);
    
    //case2 写
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b11111_0000;
    i_replace_fifo_buffer_write_enable = 1;
    i_data_in =1;

    #(PERIOD+run_time);
    
    //case3 读
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b10000_0111;
    i_replace_fifo_buffer_write_enable = 0;
    //i_data_in =1;
    
    #(PERIOD+run_time);
    
    //case4 读
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b10110_0111;
    i_replace_fifo_buffer_write_enable = 0;
    //i_data_in =1;

    #(PERIOD+run_time);
    
    //case5 读
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b10000_0111;
    i_replace_fifo_buffer_write_enable = 0;
    //i_data_in =1;
    
    #(PERIOD+run_time);
    
    //case6 读
    count = count +1'b1;
    i_replace_fifo_buffer_addr_9 = 9'b11111_0000;
    i_replace_fifo_buffer_write_enable = 0;
    //i_data_in =1;
    
    #(PERIOD+run_time);

    $finish;
end

endmodule
