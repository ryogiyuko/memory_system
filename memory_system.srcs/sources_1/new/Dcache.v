`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 21:24:02
// Design Name: 
// Module Name: Dcache
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


module Dcache(
    input rst,

    //LSU
    input i_lsu_drive,  i_freeNext_lsu,
    output o_lsu_free, o_driveNext_lsu,

    input [11:0]    i_lsu_VA_offset_12, //虚拟地址低12位,i_lsu_Vai_32[11:0] *4
    input [5:0]     i_lsu_storeIndex_6, //标号，写完成后发回LSU
    input i_lsu_load_or_store,          //1 load 0 store
    output [5:0]    o_storeIndex_to_lsu_6,

    //retire
    input  i_freeNext_retire,
    output o_driveNext_retire,

    output o_loadData_to_retire_32,o_load_store, //load结果；区分读写

    //MMU
    input i_Dtlb_drive, i_ptw_drive, i_freeNext_ptw,
    output o_Dtlb_free, o_ptw_free, o_driveNext_ptw,

    input [21:0] i_Dtlb_PA_ppn_22,
    input [33:0] i_ptw_ptePA_34,
    output [31:0] o_pte_32,

    //L2Cache
    input  i_L2cache_drive, i_freeNext_L2cache,
    output o_L2cache_free, o_driveNext_L2cache,

    input  [255:0]  i_L2cache_refill_32B,
    output [33:0]  o_miss_addr_34,
    output [255:0] o_writeBack_32B,//sram保持，不特意存
    output o_miss_or_writeBack//1 miss 0 writeBack
    
    //触发器
    ,output [5:0] o_r_case_number_6
    ,output [2:0] o_plru_evictWay_3
    ,output [33:0] o_dcache_PA_34
    ,output o_missPte_or_hitPte
    );


//mutex1(pmt)
    wire w_mutex1_drive_pmtfifo1, w_mutex1_free_pmtfifo1;
    wire [5:0] w_mutex1_data_to_pmtfifo1_6;
    wire mutex1_pmt_to_pmtfifo;

//pmtfifo1 cpmtfifo2
    wire w_pmtfifo1_drive_selector1, w_pmtfifo1_free_selector1;
    wire [1:0] w_pmtfifo1_fire_2;

    //fire0
    wire w_lsu_load_or_store, w_ptePA_or_PA;//lsu 1 load 0 写；
    wire [11:0]w_PA_offset_12;
    reg w_readSRAM_or_writeSRAM, w_write_or_refill; //SRAM 1读 0写(含回填)；Dcache 1 写 0 重填

    reg [5:0] r_case_number_6;//独热码： 5回填完毕，写操作  4命中，写操作  3二次回填  2查询页表  1一次回填  0读写


    //fire1
    wire w_dataSRAM0_write_enable, w_dataSRAM1_write_enable, w_tagSRAM_write_enable, w_d_v_write_enable;
    wire [8:0] w_Data_SRAM_addr_9; //5位读时找组，3位写的时候选路，1位写的时候选16B中的8B
    wire [7:0] w_tag_D_V_addr_8;//5位读时找组，3位写的时候选路
    wire [4:0] w_PLRU_addr_5; //5位读写时找组

    wire [255:0] w_dataSRAM_out_way0_32B, w_dataSRAM_out_way1_32B,w_dataSRAM_out_way2_32B, w_dataSRAM_out_way3_32B;
    wire [255:0] w_dataSRAM_out_way4_32B, w_dataSRAM_out_way5_32B, w_dataSRAM_out_way6_32B, w_dataSRAM_out_way7_32B;  
    wire [21:0] w_tagSRAM_out_way0_22, w_tagSRAM_out_way1_22, w_tagSRAM_out_way2_22, w_tagSRAM_out_way3_22;
    wire [21:0] w_tagSRAM_out_way4_22, w_tagSRAM_out_way5_22, w_tagSRAM_out_way6_22, w_tagSRAM_out_way7_22;


//selector1
    wire w_Selector1_drive_wait1, w_Selector1_free_wait1;    
    wire w_Selector1_drive_mutex1_refill, w_Selector1_free_mutex1_refill;
    wire w_Selector1_drive_mutex1_write, w_Selector1_free_mutex1_write;
    wire w_Selector1_drive_mutex2_readComplete, w_Selector1_free_mutex2_readComplete;
    wire w_Selector1_drive_mutex2_writeComplete, w_Selector1_free_mutex2_writeComplete;
    
    wire w_Selector1_fire;

    wire [2:0] w_dcache_plru_evict_out_evictWay_3;//输出替换的行
    reg [2:0] r_plru_evictWay_3; //记录替换的行
    
//mutex3
    wire w_mutex3_drive_wait1, w_mutex3_free_wait1;
    wire w_data_mutex3_to_wait1;

//wait1
    wire w_wait1_drive_selector2, w_wait1_free_selector2;
    wire wait1_data_meanless; //无意义
    wire w_missPte_or_hitPte; //1 miss,0 hit

//selector2
    wire w_Selector2_drive_mutex1, w_Selector2_free_mutex1;
    
    wire [1:0] w_Selector2_fire_2;

    //fire0
    reg [33:0] r_dcache_PA_34;
    reg r_missPte_or_hitPte;

    //fire1
    wire [6:0] w_plru_buffer_out_7; //plru buffer的输出，实时变化，无需读事件

//mutex2

    //触发器

//给主要输入模块的free
    assign o_lsu_free = o_driveNext_retire; //读完成或写完成的drive来了，再给lsu free（可接受下个输入）
    assign o_L2cache_free = w_Selector1_drive_mutex1_write | w_Selector1_drive_mutex2_readComplete;
    assign o_ptw_free = o_driveNext_ptw; //读页表完成的drive来了，再给free

//mutex1(pmt)

    (*dont_touch = "true"*)cMutexMerge6_outpmt_6b u_cMutexMerge6_outpmt_6b(
        
        .i_drive0    (i_lsu_drive    ),
        .i_drive1    (i_L2cache_drive    ),
        .i_drive2    (i_ptw_drive    ),
        .i_drive3    (w_Selector1_drive_mutex1_refill    ),
        .i_drive4    (w_Selector2_drive_mutex1    ),
        .i_drive5    (w_Selector1_drive_mutex1_write    ),

        .i_data0     (6'b000001     ), //读写
        .i_data1     (6'b000010     ), //一次回填
        .i_data2     (6'b000100     ), //查询页表
        .i_data3     (6'b001000     ), //二次回填
        .i_data4     (6'b010000     ), //命中，写操作
        .i_data5     (6'b100000     ), //回填完毕，写操作
        
        .i_freeNext  (w_mutex1_free_pmtfifo1  ),
        .rst         (rst         ),
        .o_free0     (     ),//o_lsu_free 等读写完成
        .o_free1     (     ),//o_L2cache_free 等二次回填完成
        .o_free2     (     ),//o_ptw_free 等读页表完成
        .o_free3     (w_Selector1_free_mutex1_refill ),
        .o_free4     (w_Selector2_free_mutex1     ),
        .o_free5     (w_Selector1_free_mutex1_write     ),

        .o_driveNext (w_mutex1_drive_pmtfifo1 ),

        .o_data      (w_mutex1_data_to_pmtfifo1_6     ),
        .pmt         (mutex1_pmt_to_pmtfifo        )
    );
    
//pmtfifo1 cpmtfifo2


    (*dont_touch = "true"*)cPmtFifo2 u_PmtFifo1(
        .rst         (rst         ),
        .i_drive     (w_mutex1_drive_pmtfifo1     ),
        .o_free      (w_mutex1_free_pmtfifo1      ),

        .o_driveNext (w_pmtfifo1_drive_selector1 ),
        .i_freeNext  (w_pmtfifo1_free_selector1  ),

        .pmt         ( mutex1_pmt_to_pmtfifo        ),
        .o_fire_2    (w_pmtfifo1_fire_2    )
    );
    
    //fire0       
    
    always @(posedge w_pmtfifo1_fire_2[0]  or negedge rst) begin
        if (rst==0) begin
            r_case_number_6 <= 6'b0;             
        end
        else begin
            r_case_number_6 <= w_mutex1_data_to_pmtfifo1_6;
        end
    end
    assign o_r_case_number_6 = r_case_number_6;


    assign w_lsu_load_or_store = i_lsu_load_or_store;
    assign w_ptePA_or_PA = r_case_number_6[2];
    assign w_PA_offset_12 = w_ptePA_or_PA ? i_ptw_ptePA_34[11:0] : i_lsu_VA_offset_12;

    always @( *) begin
        if ( r_case_number_6[2] |r_case_number_6[0]) begin
            w_readSRAM_or_writeSRAM <= 1'b1;
        end
        else if ( r_case_number_6[5] |r_case_number_6[4] | r_case_number_6[3] |r_case_number_6[1]) begin
            w_readSRAM_or_writeSRAM <= 1'b0;
        end
        else w_readSRAM_or_writeSRAM <= 1'b1;//初始必须为读状态

        if (r_case_number_6[3] |r_case_number_6[1]) begin
            w_write_or_refill <= 1'b0;
        end
        else if (r_case_number_6[5] |r_case_number_6[4]) begin
            w_write_or_refill <= 1'b1;
        end
        else w_write_or_refill <= 1'b0;
    end

    //fire1     
    
    assign w_dataSRAM0_write_enable = (r_case_number_6[5] | r_case_number_6[4] & w_PA_offset_12[4] ) | r_case_number_6[3] |r_case_number_6[1];
    assign w_dataSRAM1_write_enable =(r_case_number_6[5] |r_case_number_6[4] & w_PA_offset_12[4] ) | r_case_number_6[3] |r_case_number_6[1];
    assign w_tagSRAM_write_enable = r_case_number_6[1];
    assign w_d_v_write_enable = r_case_number_6[5] | r_case_number_6[4] | r_case_number_6[1]; // 1 D=0,V=1; 4 5 D=1,V=1

    //low 16B
    Dcache_bank_dataSram0 u_Dcache_bank_dataSram0 (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(w_dataSRAM0_write_enable),      // input wire [0 : 0] wea
    .addra(),  // input wire [8 : 0] addra  //Dcache_ram_addr_9 = i_lsu_addr_offset_12[11:7]+write_enable ? 3'b0 : sel_way_3+i_lsu_addr_offset_12[3]
    .dina(),    // input wire [63 : 0] dina
    .douta({w_dataSRAM_out_way7_32B[127:0], w_dataSRAM_out_way6_32B[127:0], w_dataSRAM_out_way5_32B[127:0], w_dataSRAM_out_way4_32B[127:0], w_dataSRAM_out_way3_32B[127:0], w_dataSRAM_out_way2_32B[127:0], w_dataSRAM_out_way1_32B[127:0], w_dataSRAM_out_way0_32B[127:0]})  // output wire [1023 : 0] douta
    );

    //high 16B
    Dcache_bank_dataSram1 u_Dcache_bank_dataSram1 (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(w_dataSRAM1_write_enable),      // input wire [0 : 0] wea
    .addra(),  // input wire [8 : 0] addra
    .dina(),    // input wire [63 : 0] dina
    .douta({w_dataSRAM_out_way7_32B[255:128], w_dataSRAM_out_way6_32B[255:128], w_dataSRAM_out_way5_32B[255:128], w_dataSRAM_out_way4_32B[255:128], w_dataSRAM_out_way3_32B[255:128], w_dataSRAM_out_way2_32B[255:128], w_dataSRAM_out_way1_32B[255:128], w_dataSRAM_out_way0_32B[255:128]})  // output wire [1023 : 0] douta
    );

    Dcache_bank_tagSRAM u_Dcache_bank_tagSRAM (
  .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(w_tagSRAM_write_enable),      // input wire [0 : 0] wea
  .addra(),  // input wire [7 : 0] addra
  .dina(),    // input wire [21 : 0] dina
  .douta({w_tagSRAM_out_way7_22, w_tagSRAM_out_way6_22, w_tagSRAM_out_way5_22, w_tagSRAM_out_way4_22, w_tagSRAM_out_way3_22, w_tagSRAM_out_way2_22, w_tagSRAM_out_way1_22, w_tagSRAM_out_way0_22})  // output wire [175 : 0] douta
    );
    
    wire [1:0] w_D_V_buffer_dataIn_2; // 1位 D,0位 V 
    wire [15:0] w_D_V_buffer_dataOut_16;

    assign w_D_V_buffer_dataIn_2[0] = 1;
    assign w_D_V_buffer_dataIn_2[1] = w_write_or_refill ? 1:0 ;

    Dcache_D_V_buffer u_Dcache_D_V_buffer(
        .rst                 (rst                 ),
        .fire                (w_pmtfifo1_fire_2[1] ),
        .i_D_V_buffer_addr_8 ( ),
        .i_D_V_write_enable  (w_d_v_write_enable  ),
        .i_data_in_2         (w_D_V_buffer_dataIn_2         ),
        .o_w_data_out_16     (w_D_V_buffer_dataOut_16     )
    );
    
//selector1
    
    (*dont_touch = "true"*)cSelector5 u_cSelector1(
        .rst          (rst          ),
        .i_drive      (w_pmtfifo1_drive_selector1      ),
        .o_free       (w_pmtfifo1_free_selector1       ),

        .o_fire       (w_Selector1_fire       ),
        .valid0       (w_readSRAM_or_writeSRAM      ),
        .valid1       (r_case_number_6[1]       ),
        .valid2       (r_case_number_6[3] &  ~w_lsu_load_or_store ),
        .valid3       (r_case_number_6[3] &  w_lsu_load_or_store       ),
        .valid4       (r_case_number_6[4] & r_case_number_6[5]      ),

        .o_driveNext0 (w_Selector1_drive_wait1 ),
        .o_driveNext1 (w_Selector1_drive_mutex1_refill ),
        .o_driveNext2 (w_Selector1_drive_mutex1_write ),
        .o_driveNext3 (w_Selector1_drive_mutex2_readComplete ),
        .o_driveNext4 (w_Selector1_drive_mutex2_writeComplete ),

        .i_freeNext0  (w_Selector1_free_wait1  ),
        .i_freeNext1  (w_Selector1_free_mutex1_refill  ),
        .i_freeNext2  (w_Selector1_free_mutex1_write  ),
        .i_freeNext3  (w_Selector1_free_mutex2_readComplete  ),
        .i_freeNext4  (w_Selector1_free_mutex2_writeComplete  )
    );

    assign o_driveNext_lsu = w_Selector1_drive_mutex2_writeComplete; //out_to_lsu
    assign o_storeIndex_to_lsu_6 = i_lsu_storeIndex_6;

    dcache_plru_evict u_dcache_plru_evict(
        .w_plru_buffer_out_7                (w_plru_buffer_out_7                ),
        .w_dcache_plru_evict_out_evictWay_3 (w_dcache_plru_evict_out_evictWay_3 )
    );

    always @(posedge w_Selector1_fire or negedge rst) begin
        if (rst==0) begin
            r_plru_evictWay_3 <= 3'b0;
        end
        else begin
            if (w_readSRAM_or_writeSRAM) begin //仅在读SRAM时更新
                r_plru_evictWay_3 <= w_dcache_plru_evict_out_evictWay_3;
            end
        end
    end
    assign o_plru_evictWay_3 = r_plru_evictWay_3;

//mutex3
    cMutexMerge2_1b u_cMutexMerge3(
        .i_drive0    (i_ptw_drive    ),
        .i_drive1    (i_Dtlb_drive    ),

        .i_data0     ( 1'b1  ),
        .i_data1     ( 1'b0  ),
        .i_freeNext  ( w_mutex3_free_wait1  ),
        .rst         ( rst         ),
        
        .o_free0     (     ),//不需要
        .o_free1     ( o_Dtlb_free ),//至少到fifo1才会返回free
        .o_driveNext ( w_mutex3_drive_wait1     ),
        .o_data      ( w_data_mutex3_to_wait1     )  //1 miss,0 hit
    );
    
//wait1
    cWaitMerge2_2b u_cWaitMerge1(
        .i_drive0    ( w_mutex3_drive_wait1    ),
        .i_drive1    ( w_Selector1_drive_wait1   ),

        .i_data0     ( w_data_mutex3_to_wait1    ),
        .i_data1     ( 1'b0  ),
        .i_freeNext  (w_wait1_free_selector2  ),
        .rst         (rst         ),

        .o_free0     (w_mutex3_free_wait1     ),
        .o_free1     ( w_Selector1_free_wait1    ),

        .o_driveNext (w_wait1_drive_selector2 ),
        .o_data      (  {wait1_data_meanless, w_missPte_or_hitPte}    ) //o_data  = {i_data1 , i_data0 }
    );
    
//selector2
    //fire0
    always @(posedge w_Selector2_fire_2[0] or negedge rst) begin
        if (rst==0) begin
            r_dcache_PA_34 <= 34'b0;
            r_missPte_or_hitPte <= 1'b0;
        end
        else begin
            if(w_missPte_or_hitPte==0)r_dcache_PA_34 <= {i_Dtlb_PA_ppn_22, i_lsu_VA_offset_12 };
            else if(w_missPte_or_hitPte==1)r_dcache_PA_34 <= i_ptw_ptePA_34;
            r_missPte_or_hitPte <= w_missPte_or_hitPte;
        end
    end
    assign o_dcache_PA_34 = r_dcache_PA_34;
    assign o_missPte_or_hitPte = r_missPte_or_hitPte;
    
    //dcache_tag_compare

    //
    cSelector5_fire2 u_cSelector5_fire2(
        .rst          (rst          ),
        .i_drive      (w_wait1_drive_selector2      ),
        .o_free       (w_wait1_free_selector2       ),
        .o_fire_2     ( w_Selector2_fire_2    ),

        .valid0       (r_missPte_or_hitPte    ),
        .valid1       (       ),
        .valid2       (       ),
        .valid3       (       ),
        .valid4       (       ),

        .o_driveNext0 ( ),
        .o_driveNext1 ( ),
        .o_driveNext2 ( ),
        .o_driveNext3 ( ),
        .o_driveNext4 ( ),
        .i_freeNext0  (  ),
        .i_freeNext1  (  ),
        .i_freeNext2  (  ),
        .i_freeNext3  (  ),
        .i_freeNext4  (  )
    );
    
    //fire1


//mutex2
    

endmodule
