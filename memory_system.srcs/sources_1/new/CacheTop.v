`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 21:24:02
// Design Name: 
// Module Name: CacheTop
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


module CacheTop(
    input rst,
    
    //lsu
    input i_lsu_drive0_cache, i_lsu_drive1_cache, i_lsu_drive2_cache, i_lsu_drive3_cache,
    output o_lsu_free0_cache, o_lsu_free1_cache, o_lsu_free2_cache, o_lsu_free3_cache,
    input i_freeNext0_lsu, i_freeNext1_lsu, i_freeNext2_lsu, i_freeNext3_lsu,
    output o_driveNext0_lsu, o_driveNext1_lsu, o_driveNext2_lsu, o_driveNext3_lsu,

    input [33:0] i_lsu_PA0_34, i_lsu_PA1_34, i_lsu_PA2_34,  i_lsu_PA3_34,
    input [31:0] i_lsu_storeData0_32, i_lsu_storeData1_32, i_lsu_storeData2_32, i_lsu_storeData3_32,

    input [4:0] i_lsu_rd0_5, i_lsu_rd1_5, i_lsu_rd2_5,  i_lsu_rd3_5, 
    input [5:0] i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6,
    input [1:0] i_lsu_flag0_2, i_lsu_flag1_2, i_lsu_flag2_2, i_lsu_flag3_2,  //[1] load_or_store [0] flag
    input i_lsu_bypass0, i_lsu_bypass1, i_lsu_bypass2, i_lsu_bypass3,

    output [4:0] o_lsu_rd0_5, o_lsu_rd1_5, o_lsu_rd2_5,  o_lsu_rd3_5,
    output [5:0] o_lsu_index0_6, o_lsu_index1_6, o_lsu_index2_6, o_lsu_index3_6,  
    output [1:0] o_lsu_flag0_2, o_lsu_flag1_2, o_lsu_flag2_2, o_lsu_flag3_2, 
    output o_lsu_bypass0, o_lsu_bypass1, o_lsu_bypass2, o_lsu_bypass3,
    
    //mmu
    input i_ptw0_drive, i_ptw1_drive, i_ptw2_drive, i_ptw3_drive, i_freeNext_ptw,
    output o_ptw0_free, o_ptw1_free, o_ptw2_free, o_ptw3_free, o_driveNext_ptw,

    input [33:0] i_ptw_ptePA_34,
    output [31:0] o_pte_32,

    //ifu
    input i_ifu_drive0, i_ifu_drive1, i_ifu_drive2, i_ifu_drive3,
    output o_ifu_free0, o_ifu_free1, o_ifu_free2, o_ifu_free3,
    input  i_freeNext0_ifu, i_freeNext1_ifu, i_freeNext2_ifu, i_freeNext3_ifu,
    output o_driveNext0_ifu, o_driveNext1_ifu, o_driveNext2_ifu, o_driveNext3_ifu,
    
    input [33:0] i_ifu_PA0_34, i_ifu_PA1_34, i_ifu_PA2_34, i_ifu_PA3_34,
    output [255:0] o_instr0_to_ifu_256, o_instr1_to_ifu_256, o_instr2_to_ifu_256, o_instr3_to_ifu_256,


    //retire
    input  i_freeNext_retire_load,
    output o_driveNext_retire_load,

    output [37:0] o_loadData0_to_retire_38 //i_lsu_index_6 , load_data_32

    //DDR


    );

//mutex to retire
    wire w_freeNext0_retire_load, w_freeNext1_retire_load, w_freeNext2_retire_load, w_freeNext3_retire_load;
    wire w_driveNext0_retire_load, w_driveNext1_retire_load, w_driveNext2_retire_load, w_driveNext3_retire_load;
    wire [37:0] w_loadData0_to_retire_38, w_loadData1_to_retire_38, w_loadData2_to_retire_38, w_loadData3_to_retire_38 ;//i_lsu_index_6 , load_data_32

    cMutexMerge4_38b mutex_to_retire(
        .i_drive0    (  w_driveNext0_retire_load  ),
        .i_drive1    (  w_driveNext1_retire_load  ),
        .i_drive2    (  w_driveNext2_retire_load  ),
        .i_drive3    (  w_driveNext3_retire_load  ),
        .i_data0     (  w_loadData0_to_retire_38     ),
        .i_data1     (  w_loadData1_to_retire_38     ),
        .i_data2     (  w_loadData2_to_retire_38     ),
        .i_data3     (  w_loadData3_to_retire_38     ),

        .i_freeNext  ( i_freeNext_retire_load  ),
        .rst         (rst         ),

        .o_free0     (  w_freeNext0_retire_load     ),
        .o_free1     (  w_freeNext1_retire_load     ),
        .o_free2     (  w_freeNext2_retire_load     ),
        .o_free3     (  w_freeNext3_retire_load     ),
        .o_driveNext (  o_driveNext_retire_load ),
        .o_data      (  o_loadData0_to_retire_38      )
    );
    

//mutex to ptw
    wire w_freeNext0_ptw, w_freeNext1_ptw, w_freeNext2_ptw, w_freeNext3_ptw;
    wire w_driveNext0_ptw, w_driveNext1_ptw, w_driveNext2_ptw, w_driveNext3_ptw ;
    wire [31:0] w_pte0_32, w_pte1_32, w_pte2_32, w_pte3_32;

    cMutexMerge4_38b mutex_to_ptw(
        .i_drive0    (  w_driveNext0_ptw  ),
        .i_drive1    (  w_driveNext1_ptw  ),
        .i_drive2    (  w_driveNext2_ptw  ),
        .i_drive3    (  w_driveNext3_ptw  ),
        .i_data0     (  { 6'b0, w_pte0_32 }     ),
        .i_data1     (  { 6'b0, w_pte0_32 }     ),
        .i_data2     (  { 6'b0, w_pte0_32 }     ),
        .i_data3     (  { 6'b0, w_pte0_32 }     ),

        .i_freeNext  ( i_freeNext_ptw  ),
        .rst         (rst         ),

        .o_free0     (  w_freeNext0_ptw     ),
        .o_free1     (  w_freeNext1_ptw     ),
        .o_free2     (  w_freeNext2_ptw     ),
        .o_free3     (  w_freeNext3_ptw     ),
        .o_driveNext ( o_driveNext_ptw  ),
        .o_data      (   { 6'b0,o_pte_32 }     )
    );

//L1

//L2


//
    assign { o_lsu_rd0_5, o_lsu_rd1_5, o_lsu_rd2_5,  o_lsu_rd3_5} = { i_lsu_rd0_5, i_lsu_rd1_5, i_lsu_rd2_5,  i_lsu_rd3_5 } ;
    assign { o_lsu_index0_6, o_lsu_index1_6, o_lsu_index2_6, o_lsu_index3_6 } = { i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6 };
    assign { o_lsu_flag0_2, o_lsu_flag1_2, o_lsu_flag2_2, o_lsu_flag3_2 } = { i_lsu_flag0_2, i_lsu_flag1_2, i_lsu_flag2_2, i_lsu_flag3_2 };
    assign { o_lsu_bypass0, o_lsu_bypass1, o_lsu_bypass2, o_lsu_bypass3 } = { i_lsu_bypass0, i_lsu_bypass1, i_lsu_bypass2, i_lsu_bypass3 };

    assign { w_loadData0_to_retire_38[37:32], w_loadData1_to_retire_38[37:32], w_loadData2_to_retire_38[37:32], w_loadData3_to_retire_38[37:32] } = { i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6 };

//L1
//Icache
    Icache u_Icache_bank0(
    .rst                          (rst                          ),

    .i_Itlb_drive                 ( i_ifu_drive0                ),
    .o_Itlb_free                  ( o_ifu_free0                 ),
    .i_Itlb_PA_34                 (  i_ifu_PA0_34               ),

    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               ( i_freeNext0_ifu              ),
    .o_driveNext_ifu              ( o_driveNext0_ifu            ),
    .o_hit_data_to_ifu_32B        (  o_instr0_to_ifu_256      ),

    .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );


    Icache u_Icache_bank1(
    .rst                          (rst                          ),

    .i_Itlb_drive                 ( i_ifu_drive1                ),
    .o_Itlb_free                  ( o_ifu_free1                 ),
    .i_Itlb_PA_34                 (  i_ifu_PA1_34               ),

    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               ( i_freeNext1_ifu              ),
    .o_driveNext_ifu              ( o_driveNext1_ifu            ),
    .o_hit_data_to_ifu_32B        (  o_instr1_to_ifu_256      ),
    
    .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );


    Icache u_Icache_bank2(
    .rst                          (rst                          ),

    .i_Itlb_drive                 ( i_ifu_drive2                ),
    .o_Itlb_free                  ( o_ifu_free2                 ),
    .i_Itlb_PA_34                 (  i_ifu_PA2_34               ),

    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               ( i_freeNext2_ifu              ),
    .o_driveNext_ifu              ( o_driveNext2_ifu            ),
    .o_hit_data_to_ifu_32B        (  o_instr2_to_ifu_256      ),
    
    .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );


    Icache u_Icache_bank3(
    .rst                          (rst                          ),

    .i_Itlb_drive                 ( i_ifu_drive3                ),
    .o_Itlb_free                  ( o_ifu_free3                 ),
    .i_Itlb_PA_34                 (  i_ifu_PA3_34               ),

    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               ( i_freeNext3_ifu              ),
    .o_driveNext_ifu              ( o_driveNext3_ifu            ),
    .o_hit_data_to_ifu_32B        (  o_instr3_to_ifu_256      ),
    
    .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );
    
    
//dcache
    Dcache u_Dcache_bank0(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive0_cache              ),.i_freeNext_lsu           (i_freeNext0_lsu           ),
    .o_lsu_free               (o_lsu_free0_cache               ),.o_driveNext_lsu          (o_driveNext0_lsu          ),//store成功时给
    
    .i_lsu_PA_34              (i_lsu_PA0_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData0_32       ),
    .i_lsu_storeIndex_6       (6'b0       ),
    .i_lsu_load_or_store      (i_lsu_flag0_2[1]      ),
    .o_storeIndex_to_lsu_6    (    ),
    
    .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext0_retire_load   ),
    .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext0_retire_load  ),
    .o_loadData_to_retire_32  ( w_loadData0_to_retire_38[31:0]  ),
    
    .i_ptw_drive              (  i_ptw0_drive            ),.i_freeNext_ptw          (  w_freeNext0_ptw        ),
    .o_ptw_free               (  o_ptw0_free             ),.o_driveNext_ptw        (  w_driveNext0_ptw        ),
    .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
    .o_pte_32                 (  w_pte0_32               ),
    
    .i_L2cache_drive               (               ),.i_freeNext_L2cache_writeBack  (  ),.i_freeNext_L2cache_miss       (       ),
    .o_L2cache_free                (                ),.o_driveNext_L2cache_writeBack (               ),.o_driveNext_L2cache_miss      (      ),
    
    .i_L2cache_refill_32B          (          ),
    .o_miss_addr_34                (                ),
    .o_writeBack_addr_34           (           ),
    .o_writeBack_32B               (               ),
    .o_miss_or_writeBack           (           ),
    
    .o_r_case_number_6             (             ),
    .o_dcache_offset_12            (            ),
    .o_plru_evictWay_3             (             ),
    .o_r_hit_way_3                 (                 ),
    .o_dcache_PA_34                (                ),
    .o_r_writeBack_addr_34         (         ),
    .o_r_hit                       (                       ),
    .o_r_dirty                     (                     )
    );

    Dcache u_Dcache_bank1(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive1_cache              ),.i_freeNext_lsu           (i_freeNext1_lsu           ),
    .o_lsu_free               (o_lsu_free1_cache               ),.o_driveNext_lsu          (o_driveNext1_lsu          ),//store成功时给
    
    .i_lsu_PA_34              (i_lsu_PA1_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData1_32       ),
    .i_lsu_storeIndex_6       (6'b0       ),
    .i_lsu_load_or_store      (i_lsu_flag1_2[1]      ),
    .o_storeIndex_to_lsu_6    (    ),
    
    .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext1_retire_load   ),
    .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext1_retire_load  ),
    .o_loadData_to_retire_32  ( w_loadData1_to_retire_38[31:0]  ),
    
    .i_ptw_drive              (  i_ptw1_drive            ),.i_freeNext_ptw          (  w_freeNext1_ptw        ),
    .o_ptw_free               (  o_ptw1_free             ),.o_driveNext_ptw        (  w_driveNext1_ptw        ),
    .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
    .o_pte_32                 (  w_pte1_32               ),
    
    .i_L2cache_drive               (               ),.i_freeNext_L2cache_writeBack  (  ),.i_freeNext_L2cache_miss       (       ),
    .o_L2cache_free                (                ),.o_driveNext_L2cache_writeBack (               ),.o_driveNext_L2cache_miss      (      ),
    
    .i_L2cache_refill_32B          (          ),
    .o_miss_addr_34                (                ),
    .o_writeBack_addr_34           (           ),
    .o_writeBack_32B               (               ),
    .o_miss_or_writeBack           (           ),
    
    .o_r_case_number_6             (             ),
    .o_dcache_offset_12            (            ),
    .o_plru_evictWay_3             (             ),
    .o_r_hit_way_3                 (                 ),
    .o_dcache_PA_34                (                ),
    .o_r_writeBack_addr_34         (         ),
    .o_r_hit                       (                       ),
    .o_r_dirty                     (                     )
    );

    Dcache u_Dcache_bank2(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive2_cache              ),.i_freeNext_lsu           (i_freeNext2_lsu           ),
    .o_lsu_free               (o_lsu_free2_cache               ),.o_driveNext_lsu          (o_driveNext2_lsu          ),//store成功时给
    
    .i_lsu_PA_34              (i_lsu_PA2_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData2_32       ),
    .i_lsu_storeIndex_6       (6'b0       ),
    .i_lsu_load_or_store      (i_lsu_flag2_2[1]      ),
    .o_storeIndex_to_lsu_6    (    ),
    
    .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext2_retire_load   ),
    .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext2_retire_load  ),
    .o_loadData_to_retire_32  ( w_loadData2_to_retire_38[31:0]  ),
    
    .i_ptw_drive              (  i_ptw2_drive            ),.i_freeNext_ptw          (  w_freeNext2_ptw        ),
    .o_ptw_free               (  o_ptw2_free             ),.o_driveNext_ptw        (  w_driveNext2_ptw        ),
    .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
    .o_pte_32                 (  w_pte2_32               ),
    
    .i_L2cache_drive               (               ),.i_freeNext_L2cache_writeBack  (  ),.i_freeNext_L2cache_miss       (       ),
    .o_L2cache_free                (                ),.o_driveNext_L2cache_writeBack (               ),.o_driveNext_L2cache_miss      (      ),
    
    .i_L2cache_refill_32B          (          ),
    .o_miss_addr_34                (                ),
    .o_writeBack_addr_34           (           ),
    .o_writeBack_32B               (               ),
    .o_miss_or_writeBack           (           ),
    
    .o_r_case_number_6             (             ),
    .o_dcache_offset_12            (            ),
    .o_plru_evictWay_3             (             ),
    .o_r_hit_way_3                 (                 ),
    .o_dcache_PA_34                (                ),
    .o_r_writeBack_addr_34         (         ),
    .o_r_hit                       (                       ),
    .o_r_dirty                     (                     )
    );


    Dcache u_Dcache_bank3(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive3_cache              ),.i_freeNext_lsu           (i_freeNext3_lsu           ),
    .o_lsu_free               (o_lsu_free3_cache               ),.o_driveNext_lsu          (o_driveNext3_lsu          ),//store成功时给
    
    .i_lsu_PA_34              (i_lsu_PA3_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData3_32       ),
    .i_lsu_storeIndex_6       (6'b0       ),
    .i_lsu_load_or_store      (i_lsu_flag2_2[1]      ),
    .o_storeIndex_to_lsu_6    (    ),
    
    .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext3_retire_load   ),
    .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext3_retire_load  ),
    .o_loadData_to_retire_32  ( w_loadData3_to_retire_38[31:0]  ),
    
    .i_ptw_drive              (  i_ptw3_drive            ),.i_freeNext_ptw          (  w_freeNext3_ptw        ),
    .o_ptw_free               (  o_ptw3_free             ),.o_driveNext_ptw        (  w_driveNext3_ptw        ),
    .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
    .o_pte_32                 (  w_pte3_32               ),
    
    .i_L2cache_drive               (               ),.i_freeNext_L2cache_writeBack  (  ),.i_freeNext_L2cache_miss       (       ),
    .o_L2cache_free                (                ),.o_driveNext_L2cache_writeBack (               ),.o_driveNext_L2cache_miss      (      ),
    
    .i_L2cache_refill_32B          (          ),
    .o_miss_addr_34                (                ),
    .o_writeBack_addr_34           (           ),
    .o_writeBack_32B               (               ),
    .o_miss_or_writeBack           (           ),
    
    .o_r_case_number_6             (             ),
    .o_dcache_offset_12            (            ),
    .o_plru_evictWay_3             (             ),
    .o_r_hit_way_3                 (                 ),
    .o_dcache_PA_34                (                ),
    .o_r_writeBack_addr_34         (         ),
    .o_r_hit                       (                       ),
    .o_r_dirty                     (                     )
    );

//L2


endmodule
