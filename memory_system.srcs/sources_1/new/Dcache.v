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

    input [33:0]    i_lsu_PA_34,
    input [31:0]    i_lsu_storeData_32,
    input [5:0]     i_lsu_storeIndex_6, //��ţ�д��ɺ󷢻�LSU
    input i_lsu_load_or_store,          //1 load 0 store
    output [5:0]    o_storeIndex_to_lsu_6,

    //retire
    input  i_freeNext_retire_store, i_freeNext_retire_load,
    output o_driveNext_retire_store, o_driveNext_retire_load,

    output [31:0] o_loadData_to_retire_32,

    //MMU
    input i_ptw_drive, i_freeNext_ptw,
    output o_ptw_free, o_driveNext_ptw,

    input [33:0] i_ptw_ptePA_34,
    output [31:0] o_pte_32,

    //L2Cache
    input  i_L2cache_drive, i_freeNext_L2cache_writeBack, i_freeNext_L2cache_miss,
    output o_L2cache_free, o_driveNext_L2cache_writeBack, o_driveNext_L2cache_miss,

    input  [255:0]  i_L2cache_refill_32B,
    output [33:0]  o_miss_addr_34,o_writeBack_addr_34,
    output [255:0] o_writeBack_32B//sram���֣��������
    
    //������
    ,output [5:0] o_r_case_number_6
    ,output [11:0] o_dcache_offset_12
    ,output [2:0] o_plru_evictWay_3,o_r_hit_way_3
    ,output [33:0] o_dcache_PA_34,o_r_writeBack_addr_34
    ,output o_r_hit, o_r_dirty
    );


//arb1
    wire w_arb1_drive_mutex1, w_arb1_free;
    wire [5:0] w_arb1Data_to_mutex1;

//mutex1(pmt)
    wire w_mutex1_drive_pmtfifo1, w_mutex1_free_pmtfifo1;
    wire [5:0] w_mutex1_data_to_pmtfifo1_6;
    wire mutex1_pmt_to_pmtfifo;

//pmtfifo1 cpmtfifo2
    wire w_pmtfifo1_drive_selector1, w_pmtfifo1_free_selector1;
    wire [1:0] w_pmtfifo1_fire_2;

    //fire0
    wire w_lsu_load_or_store;//lsu 1 load 0 store��
    reg w_readSRAM_or_writeSRAM, w_write_or_refill; //SRAM 1�� 0д(������)��Dcache 1 д 0 ����

    reg [5:0] r_case_number_6;//�����룺 5������ϣ�д����  4���У�д����  3���λ���  2��ѯҳ��  1һ�λ���  0��д
    reg [11:0] r_dcache_offset_12;
    wire [33:0] w_dcache_PA_34;
    

    wire w_dataSRAM0_write_enable, w_dataSRAM1_write_enable, w_tagSRAM_write_enable, w_d_v_write_enable;
    reg  [8:0] w_Data_SRAM_addr_9; //5λ��ʱ���飬3λд��ʱ��ѡ·��1λд��ʱ��ѡ16B�е�8B
    wire [7:0] w_tag_D_V_addr_8;//5λ��ʱ���飬3λд��ʱ��ѡ·
    wire [4:0] w_PLRU_addr_5; //5λ��дʱ����

    //fire1
    reg [63:0]w_dataSRAM0_datain_64, w_dataSRAM1_datain_64;
    wire [21:0]w_tagSRAM_datain_22;

    wire [255:0] w_dataSRAM_out_way0_32B, w_dataSRAM_out_way1_32B,w_dataSRAM_out_way2_32B, w_dataSRAM_out_way3_32B;
    wire [255:0] w_dataSRAM_out_way4_32B, w_dataSRAM_out_way5_32B, w_dataSRAM_out_way6_32B, w_dataSRAM_out_way7_32B;  
    wire [21:0] w_tagSRAM_out_way0_22, w_tagSRAM_out_way1_22, w_tagSRAM_out_way2_22, w_tagSRAM_out_way3_22;
    wire [21:0] w_tagSRAM_out_way4_22, w_tagSRAM_out_way5_22, w_tagSRAM_out_way6_22, w_tagSRAM_out_way7_22;
    
    wire [1:0] w_D_V_buffer_dataIn_2; // 1λ D,0λ V 
    wire [15:0] w_D_V_buffer_dataOut_16;

