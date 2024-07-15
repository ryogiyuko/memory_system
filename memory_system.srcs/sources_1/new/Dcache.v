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
    input i_lsu_drive,  o_freeNext_lsu,
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
    input i_Dtlb_drive,i_ptw_drive, i_freeNext_ptw,
    output o_Dtlb_free,o_ptw_free, o_driveNext_ptw,

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

    );

    assign o_storeIndex_to_lsu_6 = i_lsu_storeIndex_6;
    assign o_lsu_free = o_driveNext_retire; //读完成或写完成的drive来了，再给lsu free（可接受下个输入）
    assign o_ptw_free = o_driveNext_ptw; //读页表完成的drive来了，再给free

//mutex1(pmt)
    wire w_mutex1_drive_pmtfifo1, w_mutex1_free_pmtfifo1;
    wire [5:0] w_mutex1_data_to_pmtfifo1_6;
    wire mutex1_pmt_to_pmtfifo;

//pmtfifo1 cpmtfifo2
    wire w_pmtfifo1_drive_selector1, w_pmtfifo1_free_selector1;
    wire [1:0] w_pmtfifo1_fire_2;

    //fire0

    //fire1


//selector1
    wire w_Selector1_drive_mutex1_refill, w_Selector1_free_mutex1_refill;
    wire w_Selector1_drive_mutex1_write, w_Selector1_free_mutex1_write;

//wait1

//fifo1

//selector2
    wire w_Selector2_drive_mutex1, w_Selector2_free_mutex1;

//mutex2

    //触发器



//mutex1(pmt)

    cMutexMerge6_outpmt_6b u_cMutexMerge6_outpmt_6b(
        
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


    cPmtFifo2 u_PmtFifo1(
        .rst         (rst         ),
        .i_drive     (w_mutex1_drive_pmtfifo1     ),
        .o_free      (w_mutex1_free_pmtfifo1      ),

        .o_driveNext (w_pmtfifo1_drive_selector1 ),
        .i_freeNext  (w_pmtfifo1_free_selector1  ),

        .pmt         ( mutex1_pmt_to_pmtfifo        ),
        .o_fire_2    (w_pmtfifo1_fire_2    )
    );
    
    //fire0 
    //i_lsu_load_or_store
    wire w_dataSRAM0_write_enable, w_dataSRAM1_write_enable, w_tagSRAM_write_enable;
    wire w_d_v_write_enable;

    reg [5:0] r_case_number_6;
    //独热码：回填完毕，写操作 命中，写操作 二次回填 查询页表 一次回填 读写
    assign o_r_case_number_6 = r_case_number_6;

    always @(posedge w_pmtfifo1_fire_2[0]  or negedge rst) begin
        if (rst==0) begin
            r_case_number_6 <= 6'b0;             
        end
        else begin
            r_case_number_6 <= w_mutex1_data_to_pmtfifo1_6;
        end
    end

    //fire1

    Dcache_bank_dataSram0 your_instance_name (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(),      // input wire [0 : 0] wea
    .addra(),  // input wire [8 : 0] addra
    .dina(),    // input wire [63 : 0] dina
    .douta()  // output wire [1023 : 0] douta
    );

    Dcache_bank_dataSram1 your_instance_name (
    .clka(w_pmtfifo1_fire_2[1]),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(),      // input wire [0 : 0] wea
    .addra(),  // input wire [8 : 0] addra
    .dina(),    // input wire [63 : 0] dina
    .douta()  // output wire [1023 : 0] douta
    );


    

endmodule
