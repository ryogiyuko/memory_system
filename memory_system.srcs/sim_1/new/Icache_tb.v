`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/13 19:34:26
// Design Name: 
// Module Name: Icache_tb
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


module Icache_tb;

// Icache Parameters
parameter PERIOD    = 5;
parameter rst_cycle  = 30;
parameter run_time  = 30;

reg [6:0] count = 0;

// Icache Inputs
reg   rst                                  = 1 ;
reg   i_Itlb_drive                         = 0 ;
reg   [33:0]  i_Itlb_PA_34                 = 0 ;
reg   i_L2Cache_drive                      = 0 ;
reg   i_freeNext_L2Cache                   = 0 ;
reg   [255:0]  i_L2Cache_refillLine_32B    = 0 ;
reg   i_freeNext_ifu                       = 0 ;

// Icache Outputs
wire  o_Itlb_free                          ;
wire  o_L2Cache_free                       ;
wire  o_driveNext_L2Cache                  ;
wire  [33:0]  o_miss_Addr_to_L2cache_34    ;
wire  o_driveNext_ifu                      ;
wire  [255:0]  o_hit_data_to_ifu_32B       ;


initial
begin
    #5; rst = 0;
    #(PERIOD*rst_cycle-5);

    forever begin
        // #(PERIOD/2.0)  fire=~fire;//必须要有个小数，否则向下取整
        // #(PERIOD/2.0)  fire=~fire;
        #(PERIOD/2.0)  ;//必须要有个小数，否则向下取整
        #(PERIOD/2.0)  ;
        #run_time;
 
    end
end

Icache  u_Icache (
    .rst                        ( rst                                ),
    .i_Itlb_drive               ( i_Itlb_drive                       ),
    .i_Itlb_PA_34               ( i_Itlb_PA_34               [33:0]  ),
    .i_L2Cache_drive            ( i_L2Cache_drive                    ),
    .i_freeNext_L2Cache         ( i_freeNext_L2Cache                 ),
    .i_L2Cache_refillLine_32B   ( i_L2Cache_refillLine_32B   [255:0] ),
    .i_freeNext_ifu             ( i_freeNext_ifu                     ),

    .o_Itlb_free                ( o_Itlb_free                        ),
    .o_L2Cache_free             ( o_L2Cache_free                     ),
    .o_driveNext_L2Cache        ( o_driveNext_L2Cache                ),
    .o_miss_Addr_to_L2cache_34  ( o_miss_Addr_to_L2cache_34  [33:0]  ),
    .o_driveNext_ifu            ( o_driveNext_ifu                    ),
    .o_hit_data_to_ifu_32B      ( o_hit_data_to_ifu_32B      [255:0] )
);

// i_Itlb_drive                         = 0 ;
// i_Itlb_PA_34                 = 0 ;
// i_L2Cache_drive                      = 0 ;
// i_freeNext_L2Cache                   = 0 ;
// i_L2Cache_refillLine_32B    = 0 ;
// i_freeNext_ifu                       = 0 ;

initial
begin
    #(PERIOD*rst_cycle) rst  =  1;
    #20;

    //case1 读缺失，访问L2
    count = count +1'b1;
    
    i_Itlb_PA_34 = 34'h234567_abc;

    #(PERIOD/2.0) i_Itlb_drive = 1'b1;
    #(PERIOD/2.0) i_Itlb_drive = 1'b0;

    #run_time;
	#(PERIOD/2.0)		i_freeNext_L2Cache =  1'b1;
    #(PERIOD/2.0)       i_freeNext_L2Cache =  1'b0;
		// #(PERIOD/2.0)		i_freeNext_ifu		=		1'b0;
        // i_freeNext_ifu =  1'b0;
  

    //case2 L2回填
    count = count +1'b1;

    i_Itlb_PA_34 = 34'h256789_abc; //应该不赋值
    i_L2Cache_refillLine_32B = 256'hfea5bf5c4ee8c293ead6fe726109b4f8_6d1c1c1b60d277f38f227c1d5e91b527; //64位16进制

    #(PERIOD/2.0) i_L2Cache_drive = 1'b1;
    #(PERIOD/2.0) i_L2Cache_drive = 1'b0;

    #run_time;
    #(PERIOD/2.0)		i_freeNext_ifu		=		1'b1;
    #(PERIOD/2.0) i_freeNext_ifu =  1'b0;
        

    //case3 读命中
    count = count +1'b1;

    i_Itlb_PA_34 = 34'h234567_abc;

    #(PERIOD/2.0) i_Itlb_drive = 1'b1;
    #(PERIOD/2.0) i_Itlb_drive = 1'b0;

    #run_time;
	#(PERIOD/2.0)		i_freeNext_ifu =  1'b1;
    #(PERIOD/2.0)       i_freeNext_ifu =  1'b0;

    $finish;
end

// wait(o_driveNext == 1'b1);
// 		#(PERIOD/2.0)		i_freeNext		=		1'b1;
// 		#(PERIOD/2.0)		i_freeNext		=		1'b0;

endmodule
