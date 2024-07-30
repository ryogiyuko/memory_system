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
    //lsu
    input i_lsu_drive0_cache, i_lsu_drive1_cache, i_lsu_drive2_cache, i_lsu_drive3_cache,
    output o_lsu_free0_cache, o_lsu_free1_cache, o_lsu_free2_cache, o_lsu_free3_cache,

    input [33:0] i_lsu_PA0_34, i_lsu_PA1_34, i_lsu_PA2_34,  i_lsu_PA3_34,
    input [4:0] i_lsu_rd0_5, i_lsu_rd1_5, i_lsu_rd2_5,  i_lsu_rd3_5, 
    output [4:0] o_lsu_rd0_5, o_lsu_rd1_5, o_lsu_rd2_5,  o_lsu_rd3_5,
    input [5:0] i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6,
    output [5:0] o_lsu_index0_6, o_lsu_index1_6, o_lsu_index2_6, o_lsu_index3_6,  
    input i_lsu_flag0, i_lsu_flag1, i_lsu_flag2, i_lsu_flag3,
    output o_lsu_flag0, o_lsu_flag1, o_lsu_flag2, o_lsu_flag3,

    //mmu


    //ifu

    //retire
    input  i_freeNext0_retire_load,i_freeNext1_retire_load,i_freeNext2_retire_load,i_freeNext3_retire_load,
    output o_driveNext0_retire_load,o_driveNext1_retire_load,o_driveNext2_retire_load,o_driveNext3_retire_load,

    output [31:0] o_loadData0_to_retire_32,o_loadData1_to_retire_32,o_loadData2_to_retire_32,o_loadData3_to_retire_32

    );

Icache u_Icache_bank0(
    .rst                          (rst                          ),

    .i_Itlb_drive                 (                 ),
    .o_Itlb_free                  (                  ),
    .i_Itlb_PA_34                 (                 ),


    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               (               ),
    .o_driveNext_ifu              (             ),
    // .o_hit_data_to_ifu_32B        (        ),.o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    // .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
);

Icache u_Icache_bank1(
    .rst                          (rst                          ),

    .i_Itlb_drive                 (                 ),
    .o_Itlb_free                  (                  ),
    .i_Itlb_PA_34                 (                 ),


    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               (               ),
    .o_driveNext_ifu              (             ),
    // .o_hit_data_to_ifu_32B        (        ),.o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    // .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
);

Icache u_Icache_bank2(
    .rst                          (rst                          ),

    .i_Itlb_drive                 (                 ),
    .o_Itlb_free                  (                  ),
    .i_Itlb_PA_34                 (                 ),


    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               (               ),
    .o_driveNext_ifu              (             ),
    // .o_hit_data_to_ifu_32B        (        ),.o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    // .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
);

Icache u_Icache_bank3(
    .rst                          (rst                          ),

    .i_Itlb_drive                 (                 ),
    .o_Itlb_free                  (                  ),
    .i_Itlb_PA_34                 (                 ),


    .i_L2Cache_drive              (              ),.i_freeNext_L2Cache           (           ),
    .o_L2Cache_free               (               ),.o_driveNext_L2Cache          (          ), 
    .i_L2Cache_refillLine_32B     (     ),.o_miss_Addr_to_L2cache_34    (    ),
    
    .i_freeNext_ifu               (               ),
    .o_driveNext_ifu              (             ),
    // .o_hit_data_to_ifu_32B        (        ),.o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
    // .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
);
    
