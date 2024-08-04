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
    input [2:0] i_lsu_flag0_3, i_lsu_flag1_3, i_lsu_flag2_3, i_lsu_flag3_3,  //[2] load_or_store [1] flag(多次还是单次) [0] 第几次
    input i_lsu_bypass0, i_lsu_bypass1, i_lsu_bypass2, i_lsu_bypass3,

    output [4:0] o_lsu_rd0_5, o_lsu_rd1_5, o_lsu_rd2_5,  o_lsu_rd3_5,
    output [5:0] o_lsu_index0_6, o_lsu_index1_6, o_lsu_index2_6, o_lsu_index3_6,  
    output [2:0] o_lsu_flag0_3, o_lsu_flag1_3, o_lsu_flag2_3, o_lsu_flag3_3,
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

    output [37:0] o_loadData0_to_retire_38, //i_lsu_index_6 , load_data_32

    //DDR
    input  i_read_freeNext_DDR, i_DDR_drive_cache, i_write_freeNext_DDR,
    output o_read_driveNext_DDR, o_DDR_free_cache,  o_write_driveNext_DDR,

    input  [255:0] i_DDR_refill_data_256, 
    output reg [33:0] o_read_addr_to_DDR_34, o_write_addr_to_DDR_34,
    output reg [255:0] o_write_data_to_DDR_256

    );

