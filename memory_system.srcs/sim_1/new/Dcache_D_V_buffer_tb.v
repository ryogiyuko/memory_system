`timescale 1ns / 1ns

module Dcache_D_V_buffer_tb;

    reg rst;
    reg fire;
    reg [7:0] i_D_V_buffer_addr_8;
    reg i_D_V_write_enable;
    reg [1:0] i_data_in_2;
    
    wire [15:0] o_w_data_out_16;
    
    Dcache_D_V_buffer Dcache_D_V_buffer(
        .rst(rst), 
        .fire(fire), 
        .i_D_V_buffer_addr_8(i_D_V_buffer_addr_8), //2b为单位，最下面不管
        .i_D_V_write_enable(i_D_V_write_enable), 
        .i_data_in_2(i_data_in_2), //高位D,V

        .o_w_data_out_16(o_w_data_out_16) //8路组相联 所以出来是16b
    );
    
    initial begin

        // fire上升沿 rst下降沿
        
        rst = 1;
        fire = 0;
        #5;
        rst = 0;
        #50;
        rst = 1;

        // 先测试写
        // write test1
        i_D_V_buffer_addr_8 = 8'b11110000;
        i_D_V_write_enable = 1;
        i_data_in_2 = 2'b11;
        #50;
        fire = 1;
        #50;
        fire = 0;
        // write test2
        i_D_V_buffer_addr_8 = 8'b11111000;
        i_D_V_write_enable = 1;
        i_data_in_2 = 2'b01;
        #50;
        fire = 1;
        #50;
        // 再测试读
        fire = 0;
        i_D_V_write_enable = 0;
        // read test1
        i_D_V_buffer_addr_8 = 8'b11110000;
        #50;
        fire = 1;
        #50;
        fire = 0;
        // read test2
        i_D_V_buffer_addr_8 = 8'b11111000;
        #50;
        fire = 1;
        
        $stop;
    
    end


endmodule
