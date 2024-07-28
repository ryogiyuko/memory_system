`timescale 1ns / 1ps

module Dcache_plru_buffer_tb;

    reg rst;
    reg fire;
    reg [4:0] i_plru_buffer_addr_5;
    reg i_plru_write_enable;
    reg [7:0] i_data_in_8;
    
    wire [7:0] o_w_data_out_8;
    
    Dcache_plru_buffer Dcache_plru_buffer(
    .rst(rst), 
    .fire(fire), 
    .i_plru_buffer_addr_5(i_plru_buffer_addr_5),
    .i_plru_write_enable(i_plru_write_enable), 
    .i_data_in_8(i_data_in_8),
    
    .o_w_data_out_8(o_w_data_out_8)
    );
    
    initial begin
        rst = 0;
        fire = 0;
        #100;
        rst = 1;
        #50
        
        // write test1
        i_plru_buffer_addr_5 = 5'b00001;
        i_plru_write_enable = 1;
        i_data_in_8 = 8'b11111111;
        fire = 1;
        
        #50;
        fire = 0;
        #50;
        // write test2
        i_plru_buffer_addr_5 = 5'b00010;
        i_data_in_8 = 8'b00001111;
        fire = 1;
        
        #50;
        fire = 0;
        #50;
        i_plru_write_enable = 0;
        // read test1
        i_plru_buffer_addr_5 = 5'b00001;
        fire = 1;
        
        #50;
        fire = 0;
        #50;
        // read test2
        i_plru_buffer_addr_5 = 5'b00010;
        fire = 1;
       
        #200;
        $stop;
    
    end

endmodule
