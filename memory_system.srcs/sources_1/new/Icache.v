`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 21:24:02
// Design Name: 
// Module Name: Icache
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


//2024_0714 δ��Լ����fpgaǰ�� 7.989ns ~ 10.383ns

module Icache(
    input rst,

    //MMU
    input i_Itlb_drive,
    output o_Itlb_free, //��Dcache��ͬ����ҳ����Ҫ��Icache���ڰ�ָ���ifuǰ��������һ�����룬���ÿ�ס
    
    input [33:0] i_Itlb_PA_34,

    //L2 Cache
    input i_L2Cache_drive, i_freeNext_L2Cache,
    output o_L2Cache_free, o_driveNext_L2Cache, //32Bָ���ifu�����ͷ�L2cache

    input [255:0] i_L2Cache_refillLine_32B,
    output [33:0] o_miss_Addr_to_L2cache_34,

    //IFU
    input i_freeNext_ifu,
    output o_driveNext_ifu,

    output [255:0] o_hit_data_to_ifu_32B

    //��������������
    ,output  [1:0] o_fifo_buffer_write_enable_2
    ,output  [33:0] o_fifo2_1_addr_34
    ,output  o_write_enable
    ,output  o_fifo_buffer_data_out

    ); 

//mutex1
    wire w_mutex1_drive_cFifo2_1, w_mutex1_free_cFifo2_1;
    wire w_write_enable;
    wire [33:0] w_mutex1_to_fifo2_1_addr_34;

//fifo2_1
    
    wire w_cFifo2_1_drive_cSelector1, w_cFifo2_1_free_cSelector1;
    wire [1:0] w_cFifo2_fire_2;

    //fire0
    wire w_fifo_replace; //fifoλ��Ϊ0ʱway0���ȣ�Ϊ1ʱway1���ȣ���ȱʧʱ���ȷ�ת���ٻ��Ϊ0ʱ��way0��Ϊ1ʱ��way1
    wire [19:0] w_Icache_addr_tag_20;
    wire [8:0] w_Icache_addr_index_9;
    wire [9:0] w_Icache_SRAM_addr_10;

    reg [33:0] r_fifo2_1_addr_34; //����ȡָ���¼�ʱ���ı�
    reg r_write_enable;
    
    //fire1

    //SRAM
    wire [553:0] Icache_SRAM_data_out_554; //[553:277] way1 [297:278] tag [277] v ; [276:0] way0 [20:1] tag [0] v
    wire [255:0] Icache_SRAM_out_way1_data_256, Icache_SRAM_out_way0_data_256;
    wire [19:0] Icache_SRAM_out_way1_tag_20, Icache_SRAM_out_way0_tag_20;
    wire Icache_SRAM_out_way1_V,Icache_SRAM_out_way0_V;  
    
    //fifo_buffer
    wire w_fifo_buffer_data_out;//fifo1ʱ��fifo buffer
    reg [1:0] r_fifo_buffer_write_enable_2;
    wire w_fifo_buffer_data_in;//spilitter1ʱдfifo buffer

//Selector1
    wire w_Selector1_drive_fifo1,w_Selector1_free_fifo1;
    wire w_Selector1_drive_mutex2,w_Selector1_free_mutex2;
    wire w_Selector1_fire;

    // reg [19:0] r_Icache_addr_tag_20;//���ζ���tag����������
    // reg [8:0] r_Icache_addr_index_9;//���ζ���index, ��������
    // ��ʼ��ĵ�ַֻ��ȡָ��ʱ�ı䣬�ʲ��ô�
    reg r_fifo_buffer_data_out;
    //��תǰ��FIFOλ��ֱ���ø�λָʾ���ʡȥ�ٶ�fifo buffer

    wire [255:0] w_hit_data_Selector2_to_ifu_32B;

//cfifo1
    wire w_fifo1_drive_splitter1,w_fifo1_free_splitter1;
    wire w_fifo1_fire;

//splitter1
    wire w_splitter1_drive_fifo_buffer, w_splitter1_free_fifo_buffer;
    wire w_splitter1_drive_Selector2, w_splitter1_free_Selector2;

//Selector2
    //wire w_Selector2_drive_L2Cache, w_Selector2_free_L2Cache;
    wire w_Selector2_drive_mutex2, w_Selector2_free_mutex2;
    wire w_Selector2_fire;

//mutex2

//reg
    // r_fifo_buffer_write_enable_2
    // r_fifo2_1_addr_34
    // r_write_enable
    // r_fifo_buffer_data_out
    assign  o_fifo_buffer_write_enable_2 = r_fifo_buffer_write_enable_2;
    assign  o_fifo2_1_addr_34 = r_fifo2_1_addr_34;
    assign  o_write_enable = r_write_enable;
    assign  o_fifo_buffer_data_out = r_fifo_buffer_data_out;

    (*dont_touch = "true"*)cMutexMerge2_35b mutex1(
    .i_drive0    (i_Itlb_drive    ),
    .i_drive1    (i_L2Cache_drive    ),

    .i_data0  ({ i_Itlb_PA_34, 1'b0} ),
    .i_data1  ( { r_fifo2_1_addr_34, 1'b1} ), //write_enableλ������ʱΪ1Ϊд

    .i_freeNext  (w_mutex1_free_cFifo2_1  ),
    .rst         (rst         ),
    .o_free0     (o_Itlb_free     ),
    .o_free1     (    ), //o_L2Cache_free ���ڻ�����ɴ�
    .o_driveNext (w_mutex1_drive_cFifo2_1 ),

    .o_data   ( { w_mutex1_to_fifo2_1_addr_34, w_write_enable } )
    //w_write_enable дʱΪ1
 );

    


//fifo2_1
    
    (*dont_touch = "true"*)cFifo2 u_cFifo2_1( //fire[0] fire[1]
        .rst         (rst         ),
        .i_drive     (w_mutex1_drive_cFifo2_1     ),
        .o_free      (w_mutex1_free_cFifo2_1      ),

        .o_driveNext (w_cFifo2_1_drive_cSelector1 ),
        .i_freeNext  (w_cFifo2_1_free_cSelector1  ),

        .o_fire_2    (w_cFifo2_fire_2   )
    );

    //fire0

    always @(posedge w_cFifo2_fire_2[0] or negedge rst) begin
        if (rst == 0) begin
            r_fifo_buffer_write_enable_2[0] <= 1'b1;
            r_fifo2_1_addr_34 <= 34'd0;
            r_write_enable <= 1'd0;
        end
        else begin
            r_fifo_buffer_write_enable_2[0] <= ~r_fifo_buffer_write_enable_2[0];
            if(w_write_enable == 1'b0) r_fifo2_1_addr_34 <= w_mutex1_to_fifo2_1_addr_34;
            r_write_enable <= w_write_enable;
        end
    end
    
    assign w_Icache_addr_tag_20 = r_fifo2_1_addr_34[33:14];
    assign w_Icache_addr_index_9 = r_fifo2_1_addr_34[13:5];

    assign w_Icache_SRAM_addr_10[9:1] = w_Icache_addr_index_9;
    assign w_Icache_SRAM_addr_10[0] = r_write_enable? w_fifo_replace : 1'b0;

    assign w_fifo_replace = r_fifo_buffer_data_out;//��Selector1���ֵ�����������ַ

    //fire1
    Icache_SRAM_bank Icache_SRAM (
  .clka(w_cFifo2_fire_2[1]),            // input wire clka
  //.rsta(rst),            // input wire rsta
  .ena(1'b1),              // input wire ena
  .wea(r_write_enable),              // input wire [0 : 0] wea
  .addra(w_Icache_SRAM_addr_10),          // input wire [9 : 0] addra
  .dina({ i_L2Cache_refillLine_32B, w_Icache_addr_tag_20, 1'b1 }),            // input wire [276 : 0] dina
  .douta( Icache_SRAM_data_out_554 )          // output wire [553 : 0] douta
    // output wire rsta_busy
);

    //Icache�������ʱ���üĴ����棬�����洢����ļĴ���
    assign Icache_SRAM_out_way1_data_256 = Icache_SRAM_data_out_554[553:298];
    assign Icache_SRAM_out_way0_data_256 = Icache_SRAM_data_out_554[276:21];
    assign Icache_SRAM_out_way1_tag_20 = Icache_SRAM_data_out_554[297:28];
    assign Icache_SRAM_out_way0_tag_20 = Icache_SRAM_data_out_554[20:1];
    assign Icache_SRAM_out_way1_V = Icache_SRAM_data_out_554[277];
    assign Icache_SRAM_out_way0_V = Icache_SRAM_data_out_554[0];

    replace_fifo_buffer u_replace_fifo_buffer(
    .rst                                (rst                              ),
    .fire                               ( w_cFifo2_fire_2[1] | w_splitter1_drive_fifo_buffer ), //����Ҫд��fire�����Ĳ���Ҫ
    .i_replace_fifo_buffer_addr_9       (w_Icache_addr_index_9       ), 
    .i_replace_fifo_buffer_write_enable ( r_fifo_buffer_write_enable_2[0] ^ r_fifo_buffer_write_enable_2[1]  ),  //mutex1 Selector1  ������reg��ʵ�ʲ���Ҫ��ô����sram��Ҫ
    .i_data_in                          ( w_fifo_buffer_data_in     ),//w_fifo_buffer_data_in�� Tag compare
    .o_data_out                         (     ),
    .o_w_data_out                       ( w_fifo_buffer_data_out    )
);



//Selector1


    (*dont_touch = "true"*)cSelector2 u_cSelector1(
        .rst          (rst          ),
        .i_drive      (w_cFifo2_1_drive_cSelector1   ),
        .o_free       (w_cFifo2_1_free_cSelector1       ),
        .o_fire       (w_Selector1_fire       ),

        .valid0       (~r_write_enable), 
        .valid1       (r_write_enable ),//����ʱr_write_enable=1����driveNext1

        .o_driveNext0 (w_Selector1_drive_fifo1 ),
        .o_driveNext1 (w_Selector1_drive_mutex2 ),
        .i_freeNext0  (w_Selector1_free_fifo1  ),
        .i_freeNext1  (w_Selector1_free_mutex2  )
    );

    (*dont_touch = "true"*)always @(posedge w_Selector1_fire or negedge rst) begin
        if (rst==0) begin
            // r_Icache_addr_tag_20 <= 20'd0;
            // r_Icache_addr_index_9 <= 9'd0;
            r_fifo_buffer_write_enable_2[1] <= 1'b0;
            r_fifo_buffer_data_out <= 1'd0;
        end
        else begin
            // r_Icache_addr_tag_20 <= w_Icache_addr_tag_20;
            // r_Icache_addr_index_9 <= w_Icache_addr_index_9;
            r_fifo_buffer_write_enable_2[1] <= ~r_fifo_buffer_write_enable_2[1];
            // ��ʼ��ĵ�ַֻ��ȡָ��ʱ�ı䣬�ʲ��ô�
            r_fifo_buffer_data_out <= w_fifo_buffer_data_out;
            // ֱ���ø�λָʾ���ʡȥ�ٶ�fifo buffer
        end
    end

//cfifo1

    (*dont_touch = "true"*)cFifo1 u_cFifo1(
        .i_drive     (w_Selector1_drive_fifo1     ),
        .i_freeNext  (w_fifo1_free_splitter1  ),
        .o_free      (w_Selector1_free_fifo1      ),
        .o_driveNext (w_fifo1_drive_splitter1 ),
        .o_fire_1    (w_fifo1_fire    ),
        .rst         (rst         )
    );
    

    //Tag compare
    wire hit;//�Ƿ�����
    wire [1:0] way_hit_2;//[1] way1 [0] way0��������һ·
    
    (*dont_touch = "true"*)tag_compare u_tag_compare(
        .w_Icache_addr_tag_20            (w_Icache_addr_tag_20            ),
        .Icache_SRAM_out_way1_tag_20     (Icache_SRAM_out_way1_tag_20     ),
        .Icache_SRAM_out_way0_tag_20     (Icache_SRAM_out_way0_tag_20     ),
        .Icache_SRAM_out_way1_V          (Icache_SRAM_out_way1_V          ),
        .Icache_SRAM_out_way0_V          (Icache_SRAM_out_way0_V          ),
        .r_fifo_buffer_data_out          (r_fifo_buffer_data_out          ),
        .Icache_SRAM_out_way1_data_256   (Icache_SRAM_out_way1_data_256   ),
        .Icache_SRAM_out_way0_data_256   (Icache_SRAM_out_way0_data_256   ),

        .hit                             (hit                             ),
        .way_hit_2                       (way_hit_2                       ),
        .w_fifo_buffer_data_in           (w_fifo_buffer_data_in           ),
        .w_hit_data_Selector2_to_ifu_32B (w_hit_data_Selector2_to_ifu_32B )
    );
    


//splitter1

    (*dont_touch = "true"*)cSplitter2 u_cSplitter1(
    .i_drive      (w_fifo1_drive_splitter1      ),
    .i_freeNext0  (w_splitter1_free_fifo_buffer  ),
    .i_freeNext1  (w_splitter1_free_Selector2  ),
    .rst          (rst          ),
    .o_free       (w_fifo1_free_splitter1       ),
    .o_driveNext0 (w_splitter1_drive_fifo_buffer ),
    .o_driveNext1 (w_splitter1_drive_Selector2 )
);
    assign w_splitter1_free_fifo_buffer = i_freeNext_L2Cache;//ֱ��L2Cache��spliltter��free

//Selector2

    (*dont_touch = "true"*)cSelector2 u_cSelector2(
        .rst          (rst          ),
        .i_drive      (w_splitter1_drive_Selector2      ),
        .o_free       (w_splitter1_free_Selector2      ),
        .o_fire       (w_Selector2_fire   ),
        .valid0       (~hit       ),
        .valid1       (hit       ),
        .o_driveNext0 (o_driveNext_L2Cache ),
        .o_driveNext1 (w_Selector2_drive_mutex2 ),
        .i_freeNext0  (i_freeNext_L2Cache  ),
        .i_freeNext1  (w_Selector2_free_mutex2  )
    );
    
    assign o_miss_Addr_to_L2cache_34 = r_fifo2_1_addr_34;

//mutex2
    //r_hit_data_Selector2_to_ifu_32B

    (*dont_touch = "true"*)cMutexMerge2_1b mutex2(
        .i_drive0    (w_Selector2_drive_mutex2    ),
        .i_drive1    (w_Selector1_drive_mutex2  ),
        .i_data0     (     ),
        .i_data1     (     ),
        .i_freeNext  (i_freeNext_ifu  ),
        .rst         (rst         ),
        .o_free0     (w_Selector2_free_mutex2     ),
        .o_free1     (w_Selector1_free_mutex2     ),
        .o_driveNext (o_driveNext_ifu ),
        .o_data      (      )
    );
    
    assign o_L2Cache_free = i_freeNext_ifu; //����32Bָ���ifu���ͷ�L2cache
    assign o_hit_data_to_ifu_32B = r_write_enable ? i_L2Cache_refillLine_32B:w_hit_data_Selector2_to_ifu_32B;

endmodule