Dcache u_Dcache_bank0(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive              ),.i_freeNext_lsu           (i_freeNext_lsu           ),
    .o_lsu_free               (o_lsu_free               ),.o_driveNext_lsu          (o_driveNext_lsu          ),
    .i_lsu_PA_34              (i_lsu_PA_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData_32       ),
    .i_lsu_storeIndex_6       (i_lsu_storeIndex_6       ),
    .i_lsu_load_or_store      (i_lsu_load_or_store      ),
    .o_storeIndex_to_lsu_6    (o_storeIndex_to_lsu_6    ),
    
    .i_freeNext_retire_store  (i_freeNext_retire_store  ),.i_freeNext_retire_load   (i_freeNext_retire_load   ),
    .o_driveNext_retire_store (o_driveNext_retire_store ),.o_driveNext_retire_load  (o_driveNext_retire_load  ),
    .o_loadData_to_retire_32  (o_loadData_to_retire_32  ),
    
    .i_ptw_drive              (i_ptw_drive              ),.i_freeNext_ptw           (i_freeNext_ptw           ),
    .o_ptw_free               (o_ptw_free               ),.o_driveNext_ptw          (o_driveNext_ptw          ),
    .i_ptw_ptePA_34           (i_ptw_ptePA_34           ),
    .o_pte_32                 (o_pte_32                 ),
    
    .i_L2cache_drive          (i_L2cache_drive          ),.i_freeNext_L2cache       (i_freeNext_L2cache       ),
    .o_L2cache_free           (o_L2cache_free           ),.o_driveNext_L2cache      (o_driveNext_L2cache      ),
    .i_L2cache_refill_32B     (i_L2cache_refill_32B     ),
    .o_miss_addr_34           (o_miss_addr_34           ),
    .o_writeBack_32B          (o_writeBack_32B          ),
    .o_miss_or_writeBack      (o_miss_or_writeBack      ),
    
    // .o_r_case_number_6        (o_r_case_number_6        ),
    // .o_dcache_offset_12       (o_dcache_offset_12       ),
    // .o_plru_evictWay_3        (o_plru_evictWay_3        ),
    // .o_dcache_PA_34           (o_dcache_PA_34           )
);

Dcache u_Dcache_bank1(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive              ),.i_freeNext_lsu           (i_freeNext_lsu           ),
    .o_lsu_free               (o_lsu_free               ),.o_driveNext_lsu          (o_driveNext_lsu          ),
    .i_lsu_PA_34              (i_lsu_PA_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData_32       ),
    .i_lsu_storeIndex_6       (i_lsu_storeIndex_6       ),
    .i_lsu_load_or_store      (i_lsu_load_or_store      ),
    .o_storeIndex_to_lsu_6    (o_storeIndex_to_lsu_6    ),
    
    .i_freeNext_retire_store  (i_freeNext_retire_store  ),.i_freeNext_retire_load   (i_freeNext_retire_load   ),
    .o_driveNext_retire_store (o_driveNext_retire_store ),.o_driveNext_retire_load  (o_driveNext_retire_load  ),
    .o_loadData_to_retire_32  (o_loadData_to_retire_32  ),
    
    .i_ptw_drive              (i_ptw_drive              ),.i_freeNext_ptw           (i_freeNext_ptw           ),
    .o_ptw_free               (o_ptw_free               ),.o_driveNext_ptw          (o_driveNext_ptw          ),
    .i_ptw_ptePA_34           (i_ptw_ptePA_34           ),
    .o_pte_32                 (o_pte_32                 ),
    
    .i_L2cache_drive          (i_L2cache_drive          ),.i_freeNext_L2cache       (i_freeNext_L2cache       ),
    .o_L2cache_free           (o_L2cache_free           ),.o_driveNext_L2cache      (o_driveNext_L2cache      ),
    .i_L2cache_refill_32B     (i_L2cache_refill_32B     ),
    .o_miss_addr_34           (o_miss_addr_34           ),
    .o_writeBack_32B          (o_writeBack_32B          ),
    .o_miss_or_writeBack      (o_miss_or_writeBack      ),
    
    // .o_r_case_number_6        (o_r_case_number_6        ),
    // .o_dcache_offset_12       (o_dcache_offset_12       ),
    // .o_plru_evictWay_3        (o_plru_evictWay_3        ),
    // .o_dcache_PA_34           (o_dcache_PA_34           )
);

