`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/28 19:30:16
// Design Name: 
// Module Name: Dcache_tb
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


module Dcache_tb;

// Dcache Parameters
parameter PERIOD    = 5;
parameter rst_cycle  = 30;
parameter run_time  = 30;

reg [6:0] count = 0;



// Dcache Inputs
reg   rst                                  = 1 ;
reg   i_lsu_drive                          = 0 ;
reg   i_freeNext_lsu                       = 0 ;
reg   [33:0]  i_lsu_PA_34                  = 0 ;
reg   [31:0]  i_lsu_storeData_32           = 0 ;
reg   [5:0]  i_lsu_storeIndex_6            = 0 ;
reg   i_lsu_load_or_store                  = 0 ;
reg   i_freeNext_retire_store              = 0 ;
reg   i_freeNext_retire_load               = 0 ;
reg   i_ptw_drive                          = 0 ;
reg   i_freeNext_ptw                       = 0 ;
reg   [33:0]  i_ptw_ptePA_34               = 0 ;
reg   i_L2cache_drive                      = 0 ;
reg   i_freeNext_L2cache_writeBack         = 0 ;
reg   i_freeNext_L2cache_miss              = 0 ;
reg   [255:0]  i_L2cache_refill_32B        = 0 ;

// Dcache Outputs
wire  o_lsu_free                           ;
wire  o_driveNext_lsu                      ;
wire  [5:0]  o_storeIndex_to_lsu_6         ;
wire  o_driveNext_retire_store             ;
wire  o_driveNext_retire_load              ;
wire  [31:0]  o_loadData_to_retire_32      ;
wire  o_ptw_free                           ;
wire  o_driveNext_ptw                      ;
wire  [31:0]  o_pte_32                     ;
wire  o_L2cache_free                       ;
wire  o_driveNext_L2cache_writeBack        ;
wire  o_driveNext_L2cache_miss             ;
wire  [33:0]  o_miss_addr_34               ;
wire  [33:0]  o_writeBack_addr_34          ;
wire  [255:0]  o_writeBack_32B             ;
wire  [5:0]  o_r_case_number_6             ;
wire  [11:0]  o_dcache_offset_12           ;
wire  [2:0]  o_plru_evictWay_3             ;
wire  [2:0]  o_r_hit_way_3                 ;
wire  [33:0]  o_dcache_PA_34               ;
wire  [33:0]  o_r_writeBack_addr_34        ;
wire  o_r_hit                              ;
wire  o_r_dirty                            ;


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

Dcache  u_Dcache (
    .rst                            ( rst                                    ),
    .i_lsu_drive                    ( i_lsu_drive                            ),
    .i_freeNext_lsu                 ( i_freeNext_lsu                         ),
    .i_lsu_PA_34                    ( i_lsu_PA_34                    [33:0]  ),
    .i_lsu_storeData_32             ( i_lsu_storeData_32             [31:0]  ),
    .i_lsu_storeIndex_6             ( i_lsu_storeIndex_6             [5:0]   ),
    .i_lsu_load_or_store            ( i_lsu_load_or_store                    ),
    .i_freeNext_retire_store        ( i_freeNext_retire_store                ),
    .i_freeNext_retire_load         ( i_freeNext_retire_load                 ),
    .i_ptw_drive                    ( i_ptw_drive                            ),
    .i_freeNext_ptw                 ( i_freeNext_ptw                         ),
    .i_ptw_ptePA_34                 ( i_ptw_ptePA_34                 [33:0]  ),
    .i_L2cache_drive                ( i_L2cache_drive                        ),
    .i_freeNext_L2cache_writeBack   ( i_freeNext_L2cache_writeBack           ),
    .i_freeNext_L2cache_miss        ( i_freeNext_L2cache_miss                ),
    .i_L2cache_refill_32B           ( i_L2cache_refill_32B           [255:0] ),

    .o_lsu_free                     ( o_lsu_free                             ),
    .o_driveNext_lsu                ( o_driveNext_lsu                        ),
    .o_storeIndex_to_lsu_6          ( o_storeIndex_to_lsu_6          [5:0]   ),
    .o_driveNext_retire_store       ( o_driveNext_retire_store               ),
    .o_driveNext_retire_load        ( o_driveNext_retire_load                ),
    .o_loadData_to_retire_32        ( o_loadData_to_retire_32        [31:0]  ),
    .o_ptw_free                     ( o_ptw_free                             ),
    .o_driveNext_ptw                ( o_driveNext_ptw                        ),
    .o_pte_32                       ( o_pte_32                       [31:0]  ),
    .o_L2cache_free                 ( o_L2cache_free                         ),
    .o_driveNext_L2cache_writeBack  ( o_driveNext_L2cache_writeBack          ),
    .o_driveNext_L2cache_miss       ( o_driveNext_L2cache_miss               ),
    .o_miss_addr_34                 ( o_miss_addr_34                 [33:0]  ),
    .o_writeBack_addr_34            ( o_writeBack_addr_34            [33:0]  ),
    .o_writeBack_32B                ( o_writeBack_32B                [255:0] ),
    .o_r_case_number_6              ( o_r_case_number_6              [5:0]   ),
    .o_dcache_offset_12             ( o_dcache_offset_12             [11:0]  ),
    .o_plru_evictWay_3              ( o_plru_evictWay_3              [2:0]   ),
    .o_r_hit_way_3                  ( o_r_hit_way_3                  [2:0]   ),
    .o_dcache_PA_34                 ( o_dcache_PA_34                 [33:0]  ),
    .o_r_writeBack_addr_34          ( o_r_writeBack_addr_34          [33:0]  ),
    .o_r_hit                        ( o_r_hit                                ),
    .o_r_dirty                      ( o_r_dirty                              )
);


// rst                                  = 1 ;
// i_lsu_drive                          = 0 ;
// i_freeNext_lsu                       = 0 ;
// i_lsu_PA_34                  = 0 ;
// i_lsu_storeData_32           = 0 ;
// i_lsu_storeIndex_6            = 0 ;
// i_lsu_load_or_store                  = 0 ;
// i_freeNext_retire_store              = 0 ;
// i_freeNext_retire_load               = 0 ;
// i_Dtlb_drive                         = 0 ;
// i_ptw_drive                          = 0 ;
// i_freeNext_ptw                       = 0 ;
// i_Dtlb_PA_ppn_22             = 0 ;
// i_ptw_ptePA_34               = 0 ;
// i_L2cache_drive                      = 0 ;
// i_freeNext_L2cache                   = 0 ;
// i_L2cache_refill_32B        = 0 ;

initial
begin
    #(PERIOD*rst_cycle) rst  =  1;
    #20;

//case1 
    count = count +1'b1;
    //读缺失(非写回)      结果：向L2发送缺失信号，r_miss_or_writeBack = 0 为缺失     
    
    i_lsu_PA_34 = 34'h298756_abc;
    i_lsu_load_or_store = 1;   //load
    i_lsu_storeIndex_6       = 6'b101000;

    #(PERIOD/2.0) i_lsu_drive = 1'b1;
    #(PERIOD/2.0) i_lsu_drive = 1'b0;

    #run_time;

	#(PERIOD/2.0)		i_freeNext_L2cache_miss =  1'b1;
    #(PERIOD/2.0)       i_freeNext_L2cache_miss =  1'b0;
    #(PERIOD);

    //L2回填   结果：读的回填，二次回填后给出 o_driveNext_retire_load  o_loadData_to_retire_32

    i_L2cache_refill_32B = 256'hfea5bf5c_4ee8c293_ead6fe72_6109b4f8_6d1c1c1b_60d277f3_8f227c1d_5e91b527; //64位16进制

    #(PERIOD/2.0) i_L2cache_drive = 1'b1;
    #(PERIOD/2.0) i_L2cache_drive = 1'b0;

    #run_time;//一次回填
    #run_time;//二次回填

    #(PERIOD/2.0)		i_freeNext_retire_load		=		1'b1;
    #(PERIOD/2.0)       i_freeNext_retire_load      =       1'b0;
    #(PERIOD);
    //case1 结束

//case2  
    count = count +1'b1;
    //读页表缺失，访问L2   

    i_ptw_ptePA_34 = 34'h256789_efc;

    #(PERIOD/2.0) i_ptw_drive = 1'b1;
    #(PERIOD/2.0) i_ptw_drive = 1'b0;

    #run_time;

	#(PERIOD/2.0)	i_freeNext_L2cache_miss	 =  1'b1;
    #(PERIOD/2.0)   i_freeNext_L2cache_miss   =  1'b0;
    #(PERIOD);
    
    //L2回填    结果：读页表的回填，二次回填后给出 o_driveNext_ptw o_pte_32

    i_L2cache_refill_32B = 256'h1c7e7580_0d3abd0c_c0a08d74__0dc16ff0_c1d55647_421fdea6_47b6810a_637f1a83; //64位16进制

    #(PERIOD/2.0) i_L2cache_drive = 1'b1;
    #(PERIOD/2.0) i_L2cache_drive = 1'b0;

    #run_time;//一次回填
    #run_time;//二次回填

    #(PERIOD/2.0)		i_freeNext_ptw		=		1'b1;
    #(PERIOD/2.0)       i_freeNext_ptw      =       1'b0;
    #(PERIOD);
    
    //case3 读命中
    count = count +1'b1;

    i_lsu_PA_34 = 34'h298756_abc;
    i_lsu_load_or_store = 1;   //load
    i_lsu_storeIndex_6       = 6'b101000;

    #(PERIOD/2.0) i_lsu_drive = 1'b1;
    #(PERIOD/2.0) i_lsu_drive = 1'b0;

    #run_time;

	#(PERIOD/2.0)		i_freeNext_retire_load =  1'b1;
    #(PERIOD/2.0)       i_freeNext_retire_load =  1'b0;
    #(PERIOD);
    
    //case4 读页表命中
    count = count +1'b1;
    i_ptw_ptePA_34 = 34'h256789_efc;

    #(PERIOD/2.0) i_ptw_drive = 1'b1;
    #(PERIOD/2.0) i_ptw_drive = 1'b0;

    #run_time;

	#(PERIOD/2.0)	i_freeNext_ptw	 =  1'b1;
    #(PERIOD/2.0)   i_freeNext_ptw   =  1'b0;
    #(PERIOD);

    $stop;
end

// wait(o_driveNext == 1'b1);
// 		#(PERIOD/2.0)		i_freeNext		=		1'b1;
// 		#(PERIOD/2.0)		i_freeNext		=		1'b0;

endmodule