//mutex to retire
    wire w_freeNext0_retire_load, w_freeNext1_retire_load, w_freeNext2_retire_load, w_freeNext3_retire_load;
    wire w_driveNext0_retire_load, w_driveNext1_retire_load, w_driveNext2_retire_load, w_driveNext3_retire_load;
    wire [37:0] w_loadData0_to_retire_38, w_loadData1_to_retire_38, w_loadData2_to_retire_38, w_loadData3_to_retire_38 ;//i_lsu_index_6 , load_data_32

    (*dont_touch = "true"*)cMutexMerge4_38b mutex_to_retire(
        .i_drive0    (  w_driveNext0_retire_load  ),
        .i_drive1    (  w_driveNext1_retire_load  ),
        .i_drive2    (  w_driveNext2_retire_load  ),
        .i_drive3    (  w_driveNext3_retire_load  ),
        .i_data0     (  w_loadData0_to_retire_38     ),
        .i_data1     (  w_loadData1_to_retire_38     ),
        .i_data2     (  w_loadData2_to_retire_38     ),
        .i_data3     (  w_loadData3_to_retire_38     ),

        .i_freeNext  ( i_freeNext_retire_load  ),
        .rst         ( rst         ),

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

    (*dont_touch = "true"*)cMutexMerge4_38b mutex_to_ptw(
        .i_drive0    (  w_driveNext0_ptw  ),
        .i_drive1    (  w_driveNext1_ptw  ),
        .i_drive2    (  w_driveNext2_ptw  ),
        .i_drive3    (  w_driveNext3_ptw  ),
        .i_data0     (  { 6'b0, w_pte0_32 }     ),
        .i_data1     (  { 6'b0, w_pte0_32 }     ),
        .i_data2     (  { 6'b0, w_pte0_32 }     ),
        .i_data3     (  { 6'b0, w_pte0_32 }     ),

        .i_freeNext  ( i_freeNext_ptw  ),
        .rst         ( rst         ),

        .o_free0     (  w_freeNext0_ptw     ),
        .o_free1     (  w_freeNext1_ptw     ),
        .o_free2     (  w_freeNext2_ptw     ),
        .o_free3     (  w_freeNext3_ptw     ),
        .o_driveNext ( o_driveNext_ptw  ),
        .o_data      (   { 6'b0,o_pte_32 }     )
    );

//L1 to L2
//PA[6:5] 00
    //I miss
    wire w_IcacheBank0_drive_selector, w_IcacheBank0_free_selector;
    wire w_IcacheBank0_selector_drive_L2Bank0,w_IcacheBank0_selector_free_L2Bank0;
    wire w_IcacheBank0_selector_drive_L2Bank1,w_IcacheBank0_selector_free_L2Bank1;
    wire [33:0] w_IcacheBank0_miss_Addr_34;
    //D miss
    wire w_DcacheBank0_miss_drive_selector, w_DcacheBank0_miss_free_selector;
    wire w_DcacheBank0_miss_selector_drive_L2Bank0, w_DcacheBank0_miss_selector_free_L2Bank0;
    wire w_DcacheBank0_miss_selector_drive_L2Bank1, w_DcacheBank0_miss_selector_free_L2Bank1;
    //D writeBack
    wire w_DcacheBank0_writeBack_drive_selector, w_DcacheBank0_writeBack_free_selector;
    wire w_DcacheBank0_writeBack_selector_drive_L2Bank0, w_DcacheBank0_writeBack_selector_free_L2Bank0;
    wire w_DcacheBank0_writeBack_selector_drive_L2Bank1, w_DcacheBank0_writeBack_selector_free_L2Bank1;

    wire [33:0] w_DcacheBank0_miss_Addr_34,w_DcacheBank0_writeBack_Addr_34;
    wire [255:0] w_DcacheBank0_writeBack_Data_256;
    
    //L2 Bank0 Bank1 to Icache
    wire w_L2Bank0_drive_IcacheBank0, w_L2Bank0_free_IcacheBank0;
    wire w_L2Bank1_drive_IcacheBank0, w_L2Bank1_free_IcacheBank0;
    wire w_mutex_drive_IcacheBank0, w_mutex_free_IcacheBank0;
    //L2 Bank0 Bank1 to Dcache
    wire w_L2Bank0_drive_DcacheBank0, w_L2Bank0_free_DcacheBank0;
    wire w_L2Bank1_drive_DcacheBank0, w_L2Bank1_free_DcacheBank0;
    wire w_mutex_drive_DcacheBank0, w_mutex_free_DcacheBank0;
    
    wire [255:0] w_L2Bank0_to_L1Cache_32B, w_L2Bank1_to_L1Cache_32B;
    wire [255:0] w_refill_to_ICacheBank0_32B, w_refill_to_DCacheBank0_32B;

    assign w_refill_to_ICacheBank0_32B = w_IcacheBank0_miss_Addr_34[7] ? w_L2Bank1_to_L1Cache_32B : w_L2Bank0_to_L1Cache_32B;
    assign w_refill_to_DCacheBank0_32B = w_DcacheBank0_miss_Addr_34[7] ? w_L2Bank1_to_L1Cache_32B : w_L2Bank0_to_L1Cache_32B;
//PA[6:5] 01
    //I miss
    wire w_IcacheBank1_drive_selector, w_IcacheBank1_free_selector;
    wire w_IcacheBank1_selector_drive_L2Bank2,w_IcacheBank1_selector_free_L2Bank2;
    wire w_IcacheBank1_selector_drive_L2Bank3,w_IcacheBank1_selector_free_L2Bank3;
    wire [33:0] w_IcacheBank1_miss_Addr_34;
    //D miss
    wire w_DcacheBank1_miss_drive_selector, w_DcacheBank1_miss_free_selector;
    wire w_DcacheBank1_miss_selector_drive_L2Bank2, w_DcacheBank1_miss_selector_free_L2Bank2;
    wire w_DcacheBank1_miss_selector_drive_L2Bank3, w_DcacheBank1_miss_selector_free_L2Bank3;
    //D writeBack
    wire w_DcacheBank1_writeBack_drive_selector, w_DcacheBank1_writeBack_free_selector;
    wire w_DcacheBank1_writeBack_selector_drive_L2Bank2, w_DcacheBank1_writeBack_selector_free_L2Bank2;
    wire w_DcacheBank1_writeBack_selector_drive_L2Bank3, w_DcacheBank1_writeBack_selector_free_L2Bank3;

    wire [33:0] w_DcacheBank1_miss_Addr_34,w_DcacheBank1_writeBack_Addr_34;
    wire [255:0] w_DcacheBank1_writeBack_Data_256;
    
    //L2 Bank2 Bank3 to Icache
    wire w_L2Bank2_drive_IcacheBank1, w_L2Bank2_free_IcacheBank1;
    wire w_L2Bank3_drive_IcacheBank1, w_L2Bank3_free_IcacheBank1;
    wire w_mutex_drive_IcacheBank1, w_mutex_free_IcacheBank1;
    //L2 Bank2 Bank3 to Dcache
    wire w_L2Bank2_drive_DcacheBank1, w_L2Bank2_free_DcacheBank1;
    wire w_L2Bank3_drive_DcacheBank1, w_L2Bank3_free_DcacheBank1;
    wire w_mutex_drive_DcacheBank1, w_mutex_free_DcacheBank1;
    
    wire [255:0] w_L2Bank2_to_L1Cache_32B, w_L2Bank3_to_L1Cache_32B;
    wire [255:0] w_refill_to_ICacheBank1_32B, w_refill_to_DCacheBank1_32B;

    assign w_refill_to_ICacheBank1_32B = w_IcacheBank1_miss_Addr_34[7] ? w_L2Bank3_to_L1Cache_32B : w_L2Bank2_to_L1Cache_32B;
    assign w_refill_to_DCacheBank1_32B = w_DcacheBank1_miss_Addr_34[7] ? w_L2Bank3_to_L1Cache_32B : w_L2Bank2_to_L1Cache_32B;
//PA[6:5] 10
    //I miss
    wire w_IcacheBank2_drive_selector, w_IcacheBank2_free_selector;
    wire w_IcacheBank2_selector_drive_L2Bank4,w_IcacheBank2_selector_free_L2Bank4;
    wire w_IcacheBank2_selector_drive_L2Bank5,w_IcacheBank2_selector_free_L2Bank5;
    wire [33:0] w_IcacheBank2_miss_Addr_34;
    //D miss
    wire w_DcacheBank2_miss_drive_selector, w_DcacheBank2_miss_free_selector;
    wire w_DcacheBank2_miss_selector_drive_L2Bank4, w_DcacheBank2_miss_selector_free_L2Bank4;
    wire w_DcacheBank2_miss_selector_drive_L2Bank5, w_DcacheBank2_miss_selector_free_L2Bank5;
    //D writeBack
    wire w_DcacheBank2_writeBack_drive_selector, w_DcacheBank2_writeBack_free_selector;
    wire w_DcacheBank2_writeBack_selector_drive_L2Bank4, w_DcacheBank2_writeBack_selector_free_L2Bank4;
    wire w_DcacheBank2_writeBack_selector_drive_L2Bank5, w_DcacheBank2_writeBack_selector_free_L2Bank5;

    wire [33:0] w_DcacheBank2_miss_Addr_34,w_DcacheBank2_writeBack_Addr_34;
    wire [255:0] w_DcacheBank2_writeBack_Data_256;
    
    //L2 Bank4 Bank5 to Icache
    wire w_L2Bank4_drive_IcacheBank2, w_L2Bank4_free_IcacheBank2;
    wire w_L2Bank5_drive_IcacheBank2, w_L2Bank5_free_IcacheBank2;
    wire w_mutex_drive_IcacheBank2, w_mutex_free_IcacheBank2;
    //L2 Bank4 Bank5 to Dcache
    wire w_L2Bank4_drive_DcacheBank2, w_L2Bank4_free_DcacheBank2;
    wire w_L2Bank5_drive_DcacheBank2, w_L2Bank5_free_DcacheBank2;
    wire w_mutex_drive_DcacheBank2, w_mutex_free_DcacheBank2;
    
    wire [255:0] w_L2Bank4_to_L1Cache_32B, w_L2Bank5_to_L1Cache_32B;
    wire [255:0] w_refill_to_ICacheBank2_32B, w_refill_to_DCacheBank2_32B;

    assign w_refill_to_ICacheBank2_32B = w_IcacheBank2_miss_Addr_34[7] ? w_L2Bank5_to_L1Cache_32B : w_L2Bank4_to_L1Cache_32B;
    assign w_refill_to_DCacheBank2_32B = w_DcacheBank2_miss_Addr_34[7] ? w_L2Bank5_to_L1Cache_32B : w_L2Bank4_to_L1Cache_32B;
//PA[6:5] 11
    //I miss
    wire w_IcacheBank3_drive_selector, w_IcacheBank3_free_selector;
    wire w_IcacheBank3_selector_drive_L2Bank6,w_IcacheBank3_selector_free_L2Bank6;
    wire w_IcacheBank3_selector_drive_L2Bank7,w_IcacheBank3_selector_free_L2Bank7;
    wire [33:0] w_IcacheBank3_miss_Addr_34;
    //D miss
    wire w_DcacheBank3_miss_drive_selector, w_DcacheBank3_miss_free_selector;
    wire w_DcacheBank3_miss_selector_drive_L2Bank6, w_DcacheBank3_miss_selector_free_L2Bank6;
    wire w_DcacheBank3_miss_selector_drive_L2Bank7, w_DcacheBank3_miss_selector_free_L2Bank7;
    //D writeBack
    wire w_DcacheBank3_writeBack_drive_selector, w_DcacheBank3_writeBack_free_selector;
    wire w_DcacheBank3_writeBack_selector_drive_L2Bank6, w_DcacheBank3_writeBack_selector_free_L2Bank6;
    wire w_DcacheBank3_writeBack_selector_drive_L2Bank7, w_DcacheBank3_writeBack_selector_free_L2Bank7;

    wire [33:0] w_DcacheBank3_miss_Addr_34,w_DcacheBank3_writeBack_Addr_34;
    wire [255:0] w_DcacheBank3_writeBack_Data_256;
    
    //L2 Bank6 Bank7 to Icache
    wire w_L2Bank6_drive_IcacheBank3, w_L2Bank6_free_IcacheBank3;
    wire w_L2Bank7_drive_IcacheBank3, w_L2Bank7_free_IcacheBank3;
    wire w_mutex_drive_IcacheBank3, w_mutex_free_IcacheBank3;
    //L2 Bank4 Bank5 to Dcache
    wire w_L2Bank6_drive_DcacheBank3, w_L2Bank6_free_DcacheBank3;
    wire w_L2Bank7_drive_DcacheBank3, w_L2Bank7_free_DcacheBank3;
    wire w_mutex_drive_DcacheBank3, w_mutex_free_DcacheBank3;
    
    wire [255:0] w_L2Bank6_to_L1Cache_32B, w_L2Bank7_to_L1Cache_32B;
    wire [255:0] w_refill_to_ICacheBank3_32B, w_refill_to_DCacheBank3_32B;

    assign w_refill_to_ICacheBank3_32B = w_IcacheBank3_miss_Addr_34[7] ? w_L2Bank7_to_L1Cache_32B : w_L2Bank6_to_L1Cache_32B;
    assign w_refill_to_DCacheBank3_32B = w_DcacheBank3_miss_Addr_34[7] ? w_L2Bank7_to_L1Cache_32B : w_L2Bank6_to_L1Cache_32B;


//L2 to DDR
    
    wire w_DDR_free_cache;
    assign o_DDR_free_cache = w_DDR_free_cache;
    //arbWrite
        //wire w_splitter0_drive_arbWrite, w_splitter0_free_arbWrite;
        //wire w_splitter1_drive_arbWrite, w_splitter1_free_arbWrite;
        //wire w_splitter2_drive_arbWrite, w_splitter2_free_arbWrite;
        //wire w_splitter3_drive_arbWrite, w_splitter3_free_arbWrite;
        //wire w_splitter4_drive_arbWrite, w_splitter4_free_arbWrite;
        //wire w_splitter5_drive_arbWrite, w_splitter5_free_arbWrite;
        //wire w_splitter6_drive_arbWrite, w_splitter6_free_arbWrite;
        //wire w_splitter7_drive_arbWrite, w_splitter7_free_arbWrite;
        //o_write_driveNext_DDR, w_DDR_free_cache
        wire [7:0] w_arbWrite_selBank_8;// 鐙?鐑?鐮? arbWrite 鐨勮緭鍑?
    
    //arbRead
        //wire w_mutex0_drive_arbRead, w_mutex0_free_arbRead;
        //wire w_mutex1_drive_arbRead, w_mutex1_free_arbRead;
        //wire w_mutex2_drive_arbRead, w_mutex2_free_arbRead;
        //wire w_mutex3_drive_arbRead, w_mutex3_free_arbRead;
        //wire w_mutex4_drive_arbRead, w_mutex4_free_arbRead;
        //wire w_mutex5_drive_arbRead, w_mutex5_free_arbRead;
        //wire w_mutex6_drive_arbRead, w_mutex6_free_arbRead;
        //wire w_mutex7_drive_arbRead, w_mutex7_free_arbRead;
        //o_read_driveNext_DDR, w_DDR_free_cache
        wire [7:0] w_arbRead_selBank_8;// 鐙?鐑?鐮? arbRead 鐨勮緭鍑?
    
    //SelectorRead
        //i_DDR_drive_cache, w_DDR_free_cache 
        wire w_selectorRead_drive_Bank0, w_selectorRead_free_Bank0;
        wire w_selectorRead_drive_Bank1, w_selectorRead_free_Bank1;
        wire w_selectorRead_drive_Bank2, w_selectorRead_free_Bank2;
        wire w_selectorRead_drive_Bank3, w_selectorRead_free_Bank3;
        wire w_selectorRead_drive_Bank4, w_selectorRead_free_Bank4;
        wire w_selectorRead_drive_Bank5, w_selectorRead_free_Bank5;
        wire w_selectorRead_drive_Bank6, w_selectorRead_free_Bank6;
        wire w_selectorRead_drive_Bank7, w_selectorRead_free_Bank7;

    //L2 0
        wire w_L2_writeBack_drive_splitter0, w_L2_writeBack_free_splitter0;
        wire w_splitter0_drive_arbWrite, w_splitter0_free_arbWrite;
        wire w_splitter0_drive_wait0, w_splitter0_free_wait0;
        wire w_wait0_drive_mutex0, w_wait0_free_mutex0;
        wire w_L2_miss_drive_mutex0, w_L2_miss_free_mutex0;
        wire w_mutex0_drive_arbRead, w_mutex0_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR0_34, w_writeBack_Addr_to_DDR0_34;
        wire [255:0] w_DDR_refillLine0_32B;   
        wire [255:0] w_writeBackLine_to_DDR0_32B;

    //L2 1
        wire w_L2_writeBack_drive_splitter1, w_L2_writeBack_free_splitter1;
        wire w_splitter1_drive_arbWrite, w_splitter1_free_arbWrite;
        wire w_splitter1_drive_wait1, w_splitter1_free_wait1;
        wire w_wait1_drive_mutex1, w_wait1_free_mutex1;
        wire w_L2_miss_drive_mutex1, w_L2_miss_free_mutex1;
        wire w_mutex1_drive_arbRead, w_mutex1_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR1_34, w_writeBack_Addr_to_DDR1_34;
        wire [255:0] w_DDR_refillLine1_32B;   
        wire [255:0] w_writeBackLine_to_DDR1_32B;

    //L2 2
        wire w_L2_writeBack_drive_splitter2, w_L2_writeBack_free_splitter2;
        wire w_splitter2_drive_arbWrite, w_splitter2_free_arbWrite;
        wire w_splitter2_drive_wait2, w_splitter2_free_wait2;
        wire w_wait2_drive_mutex2, w_wait2_free_mutex2;
        wire w_L2_miss_drive_mutex2, w_L2_miss_free_mutex2;
        wire w_mutex2_drive_arbRead, w_mutex2_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR2_34, w_writeBack_Addr_to_DDR2_34;
        wire [255:0] w_DDR_refillLine2_32B;   
        wire [255:0] w_writeBackLine_to_DDR2_32B;

    //L2 3
        wire w_L2_writeBack_drive_splitter3, w_L2_writeBack_free_splitter3;
        wire w_splitter3_drive_arbWrite, w_splitter3_free_arbWrite;
        wire w_splitter3_drive_wait3, w_splitter3_free_wait3;
        wire w_wait3_drive_mutex3, w_wait3_free_mutex3;
        wire w_L2_miss_drive_mutex3, w_L2_miss_free_mutex3;
        wire w_mutex3_drive_arbRead, w_mutex3_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR3_34, w_writeBack_Addr_to_DDR3_34;
        wire [255:0] w_DDR_refillLine3_32B;   
        wire [255:0] w_writeBackLine_to_DDR3_32B;

    //L2 4
        wire w_L2_writeBack_drive_splitter4, w_L2_writeBack_free_splitter4;
        wire w_splitter4_drive_arbWrite, w_splitter4_free_arbWrite;
        wire w_splitter4_drive_wait4, w_splitter4_free_wait4;
        wire w_wait4_drive_mutex4, w_wait4_free_mutex4;
        wire w_L2_miss_drive_mutex4, w_L2_miss_free_mutex4;
        wire w_mutex4_drive_arbRead, w_mutex4_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR4_34, w_writeBack_Addr_to_DDR4_34;
        wire [255:0] w_DDR_refillLine4_32B;   
        wire [255:0] w_writeBackLine_to_DDR4_32B;

    //L2 5
        wire w_L2_writeBack_drive_splitter5, w_L2_writeBack_free_splitter5;
        wire w_splitter5_drive_arbWrite, w_splitter5_free_arbWrite;
        wire w_splitter5_drive_wait5, w_splitter5_free_wait5;
        wire w_wait5_drive_mutex5, w_wait5_free_mutex5;
        wire w_L2_miss_drive_mutex5, w_L2_miss_free_mutex5;
        wire w_mutex5_drive_arbRead, w_mutex5_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR5_34, w_writeBack_Addr_to_DDR5_34;
        wire [255:0] w_DDR_refillLine5_32B;   
        wire [255:0] w_writeBackLine_to_DDR5_32B;

    //L2 6
        wire w_L2_writeBack_drive_splitter6, w_L2_writeBack_free_splitter6;
        wire w_splitter6_drive_arbWrite, w_splitter6_free_arbWrite;
        wire w_splitter6_drive_wait6, w_splitter6_free_wait6;
        wire w_wait6_drive_mutex6, w_wait6_free_mutex6;
        wire w_L2_miss_drive_mutex6, w_L2_miss_free_mutex6;
        wire w_mutex6_drive_arbRead, w_mutex6_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR6_34, w_writeBack_Addr_to_DDR6_34;
        wire [255:0] w_DDR_refillLine6_32B;   
        wire [255:0] w_writeBackLine_to_DDR6_32B;

    //L2 7
        wire w_L2_writeBack_drive_splitter7, w_L2_writeBack_free_splitter7;
        wire w_splitter7_drive_arbWrite, w_splitter7_free_arbWrite;
        wire w_splitter7_drive_wait7, w_splitter7_free_wait7;
        wire w_wait7_drive_mutex7, w_wait7_free_mutex7;
        wire w_L2_miss_drive_mutex7, w_L2_miss_free_mutex7;
        wire w_mutex7_drive_arbRead, w_mutex7_free_arbRead;

        wire [33:0] w_miss_Addr_to_DDR7_34, w_writeBack_Addr_to_DDR7_34;
        wire [255:0] w_DDR_refillLine7_32B;   
        wire [255:0] w_writeBackLine_to_DDR7_32B;

//
    assign { o_lsu_rd0_5, o_lsu_rd1_5, o_lsu_rd2_5,  o_lsu_rd3_5} = { i_lsu_rd0_5, i_lsu_rd1_5, i_lsu_rd2_5,  i_lsu_rd3_5 } ;
    assign { o_lsu_index0_6, o_lsu_index1_6, o_lsu_index2_6, o_lsu_index3_6 } = { i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6 };
    assign { o_lsu_flag0_3, o_lsu_flag1_3, o_lsu_flag2_3, o_lsu_flag3_3 } = { i_lsu_flag0_3, i_lsu_flag1_3, i_lsu_flag2_3, i_lsu_flag3_3 };
    assign { o_lsu_bypass0, o_lsu_bypass1, o_lsu_bypass2, o_lsu_bypass3 } = { i_lsu_bypass0, i_lsu_bypass1, i_lsu_bypass2, i_lsu_bypass3 };

    assign { w_loadData0_to_retire_38[37:32], w_loadData1_to_retire_38[37:32], w_loadData2_to_retire_38[37:32], w_loadData3_to_retire_38[37:32] } = { i_lsu_index0_6, i_lsu_index1_6, i_lsu_index2_6, i_lsu_index3_6 };

//PA[6:5] 00
    Icache u_Icache_bank0(
        .rst                          (rst                          ),

        .i_Itlb_drive                 ( i_ifu_drive0                ),
        .o_Itlb_free                  ( o_ifu_free0                 ),
        .i_Itlb_PA_34                 (  i_ifu_PA0_34               ),

        .i_L2Cache_drive              (  w_mutex_drive_IcacheBank0             ),.i_freeNext_L2Cache   ( w_IcacheBank0_free_selector          ),
        .o_L2Cache_free               (  w_mutex_free_IcacheBank0             ),.o_driveNext_L2Cache  ( w_IcacheBank0_drive_selector  ), 
        
        .i_L2Cache_refillLine_32B     (  w_refill_to_ICacheBank0_32B   ),.o_miss_Addr_to_L2cache_34    ( w_IcacheBank0_miss_Addr_34   ),
        
        .i_freeNext_ifu               ( i_freeNext0_ifu              ),
        .o_driveNext_ifu              ( o_driveNext0_ifu            ),
        .o_hit_data_to_ifu_32B        (  o_instr0_to_ifu_256      ),

        .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
        .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );

    Dcache u_Dcache_bank0(
        .rst                      (rst                      ),
        .i_lsu_drive              (i_lsu_drive0_cache              ),.i_freeNext_lsu           (i_freeNext0_lsu           ),
        .o_lsu_free               (o_lsu_free0_cache               ),.o_driveNext_lsu          (o_driveNext0_lsu          ),//store鎴愬姛鏃剁粰
        
        .i_lsu_PA_34              (i_lsu_PA0_34              ),
        .i_lsu_storeData_32       (i_lsu_storeData0_32       ),
        .i_lsu_storeIndex_6       (6'b0       ),
        .i_lsu_load_or_store      (i_lsu_flag0_3[2]      ),
        .o_storeIndex_to_lsu_6    (    ),
        
        .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext0_retire_load   ),
        .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext0_retire_load  ),
        .o_loadData_to_retire_32  ( w_loadData0_to_retire_38[31:0]  ),
        
        .i_ptw_drive              (  i_ptw0_drive            ),.i_freeNext_ptw          (  w_freeNext0_ptw        ),
        .o_ptw_free               (  o_ptw0_free             ),.o_driveNext_ptw        (  w_driveNext0_ptw        ),
        .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
        .o_pte_32                 (  w_pte0_32               ),
        
        .i_L2cache_drive( w_mutex_drive_DcacheBank0  ),.i_freeNext_L2cache_writeBack  ( w_DcacheBank0_writeBack_free_selector   ),.i_freeNext_L2cache_miss ( w_DcacheBank0_miss_free_selector    ),
        .o_L2cache_free ( w_mutex_free_DcacheBank0  ),.o_driveNext_L2cache_writeBack ( w_DcacheBank0_writeBack_drive_selector   ),.o_driveNext_L2cache_miss( w_DcacheBank0_miss_drive_selector    ),
        
        .i_L2cache_refill_32B          (  w_refill_to_DCacheBank0_32B        ),

        .o_miss_addr_34                ( w_DcacheBank0_miss_Addr_34 ),
        .o_writeBack_addr_34           ( w_DcacheBank0_writeBack_Addr_34          ),
        .o_writeBack_32B               ( w_DcacheBank0_writeBack_Data_256              ),
        
        .o_r_case_number_6(),.o_dcache_offset_12(),.o_plru_evictWay_3(),.o_r_hit_way_3(),.o_dcache_PA_34(),.o_r_writeBack_addr_34(),.o_r_hit(),.o_r_dirty()
    );

    (*dont_touch = "true"*)cSelector2 Icache_bank0_selector(
        .rst          (rst          ),
        .i_drive      (w_IcacheBank0_drive_selector      ),
        .o_free       (w_IcacheBank0_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_IcacheBank0_miss_Addr_34[7]  ),
        .valid1       (  w_IcacheBank0_miss_Addr_34[7]  ),

        .o_driveNext0 (w_IcacheBank0_selector_drive_L2Bank0  ),
        .o_driveNext1 (w_IcacheBank0_selector_drive_L2Bank1  ),
        .i_freeNext0  (w_IcacheBank0_selector_free_L2Bank0  ),
        .i_freeNext1  (w_IcacheBank0_selector_free_L2Bank1  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank0_miss_selector(
        .rst          (rst          ),
        .i_drive      (w_DcacheBank0_miss_drive_selector      ),
        .o_free       (w_DcacheBank0_miss_free_selector       ),
        .o_fire       (       ),
        .valid0       (  ~w_DcacheBank0_miss_Addr_34[7]     ),
        .valid1       (   w_DcacheBank0_miss_Addr_34[7]    ),

        .o_driveNext0 (w_DcacheBank0_miss_selector_drive_L2Bank0 ),
        .o_driveNext1 (w_DcacheBank0_miss_selector_drive_L2Bank1 ),
        .i_freeNext0  (w_DcacheBank0_miss_selector_free_L2Bank0  ),
        .i_freeNext1  (w_DcacheBank0_miss_selector_free_L2Bank1  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank0_writeBack_selector(
        .rst          (rst          ),
        .i_drive      ( w_DcacheBank0_writeBack_drive_selector     ),
        .o_free       ( w_DcacheBank0_writeBack_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_DcacheBank0_writeBack_Addr_34[7]      ),
        .valid1       (  w_DcacheBank0_writeBack_Addr_34[7]      ),

        .o_driveNext0 ( w_DcacheBank0_writeBack_selector_drive_L2Bank0),
        .o_driveNext1 ( w_DcacheBank0_writeBack_selector_drive_L2Bank1),
        .i_freeNext0  ( w_DcacheBank0_writeBack_selector_free_L2Bank0 ),
        .i_freeNext1  ( w_DcacheBank0_writeBack_selector_free_L2Bank1 )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Icache_bank0(
        .i_drive0    ( w_L2Bank0_drive_IcacheBank0   ),
        .i_drive1    ( w_L2Bank1_drive_IcacheBank0   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_IcacheBank0 ),
        .rst         (rst        ),
        .o_free0     ( w_L2Bank0_free_IcacheBank0    ),
        .o_free1     ( w_L2Bank1_free_IcacheBank0    ),
        .o_driveNext ( w_mutex_drive_IcacheBank0 ),
        .o_data      (      )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Dcache_bank0(
        .i_drive0    ( w_L2Bank0_drive_DcacheBank0   ),
        .i_drive1    ( w_L2Bank1_drive_DcacheBank0   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_DcacheBank0 ),
        .rst         ( rst    ),
        .o_free0     ( w_L2Bank0_free_DcacheBank0    ),
        .o_free1     ( w_L2Bank1_free_DcacheBank0    ),
        .o_driveNext ( w_mutex_drive_DcacheBank0),
        .o_data      (      )
    );


//PA[6:5] 01 
    Icache u_Icache_bank1(
        .rst                          (rst                          ),

        .i_Itlb_drive                 ( i_ifu_drive1                ),
        .o_Itlb_free                  ( o_ifu_free1                 ),
        .i_Itlb_PA_34                 (  i_ifu_PA1_34               ),

        .i_L2Cache_drive              (  w_mutex_drive_IcacheBank1             ),.i_freeNext_L2Cache   ( w_IcacheBank1_free_selector          ),
        .o_L2Cache_free               (  w_mutex_free_IcacheBank1             ),.o_driveNext_L2Cache  ( w_IcacheBank1_drive_selector  ), 
        
        .i_L2Cache_refillLine_32B     (  w_refill_to_ICacheBank1_32B   ),.o_miss_Addr_to_L2cache_34    ( w_IcacheBank1_miss_Addr_34   ),
        
        .i_freeNext_ifu               ( i_freeNext1_ifu              ),
        .o_driveNext_ifu              ( o_driveNext1_ifu            ),
        .o_hit_data_to_ifu_32B        (  o_instr1_to_ifu_256      ),

        .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
        .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );

    Dcache u_Dcache_bank1(
        .rst                      (rst                      ),
        .i_lsu_drive              (i_lsu_drive1_cache              ),.i_freeNext_lsu           (i_freeNext1_lsu           ),
        .o_lsu_free               (o_lsu_free1_cache               ),.o_driveNext_lsu          (o_driveNext1_lsu          ),//store鎴愬姛鏃剁粰
        
        .i_lsu_PA_34              (i_lsu_PA1_34              ),
        .i_lsu_storeData_32       (i_lsu_storeData1_32       ),
        .i_lsu_storeIndex_6       (6'b0       ),
        .i_lsu_load_or_store      (i_lsu_flag1_3[2]      ),
        .o_storeIndex_to_lsu_6    (    ),
        
        .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext1_retire_load   ),
        .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext1_retire_load  ),
        .o_loadData_to_retire_32  ( w_loadData1_to_retire_38[31:0]  ),
        
        .i_ptw_drive              (  i_ptw1_drive            ),.i_freeNext_ptw          (  w_freeNext1_ptw        ),
        .o_ptw_free               (  o_ptw1_free             ),.o_driveNext_ptw        (  w_driveNext1_ptw        ),
        .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
        .o_pte_32                 (  w_pte1_32               ),
        
        .i_L2cache_drive( w_mutex_drive_DcacheBank1  ),.i_freeNext_L2cache_writeBack  ( w_DcacheBank1_writeBack_free_selector   ),.i_freeNext_L2cache_miss ( w_DcacheBank1_miss_free_selector    ),
        .o_L2cache_free ( w_mutex_free_DcacheBank1  ),.o_driveNext_L2cache_writeBack ( w_DcacheBank1_writeBack_drive_selector   ),.o_driveNext_L2cache_miss( w_DcacheBank1_miss_drive_selector    ),
        
        .i_L2cache_refill_32B          (  w_refill_to_DCacheBank1_32B        ),

        .o_miss_addr_34                ( w_DcacheBank1_miss_Addr_34 ),
        .o_writeBack_addr_34           ( w_DcacheBank1_writeBack_Addr_34          ),
        .o_writeBack_32B               ( w_DcacheBank1_writeBack_Data_256              ),
        
        .o_r_case_number_6(),.o_dcache_offset_12(),.o_plru_evictWay_3(),.o_r_hit_way_3(),.o_dcache_PA_34(),.o_r_writeBack_addr_34(),.o_r_hit(),.o_r_dirty()
    );

    (*dont_touch = "true"*)cSelector2 Icache_bank1_selector(
        .rst          (rst          ),
        .i_drive      (w_IcacheBank1_drive_selector      ),
        .o_free       (w_IcacheBank1_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_IcacheBank1_miss_Addr_34[7]  ),
        .valid1       (  w_IcacheBank1_miss_Addr_34[7]  ),

        .o_driveNext0 (w_IcacheBank1_selector_drive_L2Bank2  ),
        .o_driveNext1 (w_IcacheBank1_selector_drive_L2Bank3  ),
        .i_freeNext0  (w_IcacheBank1_selector_free_L2Bank2  ),
        .i_freeNext1  (w_IcacheBank1_selector_free_L2Bank3  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank1_miss_selector(
        .rst          (rst          ),
        .i_drive      (w_DcacheBank1_miss_drive_selector      ),
        .o_free       (w_DcacheBank1_miss_free_selector       ),
        .o_fire       (       ),
        .valid0       (  ~w_DcacheBank1_miss_Addr_34[7]     ),
        .valid1       (   w_DcacheBank1_miss_Addr_34[7]    ),

        .o_driveNext0 (w_DcacheBank1_miss_selector_drive_L2Bank2 ),
        .o_driveNext1 (w_DcacheBank1_miss_selector_drive_L2Bank3 ),
        .i_freeNext0  (w_DcacheBank1_miss_selector_free_L2Bank2  ),
        .i_freeNext1  (w_DcacheBank1_miss_selector_free_L2Bank3  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank1_writeBack_selector(
        .rst          (rst          ),
        .i_drive      ( w_DcacheBank1_writeBack_drive_selector     ),
        .o_free       ( w_DcacheBank1_writeBack_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_DcacheBank1_writeBack_Addr_34[7]      ),
        .valid1       (  w_DcacheBank1_writeBack_Addr_34[7]      ),

        .o_driveNext0 ( w_DcacheBank1_writeBack_selector_drive_L2Bank2),
        .o_driveNext1 ( w_DcacheBank1_writeBack_selector_drive_L2Bank3),
        .i_freeNext0  ( w_DcacheBank1_writeBack_selector_free_L2Bank2 ),
        .i_freeNext1  ( w_DcacheBank1_writeBack_selector_free_L2Bank3 )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Icache_bank1(
        .i_drive0    ( w_L2Bank2_drive_IcacheBank1   ),
        .i_drive1    ( w_L2Bank3_drive_IcacheBank1   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_IcacheBank1 ),
        .rst         (rst        ),
        .o_free0     ( w_L2Bank2_free_IcacheBank1    ),
        .o_free1     ( w_L2Bank3_free_IcacheBank1    ),
        .o_driveNext ( w_mutex_drive_IcacheBank1 ),
        .o_data      (      )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Dcache_bank1(
        .i_drive0    ( w_L2Bank2_drive_DcacheBank1   ),
        .i_drive1    ( w_L2Bank3_drive_DcacheBank1   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_DcacheBank1 ),
        .rst         (rst         ),
        .o_free0     ( w_L2Bank2_free_DcacheBank1    ),
        .o_free1     ( w_L2Bank3_free_DcacheBank1    ),
        .o_driveNext ( w_mutex_drive_DcacheBank1),
        .o_data      (      )
    );


//PA[6:5] 10
    Icache u_Icache_bank2(
        .rst                          (rst                          ),

        .i_Itlb_drive                 ( i_ifu_drive2                ),
        .o_Itlb_free                  ( o_ifu_free2                 ),
        .i_Itlb_PA_34                 (  i_ifu_PA2_34               ),

        .i_L2Cache_drive              (  w_mutex_drive_IcacheBank2             ),.i_freeNext_L2Cache   ( w_IcacheBank2_free_selector          ),
        .o_L2Cache_free               (  w_mutex_free_IcacheBank2             ),.o_driveNext_L2Cache  ( w_IcacheBank2_drive_selector  ), 
        
        .i_L2Cache_refillLine_32B     (  w_refill_to_ICacheBank2_32B   ),.o_miss_Addr_to_L2cache_34    ( w_IcacheBank2_miss_Addr_34   ),
        
        .i_freeNext_ifu               ( i_freeNext2_ifu              ),
        .o_driveNext_ifu              ( o_driveNext2_ifu            ),
        .o_hit_data_to_ifu_32B        (  o_instr2_to_ifu_256      ),

        .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
        .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );

    Dcache u_Dcache_bank2(
        .rst                      (rst                      ),
        .i_lsu_drive              (i_lsu_drive2_cache              ),.i_freeNext_lsu           (i_freeNext2_lsu           ),
        .o_lsu_free               (o_lsu_free2_cache               ),.o_driveNext_lsu          (o_driveNext2_lsu          ),//store鎴愬姛鏃剁粰
        
        .i_lsu_PA_34              (i_lsu_PA2_34              ),
        .i_lsu_storeData_32       (i_lsu_storeData2_32       ),
        .i_lsu_storeIndex_6       (6'b0       ),
        .i_lsu_load_or_store      (i_lsu_flag2_3[2]      ),
        .o_storeIndex_to_lsu_6    (    ),
        
        .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext2_retire_load   ),
        .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext2_retire_load  ),
        .o_loadData_to_retire_32  ( w_loadData2_to_retire_38[31:0]  ),
        
        .i_ptw_drive              (  i_ptw2_drive            ),.i_freeNext_ptw          (  w_freeNext2_ptw        ),
        .o_ptw_free               (  o_ptw2_free             ),.o_driveNext_ptw        (  w_driveNext2_ptw        ),
        .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
        .o_pte_32                 (  w_pte2_32               ),
        
        .i_L2cache_drive( w_mutex_drive_DcacheBank2  ),.i_freeNext_L2cache_writeBack  ( w_DcacheBank2_writeBack_free_selector   ),.i_freeNext_L2cache_miss ( w_DcacheBank2_miss_free_selector    ),
        .o_L2cache_free ( w_mutex_free_DcacheBank2  ),.o_driveNext_L2cache_writeBack ( w_DcacheBank2_writeBack_drive_selector   ),.o_driveNext_L2cache_miss( w_DcacheBank2_miss_drive_selector    ),
        
        .i_L2cache_refill_32B          (  w_refill_to_DCacheBank2_32B        ),

        .o_miss_addr_34                ( w_DcacheBank2_miss_Addr_34 ),
        .o_writeBack_addr_34           ( w_DcacheBank2_writeBack_Addr_34          ),
        .o_writeBack_32B               ( w_DcacheBank2_writeBack_Data_256              ),
        
        .o_r_case_number_6(),.o_dcache_offset_12(),.o_plru_evictWay_3(),.o_r_hit_way_3(),.o_dcache_PA_34(),.o_r_writeBack_addr_34(),.o_r_hit(),.o_r_dirty()
    );

    (*dont_touch = "true"*)cSelector2 Icache_bank2_selector(
        .rst          (rst          ),
        .i_drive      (w_IcacheBank2_drive_selector      ),
        .o_free       (w_IcacheBank2_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_IcacheBank2_miss_Addr_34[7]  ),
        .valid1       (  w_IcacheBank2_miss_Addr_34[7]  ),

        .o_driveNext0 (w_IcacheBank2_selector_drive_L2Bank4  ),
        .o_driveNext1 (w_IcacheBank2_selector_drive_L2Bank5  ),
        .i_freeNext0  (w_IcacheBank2_selector_free_L2Bank4  ),
        .i_freeNext1  (w_IcacheBank2_selector_free_L2Bank5  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank2_miss_selector(
        .rst          (rst          ),
        .i_drive      (w_DcacheBank2_miss_drive_selector      ),
        .o_free       (w_DcacheBank2_miss_free_selector       ),
        .o_fire       (       ),
        .valid0       (  ~w_DcacheBank2_miss_Addr_34[7]     ),
        .valid1       (   w_DcacheBank2_miss_Addr_34[7]    ),

        .o_driveNext0 (w_DcacheBank2_miss_selector_drive_L2Bank4 ),
        .o_driveNext1 (w_DcacheBank2_miss_selector_drive_L2Bank5 ),
        .i_freeNext0  (w_DcacheBank2_miss_selector_free_L2Bank4  ),
        .i_freeNext1  (w_DcacheBank2_miss_selector_free_L2Bank5  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank2_writeBack_selector(
        .rst          (rst          ),
        .i_drive      ( w_DcacheBank2_writeBack_drive_selector     ),
        .o_free       ( w_DcacheBank2_writeBack_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_DcacheBank2_writeBack_Addr_34[7]      ),
        .valid1       (  w_DcacheBank2_writeBack_Addr_34[7]      ),

        .o_driveNext0 ( w_DcacheBank2_writeBack_selector_drive_L2Bank4),
        .o_driveNext1 ( w_DcacheBank2_writeBack_selector_drive_L2Bank5),
        .i_freeNext0  ( w_DcacheBank2_writeBack_selector_free_L2Bank4 ),
        .i_freeNext1  ( w_DcacheBank2_writeBack_selector_free_L2Bank5 )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Icache_bank2(
        .i_drive0    ( w_L2Bank4_drive_IcacheBank2   ),
        .i_drive1    ( w_L2Bank5_drive_IcacheBank2   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_IcacheBank2 ),
        .rst         (rst        ),
        .o_free0     ( w_L2Bank4_free_IcacheBank2    ),
        .o_free1     ( w_L2Bank5_free_IcacheBank2    ),
        .o_driveNext ( w_mutex_drive_IcacheBank2 ),
        .o_data      (      )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Dcache_bank2(
        .i_drive0    ( w_L2Bank4_drive_DcacheBank2   ),
        .i_drive1    ( w_L2Bank5_drive_DcacheBank2   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_DcacheBank2 ),
        .rst         (rst         ),
        .o_free0     ( w_L2Bank4_free_DcacheBank2    ),
        .o_free1     ( w_L2Bank5_free_DcacheBank2    ),
        .o_driveNext ( w_mutex_drive_DcacheBank2),
        .o_data      (      )
    );


//PA[6:5] 11
    Icache u_Icache_bank3(
        .rst                          (rst                          ),

        .i_Itlb_drive                 ( i_ifu_drive3                ),
        .o_Itlb_free                  ( o_ifu_free3                 ),
        .i_Itlb_PA_34                 (  i_ifu_PA3_34               ),

        .i_L2Cache_drive              (  w_mutex_drive_IcacheBank3             ),.i_freeNext_L2Cache   ( w_IcacheBank3_free_selector          ),
        .o_L2Cache_free               (  w_mutex_free_IcacheBank3             ),.o_driveNext_L2Cache  ( w_IcacheBank3_drive_selector  ), 
        
        .i_L2Cache_refillLine_32B     (  w_refill_to_ICacheBank3_32B   ),.o_miss_Addr_to_L2cache_34    ( w_IcacheBank3_miss_Addr_34   ),
        
        .i_freeNext_ifu               ( i_freeNext3_ifu              ),
        .o_driveNext_ifu              ( o_driveNext3_ifu            ),
        .o_hit_data_to_ifu_32B        (  o_instr3_to_ifu_256      ),

        .o_fifo_buffer_write_enable_2 ( ),.o_fifo2_1_addr_34            (           ),
        .o_write_enable               (               ),.o_fifo_buffer_data_out       (       )
    );

    Dcache u_Dcache_bank3(
        .rst                      (rst                      ),
        .i_lsu_drive              (i_lsu_drive3_cache              ),.i_freeNext_lsu           (i_freeNext3_lsu           ),
        .o_lsu_free               (o_lsu_free3_cache               ),.o_driveNext_lsu          (o_driveNext3_lsu          ),//store鎴愬姛鏃剁粰
        
        .i_lsu_PA_34              (i_lsu_PA3_34              ),
        .i_lsu_storeData_32       (i_lsu_storeData3_32       ),
        .i_lsu_storeIndex_6       (6'b0       ),
        .i_lsu_load_or_store      (i_lsu_flag3_3[2]      ),
        .o_storeIndex_to_lsu_6    (    ),
        
        .i_freeNext_retire_store  (1'b0  ),.i_freeNext_retire_load   (w_freeNext3_retire_load   ),
        .o_driveNext_retire_store (  ),.o_driveNext_retire_load  (w_driveNext3_retire_load  ),
        .o_loadData_to_retire_32  ( w_loadData3_to_retire_38[31:0]  ),
        
        .i_ptw_drive              (  i_ptw3_drive            ),.i_freeNext_ptw          (  w_freeNext3_ptw        ),
        .o_ptw_free               (  o_ptw3_free             ),.o_driveNext_ptw        (  w_driveNext3_ptw        ),
        .i_ptw_ptePA_34           (  i_ptw_ptePA_34         ),
        .o_pte_32                 (  w_pte3_32               ),
        
        .i_L2cache_drive( w_mutex_drive_DcacheBank3  ),.i_freeNext_L2cache_writeBack  ( w_DcacheBank3_writeBack_free_selector   ),.i_freeNext_L2cache_miss ( w_DcacheBank3_miss_free_selector    ),
        .o_L2cache_free ( w_mutex_free_DcacheBank3  ),.o_driveNext_L2cache_writeBack ( w_DcacheBank3_writeBack_drive_selector   ),.o_driveNext_L2cache_miss( w_DcacheBank3_miss_drive_selector    ),
        
        .i_L2cache_refill_32B          (  w_refill_to_DCacheBank3_32B        ),

        .o_miss_addr_34                ( w_DcacheBank3_miss_Addr_34 ),
        .o_writeBack_addr_34           ( w_DcacheBank3_writeBack_Addr_34          ),
        .o_writeBack_32B               ( w_DcacheBank3_writeBack_Data_256              ),
        
        .o_r_case_number_6(),.o_dcache_offset_12(),.o_plru_evictWay_3(),.o_r_hit_way_3(),.o_dcache_PA_34(),.o_r_writeBack_addr_34(),.o_r_hit(),.o_r_dirty()
    );

    (*dont_touch = "true"*)cSelector2 Icache_bank3_selector(
        .rst          (rst          ),
        .i_drive      (w_IcacheBank3_drive_selector      ),
        .o_free       (w_IcacheBank3_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_IcacheBank3_miss_Addr_34[7]  ),
        .valid1       (  w_IcacheBank3_miss_Addr_34[7]  ),

        .o_driveNext0 (w_IcacheBank3_selector_drive_L2Bank6  ),
        .o_driveNext1 (w_IcacheBank3_selector_drive_L2Bank7  ),
        .i_freeNext0  (w_IcacheBank3_selector_free_L2Bank6  ),
        .i_freeNext1  (w_IcacheBank3_selector_free_L2Bank7  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank3_miss_selector(
        .rst          (rst          ),
        .i_drive      (w_DcacheBank3_miss_drive_selector      ),
        .o_free       (w_DcacheBank3_miss_free_selector       ),
        .o_fire       (       ),
        .valid0       (  ~w_DcacheBank3_miss_Addr_34[7]     ),
        .valid1       (   w_DcacheBank3_miss_Addr_34[7]    ),

        .o_driveNext0 (w_DcacheBank3_miss_selector_drive_L2Bank6 ),
        .o_driveNext1 (w_DcacheBank3_miss_selector_drive_L2Bank7 ),
        .i_freeNext0  (w_DcacheBank3_miss_selector_free_L2Bank6  ),
        .i_freeNext1  (w_DcacheBank3_miss_selector_free_L2Bank7  )
    );

    (*dont_touch = "true"*)cSelector2 Dcache_bank3_writeBack_selector(
        .rst          (rst          ),
        .i_drive      ( w_DcacheBank3_writeBack_drive_selector     ),
        .o_free       ( w_DcacheBank3_writeBack_free_selector      ),
        .o_fire       (       ),
        .valid0       ( ~w_DcacheBank3_writeBack_Addr_34[7]      ),
        .valid1       (  w_DcacheBank3_writeBack_Addr_34[7]      ),

        .o_driveNext0 ( w_DcacheBank3_writeBack_selector_drive_L2Bank6),
        .o_driveNext1 ( w_DcacheBank3_writeBack_selector_drive_L2Bank7),
        .i_freeNext0  ( w_DcacheBank3_writeBack_selector_free_L2Bank6 ),
        .i_freeNext1  ( w_DcacheBank3_writeBack_selector_free_L2Bank7 )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Icache_bank3(
        .i_drive0    ( w_L2Bank6_drive_IcacheBank3   ),
        .i_drive1    ( w_L2Bank7_drive_IcacheBank3   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_IcacheBank3 ),
        .rst         (rst        ),
        .o_free0     ( w_L2Bank6_free_IcacheBank3    ),
        .o_free1     ( w_L2Bank7_free_IcacheBank3    ),
        .o_driveNext ( w_mutex_drive_IcacheBank3 ),
        .o_data      (      )
    );

    (*dont_touch = "true"*)cMutexMerge2_1b Dcache_bank3(
        .i_drive0    ( w_L2Bank6_drive_DcacheBank3   ),
        .i_drive1    ( w_L2Bank7_drive_DcacheBank3   ),
        .i_data0     ( 1'b0   ),
        .i_data1     ( 1'b0   ),
        .i_freeNext  ( w_mutex_free_DcacheBank3 ),
        .rst         (rst         ),
        .o_free0     ( w_L2Bank6_free_DcacheBank3    ),
        .o_free1     ( w_L2Bank7_free_DcacheBank3    ),
        .o_driveNext ( w_mutex_drive_DcacheBank3),
        .o_data      (      )
    );


//L2
    L2Cache u_L2Cache_bank0( //pa[7:5] 000
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank0_miss_selector_drive_L2Bank0 ),.i_DCache_writeBack_drive( w_DcacheBank0_writeBack_selector_drive_L2Bank0  ),.i_freeNext_DCache    ( w_L2Bank0_free_DcacheBank0    ),
        .o_DCache_miss_free              ( w_DcacheBank0_miss_selector_free_L2Bank0  ),.o_DCache_writeBack_free ( w_DcacheBank0_writeBack_selector_drive_L2Bank0  ),.o_driveNext_DCache   ( w_L2Bank0_drive_DcacheBank0   ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank0_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank0_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank0_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank0_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank0_selector_drive_L2Bank0 ),.i_freeNext_ICache               ( w_L2Bank0_free_IcacheBank0              ),
        .o_ICache_miss_free              ( w_IcacheBank0_selector_free_L2Bank0  ),.o_driveNext_ICache              ( w_L2Bank0_drive_IcacheBank0             ),
        
        .i_miss_Addr_from_ICache_34      ( w_IcacheBank0_miss_Addr_34     ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank0 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex0  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter0        ),
        .o_DDR_free    (  w_selectorRead_free_Bank0 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex0 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter0       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR0_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR0_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine0_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR0_32B     )
    );

    //L2 0 to DDR
    (*dont_touch = "true"*)cSplitter2 L2Bank_splitter0(
        .i_drive      ( w_L2_writeBack_drive_splitter0      ),

        .i_freeNext0  ( w_splitter0_free_arbWrite  ),
        .i_freeNext1  ( w_splitter0_free_wait0 ),
        .rst          (rst          ),

        .o_free       ( w_L2_writeBack_free_splitter0      ),
        .o_driveNext0 ( w_splitter0_drive_arbWrite ),
        .o_driveNext1 ( w_splitter0_drive_wait0 )
    );
    
    (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait0(
        .i_drive0    ( w_splitter0_drive_wait0   ),
        .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[0]  ),

        .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
        
        .i_freeNext  ( w_wait0_free_mutex0 ),
        .rst         ( rst         ),
        .o_free0     ( w_splitter0_free_wait0    ),
        .o_free1     (     ),

        .o_driveNext ( w_wait0_drive_mutex0 ),
        .o_data      (      )
    );
    
    (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex0(
        .i_drive0    ( w_wait0_drive_mutex0    ),
        .i_drive1    ( w_L2_miss_drive_mutex0   ),
        .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
        
        .i_freeNext  ( w_mutex0_free_arbRead ),
        .rst         (rst         ),
        .o_free0     ( w_wait0_free_mutex0    ),
        .o_free1     ( w_L2_miss_free_mutex0    ),

        .o_driveNext ( w_mutex0_drive_arbRead ),
        .o_data      (   )
    );
  

    L2Cache u_L2Cache_bank1( //pa[7:5] 100
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank0_miss_selector_drive_L2Bank1 ),.i_DCache_writeBack_drive        ( w_DcacheBank0_writeBack_selector_drive_L2Bank1       ),.i_freeNext_DCache   ( w_L2Bank1_free_DcacheBank0   ),
        .o_DCache_miss_free              ( w_DcacheBank0_miss_selector_free_L2Bank1  ),.o_DCache_writeBack_free         ( w_DcacheBank0_writeBack_selector_free_L2Bank1        ),.o_driveNext_DCache  ( w_L2Bank1_drive_DcacheBank0  ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank0_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank0_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank0_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank1_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank0_selector_drive_L2Bank1            ),.i_freeNext_ICache               ( w_L2Bank1_free_IcacheBank0              ),
        .o_ICache_miss_free              ( w_IcacheBank0_selector_free_L2Bank1             ),.o_driveNext_ICache              ( w_L2Bank1_drive_IcacheBank0             ),
        
        .i_miss_Addr_from_ICache_34      (  w_IcacheBank0_miss_Addr_34    ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank1 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex1  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter1        ),
        .o_DDR_free    (  w_selectorRead_free_Bank1 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex1 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter1       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR1_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR1_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine1_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR1_32B     )
    );

    //L2 1 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter1(
            .i_drive      ( w_L2_writeBack_drive_splitter1      ),

            .i_freeNext0  ( w_splitter1_free_arbWrite  ),
            .i_freeNext1  ( w_splitter1_free_wait1 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter1      ),
            .o_driveNext0 ( w_splitter1_drive_arbWrite ),
            .o_driveNext1 ( w_splitter1_drive_wait1 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait1(
            .i_drive0    ( w_splitter1_drive_wait1   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[1]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait1_free_mutex1 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter1_free_wait1    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait1_drive_mutex1 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex1(
            .i_drive0    ( w_wait1_drive_mutex1    ),
            .i_drive1    ( w_L2_miss_drive_mutex1   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex1_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait1_free_mutex1    ),
            .o_free1     ( w_L2_miss_free_mutex1    ),

            .o_driveNext ( w_mutex1_drive_arbRead ),
            .o_data      (   )
        );


    L2Cache u_L2Cache_bank2( //pa[7:5] 000
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank1_miss_selector_drive_L2Bank2 ),.i_DCache_writeBack_drive( w_DcacheBank1_writeBack_selector_drive_L2Bank2  ),.i_freeNext_DCache    ( w_L2Bank2_free_DcacheBank1    ),
        .o_DCache_miss_free              ( w_DcacheBank1_miss_selector_free_L2Bank2  ),.o_DCache_writeBack_free ( w_DcacheBank1_writeBack_selector_drive_L2Bank2  ),.o_driveNext_DCache   ( w_L2Bank2_drive_DcacheBank1   ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank1_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank1_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank1_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank2_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank1_selector_drive_L2Bank2 ),.i_freeNext_ICache               ( w_L2Bank2_free_IcacheBank1              ),
        .o_ICache_miss_free              ( w_IcacheBank1_selector_free_L2Bank2  ),.o_driveNext_ICache              ( w_L2Bank2_drive_IcacheBank1             ),
        
        .i_miss_Addr_from_ICache_34      ( w_IcacheBank1_miss_Addr_34     ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank2 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex2  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter2        ),
        .o_DDR_free    (  w_selectorRead_free_Bank2 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex2 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter2       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR2_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR2_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine2_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR2_32B     )
    );

    //L2 2 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter2(
            .i_drive      ( w_L2_writeBack_drive_splitter2      ),

            .i_freeNext0  ( w_splitter2_free_arbWrite  ),
            .i_freeNext1  ( w_splitter2_free_wait2 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter2      ),
            .o_driveNext0 ( w_splitter2_drive_arbWrite ),
            .o_driveNext1 ( w_splitter2_drive_wait2 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait2(
            .i_drive0    ( w_splitter2_drive_wait2   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[2]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait2_free_mutex2 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter2_free_wait2    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait2_drive_mutex2 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex2(
            .i_drive0    ( w_wait2_drive_mutex2    ),
            .i_drive1    ( w_L2_miss_drive_mutex2   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex2_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait2_free_mutex2    ),
            .o_free1     ( w_L2_miss_free_mutex2    ),

            .o_driveNext ( w_mutex2_drive_arbRead ),
            .o_data      (   )
        );


    L2Cache u_L2Cache_bank3( //pa[7:5] 100
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank1_miss_selector_drive_L2Bank3 ),.i_DCache_writeBack_drive        ( w_DcacheBank1_writeBack_selector_drive_L2Bank3       ),.i_freeNext_DCache   ( w_L2Bank3_free_DcacheBank1   ),
        .o_DCache_miss_free              ( w_DcacheBank1_miss_selector_free_L2Bank3  ),.o_DCache_writeBack_free         ( w_DcacheBank1_writeBack_selector_free_L2Bank3        ),.o_driveNext_DCache  ( w_L2Bank3_drive_DcacheBank1  ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank1_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank1_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank1_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank3_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank1_selector_drive_L2Bank3            ),.i_freeNext_ICache               ( w_L2Bank3_free_IcacheBank1              ),
        .o_ICache_miss_free              ( w_IcacheBank1_selector_free_L2Bank3             ),.o_driveNext_ICache              ( w_L2Bank3_drive_IcacheBank1             ),
        
        .i_miss_Addr_from_ICache_34      (  w_IcacheBank1_miss_Addr_34    ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank3 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex3  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter3        ),
        .o_DDR_free    (  w_selectorRead_free_Bank3 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex3 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter3       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR3_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR3_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine3_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR3_32B     )
    );

    //L2 3 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter3(
            .i_drive      ( w_L2_writeBack_drive_splitter3      ),

            .i_freeNext0  ( w_splitter3_free_arbWrite  ),
            .i_freeNext1  ( w_splitter3_free_wait3 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter3      ),
            .o_driveNext0 ( w_splitter3_drive_arbWrite ),
            .o_driveNext1 ( w_splitter3_drive_wait3 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait3(
            .i_drive0    ( w_splitter3_drive_wait3   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[3]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait3_free_mutex3 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter3_free_wait3    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait3_drive_mutex3 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex3(
            .i_drive0    ( w_wait3_drive_mutex3    ),
            .i_drive1    ( w_L2_miss_drive_mutex3   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex3_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait3_free_mutex3    ),
            .o_free1     ( w_L2_miss_free_mutex3    ),

            .o_driveNext ( w_mutex3_drive_arbRead ),
            .o_data      (   )
        );


    L2Cache u_L2Cache_bank4( //pa[7:5] 000
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank2_miss_selector_drive_L2Bank4 ),.i_DCache_writeBack_drive( w_DcacheBank2_writeBack_selector_drive_L2Bank4  ),.i_freeNext_DCache    ( w_L2Bank4_free_DcacheBank2    ),
        .o_DCache_miss_free              ( w_DcacheBank2_miss_selector_free_L2Bank4  ),.o_DCache_writeBack_free ( w_DcacheBank2_writeBack_selector_drive_L2Bank4  ),.o_driveNext_DCache   ( w_L2Bank4_drive_DcacheBank2   ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank2_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank2_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank2_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank4_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank2_selector_drive_L2Bank4 ),.i_freeNext_ICache               ( w_L2Bank4_free_IcacheBank2              ),
        .o_ICache_miss_free              ( w_IcacheBank2_selector_free_L2Bank4  ),.o_driveNext_ICache              ( w_L2Bank4_drive_IcacheBank2             ),
        
        .i_miss_Addr_from_ICache_34      ( w_IcacheBank2_miss_Addr_34     ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank4 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex4  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter4        ),
        .o_DDR_free    (  w_selectorRead_free_Bank4 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex4 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter4       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR4_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR4_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine4_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR4_32B     )
    );

    //L2 4 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter4(
            .i_drive      ( w_L2_writeBack_drive_splitter4      ),

            .i_freeNext0  ( w_splitter4_free_arbWrite  ),
            .i_freeNext1  ( w_splitter4_free_wait4 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter4      ),
            .o_driveNext0 ( w_splitter4_drive_arbWrite ),
            .o_driveNext1 ( w_splitter4_drive_wait4 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait4(
            .i_drive0    ( w_splitter4_drive_wait4   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[4]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait4_free_mutex4 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter4_free_wait4    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait4_drive_mutex4 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex4(
            .i_drive0    ( w_wait4_drive_mutex4    ),
            .i_drive1    ( w_L2_miss_drive_mutex4   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex4_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait4_free_mutex4    ),
            .o_free1     ( w_L2_miss_free_mutex4    ),

            .o_driveNext ( w_mutex4_drive_arbRead ),
            .o_data      (   )
        );


    L2Cache u_L2Cache_bank5( //pa[7:5] 100
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank2_miss_selector_drive_L2Bank5 ),.i_DCache_writeBack_drive        ( w_DcacheBank2_writeBack_selector_drive_L2Bank5       ),.i_freeNext_DCache   ( w_L2Bank5_free_DcacheBank2   ),
        .o_DCache_miss_free              ( w_DcacheBank2_miss_selector_free_L2Bank5  ),.o_DCache_writeBack_free         ( w_DcacheBank2_writeBack_selector_free_L2Bank5        ),.o_driveNext_DCache  ( w_L2Bank5_drive_DcacheBank2  ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank2_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank2_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank2_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank5_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank2_selector_drive_L2Bank5            ),.i_freeNext_ICache               ( w_L2Bank5_free_IcacheBank2              ),
        .o_ICache_miss_free              ( w_IcacheBank2_selector_free_L2Bank5             ),.o_driveNext_ICache              ( w_L2Bank5_drive_IcacheBank2             ),
        
        .i_miss_Addr_from_ICache_34      (  w_IcacheBank2_miss_Addr_34    ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank5 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex5  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter5        ),
        .o_DDR_free    (  w_selectorRead_free_Bank5 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex5 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter5       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR5_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR5_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine5_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR5_32B     )
    );

    //L2 5 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter5(
            .i_drive      ( w_L2_writeBack_drive_splitter5      ),

            .i_freeNext0  ( w_splitter5_free_arbWrite  ),
            .i_freeNext1  ( w_splitter5_free_wait5 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter5      ),
            .o_driveNext0 ( w_splitter5_drive_arbWrite ),
            .o_driveNext1 ( w_splitter5_drive_wait5 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait5(
            .i_drive0    ( w_splitter5_drive_wait5   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[5]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait5_free_mutex5 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter5_free_wait5    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait5_drive_mutex5 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex5(
            .i_drive0    ( w_wait5_drive_mutex5    ),
            .i_drive1    ( w_L2_miss_drive_mutex5   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex5_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait5_free_mutex5    ),
            .o_free1     ( w_L2_miss_free_mutex5    ),

            .o_driveNext ( w_mutex5_drive_arbRead ),
            .o_data      (   )
        );


    L2Cache u_L2Cache_bank6( //pa[7:5] 000
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank3_miss_selector_drive_L2Bank6 ),.i_DCache_writeBack_drive( w_DcacheBank3_writeBack_selector_drive_L2Bank6  ),.i_freeNext_DCache    ( w_L2Bank6_free_DcacheBank3    ),
        .o_DCache_miss_free              ( w_DcacheBank3_miss_selector_free_L2Bank6  ),.o_DCache_writeBack_free ( w_DcacheBank3_writeBack_selector_drive_L2Bank6  ),.o_driveNext_DCache   ( w_L2Bank6_drive_DcacheBank3   ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank3_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank3_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank3_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank6_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank3_selector_drive_L2Bank6 ),.i_freeNext_ICache               ( w_L2Bank6_free_IcacheBank3              ),
        .o_ICache_miss_free              ( w_IcacheBank3_selector_free_L2Bank6  ),.o_driveNext_ICache              ( w_L2Bank6_drive_IcacheBank3             ),
        
        .i_miss_Addr_from_ICache_34      ( w_IcacheBank3_miss_Addr_34     ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank6 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex6  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter6        ),
        .o_DDR_free    (  w_selectorRead_free_Bank6 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex6 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter6       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR6_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR6_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine6_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR6_32B     )
    );

    //L2 6 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter6(
            .i_drive      ( w_L2_writeBack_drive_splitter6      ),

            .i_freeNext0  ( w_splitter6_free_arbWrite  ),
            .i_freeNext1  ( w_splitter6_free_wait6 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter6      ),
            .o_driveNext0 ( w_splitter6_drive_arbWrite ),
            .o_driveNext1 ( w_splitter6_drive_wait6 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait6(
            .i_drive0    ( w_splitter6_drive_wait6   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[6]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait6_free_mutex6 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter6_free_wait6    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait6_drive_mutex6 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex6(
            .i_drive0    ( w_wait6_drive_mutex6    ),
            .i_drive1    ( w_L2_miss_drive_mutex6   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex6_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait6_free_mutex6    ),
            .o_free1     ( w_L2_miss_free_mutex6    ),

            .o_driveNext ( w_mutex6_drive_arbRead ),
            .o_data      (   )
        );

    L2Cache u_L2Cache_bank7( //pa[7:5] 100
        .rst                             (rst                             ),
        
        .i_DCache_miss_drive             ( w_DcacheBank3_miss_selector_drive_L2Bank7 ),.i_DCache_writeBack_drive        ( w_DcacheBank3_writeBack_selector_drive_L2Bank7       ),.i_freeNext_DCache   ( w_L2Bank7_free_DcacheBank3   ),
        .o_DCache_miss_free              ( w_DcacheBank3_miss_selector_free_L2Bank7  ),.o_DCache_writeBack_free         ( w_DcacheBank3_writeBack_selector_free_L2Bank7        ),.o_driveNext_DCache  ( w_L2Bank7_drive_DcacheBank3  ),
        
        .i_miss_Addr_from_DCache_34      ( w_DcacheBank3_miss_Addr_34     ),
        .i_writeBack_Addr_from_DCache_34 ( w_DcacheBank3_writeBack_Addr_34 ),
        .i_L1Cache_writeBackLine_32B     ( w_DcacheBank3_writeBack_Data_256    ),
        
        .o_refillLine_to_L1Cache_32B     (  w_L2Bank7_to_L1Cache_32B   ),
        
        .i_ICache_miss_drive             ( w_IcacheBank3_selector_drive_L2Bank7            ),.i_freeNext_ICache               ( w_L2Bank7_free_IcacheBank3              ),
        .o_ICache_miss_free              ( w_IcacheBank3_selector_free_L2Bank7             ),.o_driveNext_ICache              ( w_L2Bank7_drive_IcacheBank3             ),
        
        .i_miss_Addr_from_ICache_34      (  w_IcacheBank3_miss_Addr_34    ),
        
        .i_DDR_drive    ( w_selectorRead_drive_Bank7 ),  .i_freeNext_DDR_miss   ( w_L2_miss_free_mutex7  ), .i_freeNext_DDR_writeBack   (w_L2_writeBack_free_splitter7        ),
        .o_DDR_free    (  w_selectorRead_free_Bank7 ),  .o_driveNext_DDR_miss  ( w_L2_miss_drive_mutex7 ), .o_driveNext_DDR_writeBack  (w_L2_writeBack_drive_splitter7       ),
        
        .o_miss_Addr_to_DDR_34           ( w_miss_Addr_to_DDR7_34          ),
        .o_writeBack_Addr_to_DDR_34      ( w_writeBack_Addr_to_DDR7_34     ),
        .i_DDR_refillLine_32B            ( w_DDR_refillLine7_32B           ),
        .o_writeBackLine_to_DDR_32B      ( w_writeBackLine_to_DDR7_32B     )
    );

    //L2 7 to DDR
        (*dont_touch = "true"*)cSplitter2 L2Bank_splitter7(
            .i_drive      ( w_L2_writeBack_drive_splitter7      ),

            .i_freeNext0  ( w_splitter7_free_arbWrite  ),
            .i_freeNext1  ( w_splitter7_free_wait7 ),
            .rst          (rst          ),

            .o_free       ( w_L2_writeBack_free_splitter7      ),
            .o_driveNext0 ( w_splitter7_drive_arbWrite ),
            .o_driveNext1 ( w_splitter7_drive_wait7 )
        );
        
        (*dont_touch = "true"*)cWaitMerge2_2b L2Bank_wait7(
            .i_drive0    ( w_splitter7_drive_wait7   ),
            .i_drive1    ( i_write_freeNext_DDR & w_arbWrite_selBank_8[7]  ),

            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_wait7_free_mutex7 ),
            .rst         ( rst         ),
            .o_free0     ( w_splitter7_free_wait7    ),
            .o_free1     (     ),

            .o_driveNext ( w_wait7_drive_mutex7 ),
            .o_data      (      )
        );
        
        (*dont_touch = "true"*)cMutexMerge2_1b L2Bank_mutex7(
            .i_drive0    ( w_wait7_drive_mutex7    ),
            .i_drive1    ( w_L2_miss_drive_mutex7   ),
            .i_data0     ( 1'b0   ),                   .i_data1     ( 1'b0   ),
            
            .i_freeNext  ( w_mutex7_free_arbRead ),
            .rst         (rst         ),
            .o_free0     ( w_wait7_free_mutex7    ),
            .o_free1     ( w_L2_miss_free_mutex7    ),

            .o_driveNext ( w_mutex7_drive_arbRead ),
            .o_data      (   )
        );

//L2 to DDR
    // Arb_write
    (*dont_touch = "true"*)cArbMerge8_8b Arb_Write(
        .i_drive0    (w_splitter0_drive_arbWrite    ),.i_drive1    (w_splitter1_drive_arbWrite    ),.i_drive2    (w_splitter2_drive_arbWrite    ),.i_drive3    (w_splitter3_drive_arbWrite    ),
        .i_drive4    (w_splitter4_drive_arbWrite    ),.i_drive5    (w_splitter5_drive_arbWrite    ),.i_drive6    (w_splitter6_drive_arbWrite    ),.i_drive7    (w_splitter7_drive_arbWrite    ),
        .i_data0     (8'b00000001 ),.i_data1 ( 8'b00000010    ),.i_data2     ( 8'b00000100    ),.i_data3     ( 8'b00001000    ),
        .i_data4     (8'b00010000     ),.i_data5     (8'b00100000     ),.i_data6     (8'b01000000     ),.i_data7     (8'b10000000     ),

        .i_freeNext  (w_DDR_free_cache  ),

        .rst         (rst         ),
        .o_free0     ( w_splitter0_free_arbWrite   ),.o_free1     (w_splitter1_free_arbWrite     ),.o_free2     (w_splitter2_free_arbWrite     ),.o_free3     (w_splitter3_free_arbWrite     ),
        .o_free4     ( w_splitter4_free_arbWrite    ),.o_free5    (w_splitter5_free_arbWrite     ),.o_free6     (w_splitter6_free_arbWrite     ),.o_free7     (w_splitter7_free_arbWrite     ),
        
        .o_driveNext ( o_write_driveNext_DDR ),
        .o_data      ( w_arbWrite_selBank_8     )
    );
    
    always @( *) begin
        case (w_arbWrite_selBank_8)
            8'b00000001:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR0_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR0_32B;
            end
            8'b00000010:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR1_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR1_32B;
            end
            8'b00000100:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR2_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR2_32B;
            end
            8'b00001000:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR3_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR3_32B;
            end
            8'b00010000:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR4_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR4_32B;
            end
            8'b00100000:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR5_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR5_32B;
            end
            8'b01000000:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR6_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR6_32B;
            end
            8'b10000000:begin
              o_write_addr_to_DDR_34 = w_writeBack_Addr_to_DDR7_34;
              o_write_data_to_DDR_256 = w_writeBackLine_to_DDR7_32B;
            end
            default: begin
              o_write_addr_to_DDR_34 = 34'b0;
              o_write_data_to_DDR_256 = 256'b0;
            end
        endcase
    end

    // Arb_Read
    (*dont_touch = "true"*)cArbMerge8_8b Arb_Read(
        .i_drive0    (w_mutex0_drive_arbRead    ),.i_drive1    (w_mutex1_drive_arbRead    ),.i_drive2    (w_mutex2_drive_arbRead    ),.i_drive3    (w_mutex3_drive_arbRead    ),
        .i_drive4    (w_mutex4_drive_arbRead    ),.i_drive5    (w_mutex5_drive_arbRead    ),.i_drive6    (w_mutex6_drive_arbRead    ),.i_drive7    (w_mutex7_drive_arbRead    ),

        .i_data0     (8'b00000001 ),.i_data1 (8'b00000010     ),.i_data2     (8'b00000100     ),.i_data3     (8'b00001000     ),
        .i_data4     (8'b00010000 ),.i_data5 (8'b00100000     ),.i_data6     (8'b01000000     ),.i_data7     (8'b10000000     ),

        .i_freeNext  (w_DDR_free_cache  ),
        
        .rst         (rst         ),
        .o_free0     (w_mutex0_free_arbRead    ),.o_free1     (w_mutex1_free_arbRead     ),.o_free2     (w_mutex2_free_arbRead     ),.o_free3     (w_mutex3_free_arbRead     ),
        .o_free4     (w_mutex4_free_arbRead     ),.o_free5    (w_mutex5_free_arbRead     ),.o_free6     (w_mutex6_free_arbRead     ),.o_free7     (w_mutex7_free_arbRead     ),

        .o_driveNext (o_read_driveNext_DDR      ),
        .o_data      (w_arbRead_selBank_8      )
    );

    always @( *) begin
        case (w_arbRead_selBank_8)
            8'b00000001:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR0_34;
            end
            8'b00000010:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR1_34;
            end
            8'b00000100:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR2_34;
            end
            8'b00001000:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR3_34;
            end
            8'b00010000:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR4_34;
            end
            8'b00100000:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR5_34;
            end
            8'b01000000:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR6_34;
            end
            8'b10000000:begin
              o_read_addr_to_DDR_34 = w_miss_Addr_to_DDR7_34;
            end
            default: begin
              o_read_addr_to_DDR_34 = 34'b0;
            end
        endcase
    end

    // selector_Read
    (*dont_touch = "true"*)cSelector8 Selector_Read(
        .rst          (rst          ),
        .i_drive      (i_DDR_drive_cache      ),
        .o_free       (w_DDR_free_cache       ),
        .o_fire       (       ),
        .valid0       (w_arbRead_selBank_8[0]       ),.valid1       (w_arbRead_selBank_8[1]        ),.valid2       (w_arbRead_selBank_8[2]        ),.valid3       (w_arbRead_selBank_8[3]        ),
        .valid4       (w_arbRead_selBank_8[4]        ),.valid5      (w_arbRead_selBank_8[5]        ),.valid6       (w_arbRead_selBank_8[6]        ),.valid7       (w_arbRead_selBank_8[7]        ),

        .o_driveNext0 (w_selectorRead_drive_Bank0 ),.o_driveNext1 (w_selectorRead_drive_Bank1 ),.o_driveNext2 (w_selectorRead_drive_Bank2 ),.o_driveNext3 (w_selectorRead_drive_Bank3 ),
        .o_driveNext4 (w_selectorRead_drive_Bank4 ),.o_driveNext5 (w_selectorRead_drive_Bank5 ),.o_driveNext6 (w_selectorRead_drive_Bank6 ),.o_driveNext7 (w_selectorRead_drive_Bank7 ),
        .i_freeNext0  (w_selectorRead_free_Bank0  ),.i_freeNext1  (w_selectorRead_drive_Bank1  ),.i_freeNext2  (w_selectorRead_free_Bank2  ),.i_freeNext3 (w_selectorRead_free_Bank3  ),
        .i_freeNext4  (w_selectorRead_free_Bank4  ),.i_freeNext5  (w_selectorRead_free_Bank5  ),.i_freeNext6  (w_selectorRead_free_Bank6  ),.i_freeNext7  (w_selectorRead_free_Bank7  )
    );

    assign w_DDR_refillLine0_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine1_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine2_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine3_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine4_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine5_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine6_32B = i_DDR_refill_data_256;
    assign w_DDR_refillLine7_32B = i_DDR_refill_data_256;

endmodule