Dcache u_Dcache_bank2(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive              ),.i_freeNext_lsu           (i_freeNext_lsu           ),
    .o_lsu_free               (o_lsu_free               ),.o_driveNext_lsu          (o_driveNext_lsu          ),
    .i_lsu_PA_34              (i_lsu_PA_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData_32       ),
    .i_lsu_storeIndex_6       (i_lsu_storeIndex_6       ),
    .i_lsu_load_or_store      (i_lsu_load_or_store      ),
    .o_storeIndex_to_lsu_6    (o_storeIndex_to_lsu_6    ),
    
    .i_freeNext_retire_store  (i_freeNext_retire_store  ),.i_freeNext_retire_load   (i_freeNext_retire_load   ),
    .o_driveNext_retire_store (o_driveNext_retire_store ),.o_driveNext_retire_load  (o_driveNext_retire_load  ),
    .o_loadData_to_retire_32  (o_loadData_to_retire_32  ),
    
    .i_ptw_drive              (i_ptw_drive              ),.i_freeNext_ptw           (i_freeNext_ptw           ),
    .o_ptw_free               (o_ptw_free               ),.o_driveNext_ptw          (o_driveNext_ptw          ),
    .i_ptw_ptePA_34           (i_ptw_ptePA_34           ),
    .o_pte_32                 (o_pte_32                 ),
    
    .i_L2cache_drive          (i_L2cache_drive          ),.i_freeNext_L2cache       (i_freeNext_L2cache       ),
    .o_L2cache_free           (o_L2cache_free           ),.o_driveNext_L2cache      (o_driveNext_L2cache      ),
    .i_L2cache_refill_32B     (i_L2cache_refill_32B     ),
    .o_miss_addr_34           (o_miss_addr_34           ),
    .o_writeBack_32B          (o_writeBack_32B          ),
    .o_miss_or_writeBack      (o_miss_or_writeBack      ),
    
    // .o_r_case_number_6        (o_r_case_number_6        ),
    // .o_dcache_offset_12       (o_dcache_offset_12       ),
    // .o_plru_evictWay_3        (o_plru_evictWay_3        ),
    // .o_dcache_PA_34           (o_dcache_PA_34           )
);


Dcache u_Dcache_bank3(
    .rst                      (rst                      ),
    .i_lsu_drive              (i_lsu_drive              ),.i_freeNext_lsu           (i_freeNext_lsu           ),
    .o_lsu_free               (o_lsu_free               ),.o_driveNext_lsu          (o_driveNext_lsu          ),
    .i_lsu_PA_34              (i_lsu_PA_34              ),
    .i_lsu_storeData_32       (i_lsu_storeData_32       ),
    .i_lsu_storeIndex_6       (i_lsu_storeIndex_6       ),
    .i_lsu_load_or_store      (i_lsu_load_or_store      ),
    .o_storeIndex_to_lsu_6    (o_storeIndex_to_lsu_6    ),
    
    .i_freeNext_retire_store  (i_freeNext_retire_store  ),.i_freeNext_retire_load   (i_freeNext_retire_load   ),
    .o_driveNext_retire_store (o_driveNext_retire_store ),.o_driveNext_retire_load  (o_driveNext_retire_load  ),
    .o_loadData_to_retire_32  (o_loadData_to_retire_32  ),
    
    .i_ptw_drive              (i_ptw_drive              ),.i_freeNext_ptw           (i_freeNext_ptw           ),
    .o_ptw_free               (o_ptw_free               ),.o_driveNext_ptw          (o_driveNext_ptw          ),
    .i_ptw_ptePA_34           (i_ptw_ptePA_34           ),
    .o_pte_32                 (o_pte_32                 ),
    
    .i_L2cache_drive          (i_L2cache_drive          ),.i_freeNext_L2cache       (i_freeNext_L2cache       ),
    .o_L2cache_free           (o_L2cache_free           ),.o_driveNext_L2cache      (o_driveNext_L2cache      ),
    .i_L2cache_refill_32B     (i_L2cache_refill_32B     ),
    .o_miss_addr_34           (o_miss_addr_34           ),
    .o_writeBack_32B          (o_writeBack_32B          ),
    .o_miss_or_writeBack      (o_miss_or_writeBack      ),
    
    // .o_r_case_number_6        (o_r_case_number_6        ),
    // .o_dcache_offset_12       (o_dcache_offset_12       ),
    // .o_plru_evictWay_3        (o_plru_evictWay_3        ),
    // .o_dcache_PA_34           (o_dcache_PA_34           )
);

endmodule
