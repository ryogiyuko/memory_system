`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 21:24:02
// Design Name: 
// Module Name: L2Cache
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


module L2Cache(
    input rst,

    //Dcache
    input i_DCache_miss_drive, i_DCache_writeBack_drive, i_freeNext_DCache,
    output o_DCache_miss_free, o_DCache_writeBack_free, o_driveNext_DCache,

    input [33:0] i_miss_Addr_from_L1Cache_34, i_writeBack_Addr_from_L1Cache_34,
    input [255:0] i_L1Cache_writeBackLine_32B,    // L1Cache只传来了数据 DV都是1 D为0的不需要被传直接被覆盖
    output [255:0] o_refillLine_to_L1Cache_32B,   // I D 共用，具体靠事件区分
    
    //Icache
    input  i_ICache_miss_drive, i_freeNext_ICache,
    output o_ICache_miss_free, o_driveNext_ICache,

    //output [255:0] o_refillLine_to_L1Cache_32B,

    // DDR
    input i_DDR_drive, i_freeNext_DDR_miss, i_freeNext_DDR_writeBack,
    output o_DDR_free, o_driveNext_DDR_miss, o_driveNext_DDR_writeBack,// L2Cache也会出现 miss 和 writeBack 两种情况，用两个事件好与ddr交互

    output [33:0] o_miss_Addr_to_DDR_34, o_writeBack_Addr_to_DDR_34,
    input [255:0] i_DDR_refillLine_32B,    
    output [255:0] o_writeBackLine_to_DDR_32B

);

//

// mutex1
    wire w_mutex1_drive_cfifo1, w_mutex1_free_cfifo1; 
    wire [4:0] w_mutex1_data_to_cfifo1_5;

// fifo1 模块cFifo2
    wire w_cfifo1_drive_selector1, w_cfifo1_free_selector1;
    wire [1:0] w_fifo1_fire_2;

    // fire0
    reg [3:0] r_case_number_4;  //0001 L1 miss; 0010 L1 写回; 0100 miss 回填; 1000 写回回填;
    reg [1:0] r_Dcache_or_Icache_2; // [1] Dcache, [0] Icache  记录是从哪来的请求
    // fire1

//  selector1 模块cSelector2

// 2_cfifo2

// selector2 模块cSelector3
    wire w_selector2_drive_mutex1;
    wire w_selector2_free_mutex1;


// mutex0
    wire w_mutex0_drive_arb1, w_mutex0_free_arb1;
    wire [4:0] w_mutex0_data_to_arb1_5;

    (*dont_touch = "true"*)cMutexMerge2_5b u_cMutexMerge2_5b(
        .i_drive0    (i_DCache_miss_drive    ),
        .i_drive1    (i_DCache_writeBack_drive    ),
        .i_data0     ( 5'b00001    ),
        .i_data1     ( 5'b00010    ),
        .i_freeNext  ( w_mutex0_free_arb1 ),

        .rst         (rst         ),
        .o_free0     (o_DCache_miss_free     ),
        .o_free1     (o_DCache_writeBack_free     ),

        .o_driveNext (w_mutex0_drive_arb1 ),
        .o_data      (w_mutex0_data_to_arb1_5      )
    );
    

//arb1
    wire w_arb1_drive_mutex1, w_arb1_free_mutex1;
    wire [4:0] w_arb1_data_to_mutex1_5;

    (*dont_touch = "true"*)cArbMerge2_6b u_cArbMerge2_6b(
        .i_drive0    ( w_mutex0_data_to_arb1_5    ),
        .i_drive1    ( i_ICache_miss_drive   ),
        .i_data0     ( w_mutex0_data_to_arb1_5    ),
        .i_data1     ( 5'b00100   ),

        .i_freeNext  ( w_arb1_free_mutex1  ),
        .rst         (rst         ),
        .o_free0     ( w_mutex0_free_arb1    ),
        .o_free1     ( o_ICache_miss_free   ),

        .o_driveNext ( w_arb1_drive_mutex1),
        .o_data      (w_arb1_data_to_mutex1_5      )
    );


// mutex1
    (*dont_touch = "true"*)cMutexMerge3_5b mutex1(
        
        .i_drive0    ( w_arb1_drive_mutex1 ),   
        .i_drive1    ( w_selector2_drive_mutex1),   
        .i_drive2    ( i_DDR_drive), 
       
        .i_data0     (w_arb1_data_to_mutex1_5), 
        .i_data1     (5'b01000), 
        .i_data2     (5'b10000), 
        
        .i_freeNext  (w_mutex1_free_cfifo1),
        .rst         (rst),

        .o_free0     ( w_arb1_free_mutex1  ),
        .o_free1     ( w_selector2_free_mutex1 ),
        .o_free2     (  ),//o_DDR_free

        .o_driveNext (w_mutex1_drive_cfifo1),
        .o_data      (w_mutex1_data_to_cfifo1_5)
    );

// 1_cfifo2
    (*dont_touch = "true"*)cFifo2 1_cfifo2( // 先fire[0] 后fire[1]

        .rst(rst),
    
        .i_drive(w_mutex1_drive_cfifo2), 
        .o_free(w_mutex1_free_cfifo2), 
    
        .o_driveNext(w_cfifo1_drive_selector1),
        .i_freeNext(w_cfifo1_free_selector1),
    
        .o_fire_2(w_cfifo1_fire_2)
    );

    // fire0    
    // 先进行tag compare 找到需要read或write的L2Cache 
    always @(posedge w_cfifo2_fire_2[0] or negedge rst) begin
        if (rst == 0) begin
            r_case_number_4 <= 4'b0000;
            r_Dcache_or_Icache_2 <= 2'b00;
        end
        else begin
           if ( w_mutex1_data_to_cfifo1_5[0] | w_mutex1_data_to_cfifo1_5[2]) begin
                r_case_number_4 <= 4'b0001;
                if(w_mutex1_data_to_cfifo1_5[0])r_Dcache_or_Icache_2 <= 2'b10;
                else if (w_mutex1_data_to_cfifo1_5[2]) r_Dcache_or_Icache_2 <= 2'b01;
                else r_Dcache_or_Icache_2 <= r_Dcache_or_Icache_2;                 
           end
           else if (w_mutex1_data_to_cfifo1_5[1]) begin
                r_case_number_4 <= 4'b0010;
                r_Dcache_or_Icache_2 <= 2'b10;
           end
           else if (w_mutex1_data_to_cfifo1_5[3]) begin
                r_Dcache_or_Icache_2 <= r_Dcache_or_Icache_2;
                if (r_case_number_4[1]) begin
                    r_case_number_4 <= 4'b0001;
                end
                else begin
                    r_case_number_4 <= r_case_number_4;
                end
           end
           else if (w_mutex1_data_to_cfifo1_5[4]) begin
                r_Dcache_or_Icache_2 <= r_Dcache_or_Icache_2;
                if (r_case_number_4[0]) begin
                    r_case_number_4 <= 4'b0100;
                end
                else if (r_case_number_4[1]) begin
                    r_case_number_4 <= 4'b1000;
                end
                else begin
                    r_case_number_4 <= r_case_number_4;
                end
           end
           else begin
                r_case_number_4 <= 4'b0;
                r_Dcache_or_Icache_2 <= 2'b0;
           end
        end
    end

    // fire1
    
//selector1 
    //o_driveNext_DDR_miss i_freeNext_DDR_miss
    wire w_selector1_drive_selector2,w_selector1_free_selector2;
    wire w_selector1_fire;

    cSelector2 selector1(
        .rst          (rst          ),
        .i_drive      ( w_cfifo1_drive_selector1     ),
        .o_free       ( w_cfifo1_free_selector1      ),

        .o_fire       ( w_selector1_fire      ),

        .valid0       (       ),
        .valid1       (       ),
        .o_driveNext0 (o_driveNext_DDR_miss ),
        .o_driveNext1 (w_selector1_drive_selector2 ),
        .i_freeNext0  (i_freeNext_DDR_miss ),
        .i_freeNext1  (w_selector1_free_selector2  )
    );
    
//selector2
    


endmodule