//selector1
    wire w_Selector1_drive_selector2, w_Selector1_free_selector2;    
    wire w_Selector1_drive_mutex1_refill, w_Selector1_free_mutex1_refill;
    wire w_Selector1_drive_mutex1_write, w_Selector1_free_mutex1_write;
    wire w_Selector1_drive_mutex2_readComplete, w_Selector1_free_mutex2_readComplete;
    wire w_Seletcor1_drive_mutex3, w_Seletcor1_free_mutex3;

    //wire w_Selector1_drive_mutex3_ptePA, w_Selector1_free_mutex3_ptePA;

    wire w_Selector1_fire;

    wire [2:0] w_dcache_plru_evict_out_evictWay_3;//����滻����
    reg [2:0] r_plru_evictWay_3; //��¼�滻����
    

//selector2
    // wire w_Selector2_drive_last1, w_Selector2_free_last1;
    wire w_Selector2_drive_mutex1, w_Selector2_free_mutex1;
    wire w_Selector2_drive_mutex2, w_Selector2_free_mutex2;
    wire w_Selector2_drive_mutex3, w_Selector2_free_mutex3;

    wire [1:0] w_Selector2_fire_2;

    //fire0
    reg [33:0] r_dcache_PA_34; //L2Ѱ�������ʹ��
    reg [1:0] r_PA_or_ptePA_2; //���ڻ���ʱ�������ǲ��Ƕ�ҳ��, 1 lsu��д 0 ptw��ҳ��

    wire w_hit, w_dirty;
    wire [255:0] w_hitway_data_32B, w_evict_way_32B;
    wire [7:0] w_way_hit_8, w_way_dirty_8;
    wire [2:0] w_hit_way_3;

    //fire1
    reg [2:0] r_hit_way_3;
    reg r_hit, r_dirty;

    wire w_PLRU_write_enable;
    wire [6:0] w_plru_buffer_dataIn_7;
    wire [6:0] w_plru_buffer_out_7; //plru buffer�������ʵʱ�仯��������¼�
    wire [21:0] w_evict_tag_22;

//mutex2

//mutex3


//����Ҫ����ģ���free
    // assign o_lsu_free = o_driveNext_retire; //����ɻ�д��ɵ�drive���ˣ��ٸ�lsu free���ɽ����¸����룩
    // assign o_ptw_free = o_driveNext_ptw; //��ҳ����ɵ�drive���ˣ��ٸ�free
    assign o_L2cache_free = w_Selector1_drive_mutex1_write | w_Selector1_drive_mutex2_readComplete | w_Seletcor1_drive_mutex3;
    
    wire w_lsu_free, w_ptw_free;
    assign o_lsu_free = o_driveNext_lsu | o_driveNext_retire_load;
    assign o_ptw_free = o_driveNext_ptw;
    //assign w_arb1_free = w_lsu_free | w_ptw_free;

//arb1
    (*dont_touch = "true"*)cArbMerge2_6b u_cArbMerge2_6b(
        .i_drive0    (i_lsu_drive    ),
        .i_drive1    (i_ptw_drive    ),
        .i_data0     (6'b000001      ),
        .i_data1     (6'b000100      ),
        .i_freeNext  (w_arb1_free       ),
        .rst         (rst         ),
        .o_free0     (     ),//o_lsu_free
        .o_free1     (    ),//o_ptw_free
        .o_driveNext (w_arb1_drive_mutex1 ),
        .o_data      (w_arb1Data_to_mutex1     )
    );
    

//mutex1(pmt)

    (*dont_touch = "true"*)cMutexMerge6_outpmt_6b u_cMutexMerge6_outpmt_6b(
        
        .i_drive0    (1'b0    ),
        .i_drive1    (i_L2cache_drive    ),
        .i_drive2    (w_arb1_drive_mutex1    ),
        .i_drive3    (w_Selector1_drive_mutex1_refill    ),
        .i_drive4    (w_Selector2_drive_mutex1    ),
        .i_drive5    (w_Selector1_drive_mutex1_write    ),

        .i_data0     (6'b000001    ), 
        .i_data1     (6'b000010     ), //һ�λ���
        .i_data2     (w_arb1Data_to_mutex1     ), //��дor��ѯҳ��
        .i_data3     (6'b001000     ), //���λ���
        .i_data4     (6'b010000     ), //���У�д����
        .i_data5     (6'b100000     ), //������ϣ�д����
        
        .i_freeNext  (w_mutex1_free_pmtfifo1  ),
        .rst         (rst         ),
        .o_free0     (     ),
        .o_free1     (     ),//o_L2cache_free �ȶ��λ������
        .o_free2     (w_arb1_free     ),//  w_arb1_free ���ܹ����; o_ptw_free �ȶ�ҳ����� ,o_lsu_free �ȶ�д���
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
            
            if (w_mutex1_data_to_pmtfifo1_6[0]) begin
                r_dcache_offset_12 <= i_lsu_PA_34[11:0];
            end
            else if ( w_mutex1_data_to_pmtfifo1_6[2]) begin
                r_dcache_offset_12 <= i_ptw_ptePA_34[11:0];
            end
            else begin
                r_dcache_offset_12 <= r_dcache_offset_12;
            end
        end
    end
    assign o_r_case_number_6 = r_case_number_6;
    assign o_dcache_offset_12 = r_dcache_offset_12;

    assign w_dcache_PA_34[11:0] = r_dcache_offset_12;
    assign w_dcache_PA_34[33:12] = r_case_number_6[0] ? i_lsu_PA_34[33:12]:(r_case_number_6[2] ? i_ptw_ptePA_34[33:12] : 22'b0) ;

    assign w_lsu_load_or_store = i_lsu_load_or_store;
    // assign w_ptePA_or_PA = r_case_number_6[2];
    // assign w_PA_offset_12 = w_ptePA_or_PA ? i_ptw_ptePA_34[11:0] : i_lsu_VA_offset_12;

    always @( *) begin
        if ( r_case_number_6[2] | r_case_number_6[0]) begin
            w_readSRAM_or_writeSRAM = 1'b1;
        end
        else if ( r_case_number_6[5] |r_case_number_6[4] | r_case_number_6[3] |r_case_number_6[1]) begin
            w_readSRAM_or_writeSRAM = 1'b0;
        end
        else w_readSRAM_or_writeSRAM = 1'b1;//��ʼ����Ϊ��״̬

        if (r_case_number_6[3] | r_case_number_6[1]) begin
            w_write_or_refill = 1'b0;
        end
        else if (r_case_number_6[5] |r_case_number_6[4]) begin
            w_write_or_refill = 1'b1;
        end
        else w_write_or_refill = 1'b0;
    end

    assign w_dataSRAM0_write_enable = ((r_case_number_6[5] | r_case_number_6[4]) & ~r_dcache_offset_12[4] ) | r_case_number_6[3] |r_case_number_6[1];
    assign w_dataSRAM1_write_enable =((r_case_number_6[5] |r_case_number_6[4]) & r_dcache_offset_12[4] ) | r_case_number_6[3] |r_case_number_6[1];
    assign w_tagSRAM_write_enable = r_case_number_6[1];
    assign w_d_v_write_enable = r_case_number_6[5] | r_case_number_6[4] | r_case_number_6[1]; // 1 D=0,V=1; 4 5 D=1,V=1

    always @( *) begin
       if (r_case_number_6[0] | r_case_number_6[2]) begin
            w_Data_SRAM_addr_9 = { r_dcache_offset_12[11:7] , 4'b0 };
            w_dataSRAM0_datain_64 = 64'b0;
            w_dataSRAM1_datain_64 = 64'b0;
       end
       else if (r_case_number_6[1]) begin
            w_Data_SRAM_addr_9 = { r_dcache_offset_12[11:7] , r_plru_evictWay_3 , 1'b0};
            w_dataSRAM0_datain_64 = i_L2cache_refill_32B[63:0];
            w_dataSRAM1_datain_64 = i_L2cache_refill_32B[191:128];
       end 
       else if (r_case_number_6[3]) begin
            w_Data_SRAM_addr_9 = { r_dcache_offset_12[11:7] , r_plru_evictWay_3 , 1'b1};
            w_dataSRAM0_datain_64 = i_L2cache_refill_32B[127:64];
            w_dataSRAM1_datain_64 = i_L2cache_refill_32B[255:192];
       end
       else if ( r_case_number_6[5]) begin
            w_Data_SRAM_addr_9 = { r_dcache_offset_12[11:7] , r_plru_evictWay_3 , r_dcache_offset_12[3] };
            
            case (r_dcache_offset_12[3:2])
                2'b00:begin
                  w_dataSRAM0_datain_64 = { i_L2cache_refill_32B[63:32], i_lsu_storeData_32};
                  w_dataSRAM1_datain_64 = { i_L2cache_refill_32B[191:160], i_lsu_storeData_32};
                end
                2'b01:begin
                  w_dataSRAM0_datain_64 = { i_lsu_storeData_32, i_L2cache_refill_32B[31:0] };
                  w_dataSRAM1_datain_64 = { i_lsu_storeData_32, i_L2cache_refill_32B[159:128] };
                end
                2'b10:begin
                  w_dataSRAM0_datain_64 = { i_L2cache_refill_32B[127:96], i_lsu_storeData_32};
                  w_dataSRAM1_datain_64 = { i_L2cache_refill_32B[255:224], i_lsu_storeData_32};
                end
                2'b11:begin
                  w_dataSRAM0_datain_64 = { i_lsu_storeData_32, i_L2cache_refill_32B[95:64] };
                  w_dataSRAM1_datain_64 = { i_lsu_storeData_32, i_L2cache_refill_32B[223:128] };
                end 
                default:begin
                  w_dataSRAM0_datain_64 = 64'b0;
                  w_dataSRAM1_datain_64 = 64'b0;
                end 
            endcase
       end
       else if ( r_case_number_6[4] ) begin
            w_Data_SRAM_addr_9 = { r_dcache_offset_12[11:7] , r_hit_way_3 , r_dcache_offset_12[3] };

            case (r_dcache_offset_12[3:2])
                2'b00:begin
                  w_dataSRAM0_datain_64 = { w_hitway_data_32B[63:32], i_lsu_storeData_32};
                  w_dataSRAM1_datain_64 = { w_hitway_data_32B[191:160], i_lsu_storeData_32};
                end
                2'b01:begin
                  w_dataSRAM0_datain_64 = { i_lsu_storeData_32, w_hitway_data_32B[31:0] };
                  w_dataSRAM1_datain_64 = { i_lsu_storeData_32, w_hitway_data_32B[159:128] };
                end
                2'b10:begin
                  w_dataSRAM0_datain_64 = { w_hitway_data_32B[127:96], i_lsu_storeData_32};
                  w_dataSRAM1_datain_64 = { w_hitway_data_32B[255:224], i_lsu_storeData_32};
                end
                2'b11:begin
                  w_dataSRAM0_datain_64 = { i_lsu_storeData_32, w_hitway_data_32B[95:64] };
                  w_dataSRAM1_datain_64 = { i_lsu_storeData_32, w_hitway_data_32B[223:128] };
                end 
                default:begin
                  w_dataSRAM0_datain_64 = 64'b0;
                  w_dataSRAM1_datain_64 = 64'b0;
                end 
            endcase
       end
       else begin
            w_Data_SRAM_addr_9 = 9'b0;
            w_dataSRAM0_datain_64 = 64'b0;
            w_dataSRAM1_datain_64 = 64'b0;
       end
    end

    assign w_tag_D_V_addr_8 = w_Data_SRAM_addr_9[8:1];
    assign w_PLRU_addr_5 = r_dcache_offset_12[11:7];

    assign w_tagSRAM_datain_22 = r_dcache_PA_34[33:12];

    //fire1     

    //low 16B
    Dcache_bank_dataSram0 u_Dcache_bank_dataSram0 (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(w_dataSRAM0_write_enable),      // input wire [0 : 0] wea
    .addra(w_Data_SRAM_addr_9),  // input wire [8 : 0] addra  //Dcache_ram_addr_9 = i_lsu_addr_offset_12[11:7]+write_enable ? 3'b0 : sel_way_3+i_lsu_addr_offset_12[3]
    .dina(w_dataSRAM0_datain_64),    // input wire [63 : 0] dina
    .douta({w_dataSRAM_out_way7_32B[127:0], w_dataSRAM_out_way6_32B[127:0], w_dataSRAM_out_way5_32B[127:0], w_dataSRAM_out_way4_32B[127:0], w_dataSRAM_out_way3_32B[127:0], w_dataSRAM_out_way2_32B[127:0], w_dataSRAM_out_way1_32B[127:0], w_dataSRAM_out_way0_32B[127:0]})  // output wire [1023 : 0] douta
    );

    //high 16B
    Dcache_bank_dataSram1 u_Dcache_bank_dataSram1 (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(w_dataSRAM1_write_enable),      // input wire [0 : 0] wea
    .addra(w_Data_SRAM_addr_9),  // input wire [8 : 0] addra
    .dina(w_dataSRAM1_datain_64),    // input wire [63 : 0] dina
    .douta({w_dataSRAM_out_way7_32B[255:128], w_dataSRAM_out_way6_32B[255:128], w_dataSRAM_out_way5_32B[255:128], w_dataSRAM_out_way4_32B[255:128], w_dataSRAM_out_way3_32B[255:128], w_dataSRAM_out_way2_32B[255:128], w_dataSRAM_out_way1_32B[255:128], w_dataSRAM_out_way0_32B[255:128]})  // output wire [1023 : 0] douta
    );

    Dcache_bank_tagSRAM u_Dcache_bank_tagSRAM (
  .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(w_tagSRAM_write_enable),      // input wire [0 : 0] wea
  .addra(w_tag_D_V_addr_8),  // input wire [7 : 0] addra
  .dina(w_tagSRAM_datain_22),    // input wire [21 : 0] dina
  .douta({w_tagSRAM_out_way7_22, w_tagSRAM_out_way6_22, w_tagSRAM_out_way5_22, w_tagSRAM_out_way4_22, w_tagSRAM_out_way3_22, w_tagSRAM_out_way2_22, w_tagSRAM_out_way1_22, w_tagSRAM_out_way0_22})  // output wire [175 : 0] douta
    );
    


    assign w_D_V_buffer_dataIn_2[0] = 1;
    assign w_D_V_buffer_dataIn_2[1] = w_write_or_refill ? 1:0 ;

    Dcache_D_V_buffer u_Dcache_D_V_buffer(
        .rst                 (rst                 ),
        .fire                (w_pmtfifo1_fire_2[1] ),
        .i_D_V_buffer_addr_8 (w_tag_D_V_addr_8 ),
        .i_D_V_write_enable  (w_d_v_write_enable  ),
        .i_data_in_2         (w_D_V_buffer_dataIn_2         ),
        .o_w_data_out_16     (w_D_V_buffer_dataOut_16     )
    );
    
//selector1
    
    (*dont_touch = "true"*)cSelector6 u_cSelector6(
        .rst          (rst          ),
        .i_drive      (w_pmtfifo1_drive_selector1      ),
        .o_free       (w_pmtfifo1_free_selector1       ),
        .o_fire       (w_Selector1_fire       ),

        .valid0       (r_PA_or_ptePA_2[0] & r_case_number_6[2]      ),
        .valid1       (r_case_number_6[1]       ),
        .valid2       (r_PA_or_ptePA_2[1] & r_case_number_6[3] &  (~w_lsu_load_or_store) ),
        .valid3       (r_PA_or_ptePA_2[1] & r_case_number_6[3] &  w_lsu_load_or_store       ),
        .valid4       (r_case_number_6[4] & r_case_number_6[5]      ),
        .valid5       (r_PA_or_ptePA_2[0] & r_case_number_6[3]),

        .o_driveNext0 (w_Selector1_drive_selector2 ),
        .o_driveNext1 (w_Selector1_drive_mutex1_refill ),
        .o_driveNext2 (w_Selector1_drive_mutex1_write ),
        .o_driveNext3 (w_Selector1_drive_mutex2_readComplete ),
        .o_driveNext4 (o_driveNext_retire_store ),
        .o_driveNext5 (w_Seletcor1_drive_mutex3 ),

        .i_freeNext0  (w_Selector1_free_selector2  ),
        .i_freeNext1  (w_Selector1_free_mutex1_refill  ),
        .i_freeNext2  (w_Selector1_free_mutex1_write  ),
        .i_freeNext3  (w_Selector1_free_mutex2_readComplete  ),
        .i_freeNext4  (i_freeNext_retire_store  ),
        .i_freeNext5  (w_Seletcor1_free_mutex3  )
    );

    assign o_driveNext_lsu = o_driveNext_retire_store; //out_to_lsu
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
            if (w_readSRAM_or_writeSRAM==1'b1) begin //���ڶ�SRAMʱ����  plru bufferҲ���Ա�֤
                r_plru_evictWay_3 <= w_dcache_plru_evict_out_evictWay_3;
            end
            else begin
                r_plru_evictWay_3 <= r_plru_evictWay_3;
            end
        end
    end
    assign o_plru_evictWay_3 = r_plru_evictWay_3;
    
//selector2
    //fire0
    always @(posedge w_Selector2_fire_2[0] or negedge rst) begin
        if (rst==0) begin
            r_dcache_PA_34 <= 34'b0;
            r_PA_or_ptePA_2 <= 2'b0;
        end
        else begin
            r_dcache_PA_34 <= w_dcache_PA_34;
            if(r_case_number_6[0]) r_PA_or_ptePA_2 <= 2'b10;
            else if(r_case_number_6[2]) r_PA_or_ptePA_2 <= 2'b01;
            else r_PA_or_ptePA_2 <= 2'b00;
        end
    end
    assign o_dcache_PA_34 = r_dcache_PA_34;

    
    //dcache_tag_compare
    (*dont_touch = "true"*)dcache_tag_compare u_dcache_tag_compare(
        //input
        .w_dcache_pa_tag_22      (w_dcache_PA_34[33:12]     ),
        .w_dataSRAM_out_way0_32B (w_dataSRAM_out_way0_32B ),
        .w_dataSRAM_out_way1_32B (w_dataSRAM_out_way1_32B ),
        .w_dataSRAM_out_way2_32B (w_dataSRAM_out_way2_32B ),
        .w_dataSRAM_out_way3_32B (w_dataSRAM_out_way3_32B ),
        .w_dataSRAM_out_way4_32B (w_dataSRAM_out_way4_32B ),
        .w_dataSRAM_out_way5_32B (w_dataSRAM_out_way5_32B ),
        .w_dataSRAM_out_way6_32B (w_dataSRAM_out_way6_32B ),
        .w_dataSRAM_out_way7_32B (w_dataSRAM_out_way7_32B ),
        .w_tagSRAM_out_way0_22   (w_tagSRAM_out_way0_22   ),
        .w_tagSRAM_out_way1_22   (w_tagSRAM_out_way1_22   ),
        .w_tagSRAM_out_way2_22   (w_tagSRAM_out_way2_22   ),
        .w_tagSRAM_out_way3_22   (w_tagSRAM_out_way3_22   ),
        .w_tagSRAM_out_way4_22   (w_tagSRAM_out_way4_22   ),
        .w_tagSRAM_out_way5_22   (w_tagSRAM_out_way5_22   ),
        .w_tagSRAM_out_way6_22   (w_tagSRAM_out_way6_22   ),
        .w_tagSRAM_out_way7_22   (w_tagSRAM_out_way7_22   ),
        .w_D_V_buffer_dataOut_16 (w_D_V_buffer_dataOut_16 ),
        .r_plru_evictWay_3       (r_plru_evictWay_3       ),
        .w_plru_buffer_out_7     (w_plru_buffer_out_7     ),

        //output
        .w_hit                   (w_hit                   ),
        .w_dirty                 (w_dirty                 ),
        .w_hitway_data_32B       (w_hitway_data_32B       ),
        .w_evict_way_32B         (w_evict_way_32B         ),
        .w_way_hit_8             (w_way_hit_8             ),
        .w_way_dirty_8           (w_way_dirty_8           ),
        .w_hit_way_3             (w_hit_way_3             ),
        .w_plru_buffer_dataIn_7  (w_plru_buffer_dataIn_7  ),
        .w_evict_tag_22          (w_evict_tag_22)
    );
    

    //
    (*dont_touch = "true"*)cSelector5_fire2 u_cSelector5_fire2(
        .rst          (rst          ),
        .i_drive      ( w_Selector1_drive_selector2      ),
        .o_free       ( w_Selector1_free_selector2      ),
        .o_fire_2     ( w_Selector2_fire_2    ),

        .valid0       (  (~r_hit) & r_dirty  ), 
        .valid1       (  (~r_hit) & (~r_dirty) ),
        .valid2       (  r_case_number_6[0] &  (~w_lsu_load_or_store)  & r_hit  ),
        .valid3       (  r_case_number_6[2] &  r_hit      ),
        .valid4       (  r_case_number_6[0] &  w_lsu_load_or_store     & r_hit     ),

        .o_driveNext0 (o_driveNext_L2cache_writeBack ),
        .o_driveNext1 (o_driveNext_L2cache_miss ),
        .o_driveNext2 (w_Selector2_drive_mutex1 ),
        .o_driveNext3 (w_Selector2_drive_mutex3 ),
        .o_driveNext4 (w_Selector2_drive_mutex2 ),
        
        .i_freeNext0  (i_freeNext_L2cache_writeBack ),
        .i_freeNext1  (i_freeNext_L2cache_miss  ),
        .i_freeNext2  (w_Selector2_free_mutex1  ),
        .i_freeNext3  (w_Selector2_free_mutex3  ),
        .i_freeNext4  (w_Selector2_free_mutex2  )
    );
    
    reg [33:0] r_writeBack_addr_34;

    assign o_miss_addr_34 = r_dcache_PA_34;
    assign o_writeBack_addr_34 = r_writeBack_addr_34;
    assign o_writeBack_32B = w_evict_way_32B;

    //fire1
    always @(posedge w_Selector2_fire_2[1] or negedge rst) begin
        if (rst==0) begin
            r_hit_way_3 <= 3'b0;
            r_hit <= 1'b0;
            r_dirty <= 1'b0;
            r_writeBack_addr_34 <= 34'b0;
        end
        else begin
            r_hit_way_3 <= w_hit_way_3;
            r_hit <= w_hit;
            r_dirty <= w_dirty;
            r_writeBack_addr_34[4:0] <= 5'b0;
            r_writeBack_addr_34[11:5] <= r_dcache_PA_34[11:5];
            r_writeBack_addr_34[33:12] <= w_evict_tag_22; 
        end
    end
    
    assign o_r_writeBack_addr_34 = r_writeBack_addr_34 ;
    assign o_r_hit_way_3 = r_hit_way_3;
    assign o_r_hit = r_hit;
    assign o_r_dirty = r_dirty;

    //plru_buffer
    assign w_PLRU_write_enable = (r_case_number_6[0] | r_case_number_6[2]);

    Dcache_plru_buffer u_Dcache_plru_buffer(
        .rst                  (rst                  ),
        .fire                 (w_Selector2_fire_2[1]    ),
        .i_plru_buffer_addr_5 (w_PLRU_addr_5 ),
        .i_plru_write_enable  ( w_PLRU_write_enable ),
        .i_data_in_7          (w_plru_buffer_dataIn_7          ),
        .o_w_data_out_7       (w_plru_buffer_out_7       )
    );
    
    //output
    reg [31:0] w_load_result_32;

    always @( *) begin
        if (r_case_number_6[0] | r_case_number_6[2]) begin
           case (r_dcache_PA_34[4:2])
                3'b000: begin
                w_load_result_32 = w_hitway_data_32B[31:0];
                end
                3'b001: begin
                w_load_result_32 = w_hitway_data_32B[63:32];
                end
                3'b010: begin
                w_load_result_32 = w_hitway_data_32B[95:64];
                end
                3'b011: begin
                w_load_result_32 = w_hitway_data_32B[127:96];
                end
                3'b100: begin
                w_load_result_32 = w_hitway_data_32B[159:128];
                end
                3'b101: begin
                w_load_result_32 = w_hitway_data_32B[191:160];
                end
                3'b110: begin
                w_load_result_32 = w_hitway_data_32B[223:192];
                end
                3'b111: begin
                w_load_result_32 = w_hitway_data_32B[255:224];
                end
                default: w_load_result_32 = 32'b0;
            endcase 
        end
        else if (r_case_number_6[3]) begin
            case (r_dcache_PA_34[4:2])
                3'b000: begin
                w_load_result_32 = i_L2cache_refill_32B[31:0];
                end
                3'b001: begin
                w_load_result_32 = i_L2cache_refill_32B[63:32];
                end
                3'b010: begin
                w_load_result_32 = i_L2cache_refill_32B[95:64];
                end
                3'b011: begin
                w_load_result_32 = i_L2cache_refill_32B[127:96];
                end
                3'b100: begin
                w_load_result_32 = i_L2cache_refill_32B[159:128];
                end
                3'b101: begin
                w_load_result_32 = i_L2cache_refill_32B[191:160];
                end
                3'b110: begin
                w_load_result_32 = i_L2cache_refill_32B[223:192];
                end
                3'b111: begin
                w_load_result_32 = i_L2cache_refill_32B[255:224];
                end
            default: w_load_result_32 = 32'b0;
            endcase
        end
        else w_load_result_32 = 32'b0;
    end

//mutex2
    (*dont_touch = "true"*)cMutexMerge2_1b u_cMutexMerge2(
        .i_drive0    ( w_Selector1_drive_mutex2_readComplete    ),
        .i_drive1    ( w_Selector2_drive_mutex2   ),
        .i_data0     (     ),
        .i_data1     (     ),
        .i_freeNext  ( i_freeNext_retire_load ),
        .rst         (rst         ),
        .o_free0     ( w_Selector1_free_mutex2_readComplete    ),
        .o_free1     ( w_Selector2_free_mutex2    ),
        .o_driveNext ( o_driveNext_retire_load ),
        .o_data      (      )
    );
    
    assign o_loadData_to_retire_32 = w_load_result_32;

//mutex3
    (*dont_touch = "true"*)cMutexMerge2_1b u_cMutexMerge3(
        .i_drive0    ( w_Seletcor1_drive_mutex3    ),
        .i_drive1    ( w_Selector2_drive_mutex3   ),
        .i_data0     (     ),
        .i_data1     (     ),
        .i_freeNext  ( i_freeNext_ptw ),
        .rst         ( rst         ),
        .o_free0     ( w_Seletcor1_free_mutex3    ),
        .o_free1     ( w_Selector2_free_mutex3    ),
        .o_driveNext ( o_driveNext_ptw),
        .o_data      (      )
    );

    assign o_pte_32 = w_load_result_32;

endmodule