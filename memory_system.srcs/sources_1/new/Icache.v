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


module Icache(
    input rst,

    //MMU
    input i_Itlb_drive,
    output o_Itlb_free,
    input [33:0] i_Itlb_PA_34,

    //L2 Cache
    input i_L2Cache_drive, i_freeNext_L2Cache,
    output o_L2Cache_free, o_driveNext_L2Cache,
    input [255:0] i_L2Cache_refillLine_32B,

    //IFU
    input i_freeNext_ifu,
    output o_driveNext_ifu,
    output [255:0] o_hit_data_to_ifu_32B

    );

//mutex1
    wire w_mutex1_drive_cFifo2_1, w_mutex1_free_cFifo2_1;
    wire w_write_enable;
    wire [33:0] w_mutex1_to_fifo2_1_addr_34;

//fifo2_1
    //fire0
    wire w_cFifo2_1_drive_cSelector1, w_cFifo2_1_free_cSelector1;
    wire [1:0] w_cFifo2_fire_2;
    
    wire w_fifo_replace; //fifo位，为0时way0优先，为1时way1优先；当缺失时，先翻转，再回填，为0时填way0，为1时填way1
    wire [19:0] Icache_addr_tag_20;
    wire [8:0] Icache_addr_index_9;
    wire [9:0] Icache_SRAM_addr_10;

    reg [33:0] r_fifo2_1_addr_34;
    reg r_write_enable;
    
    //fire1
    

    cMutexMerge2_35b mutex1(
    .i_drive0    (i_Itlb_drive    ),
    .i_drive1    (i_L2Cache_drive    ),
    .i_data0_32  ({ i_Itlb_PA_34, 1'b0} ),
    .i_data1_32  ( { r_fifo2_1_addr_34, 1'b1} ), //write_enable位，回填时为1为写

    .i_freeNext  (w_mutex1_free_cFifo2_1  ),
    .rst         (rst         ),
    .o_free0     (o_Itlb_free     ),
    .o_free1     (o_L2Cache_free     ),
    .o_driveNext (w_mutex1_drive_cFifo2_1 ),
    .o_data_32   ( { w_mutex1_to_fifo2_1_addr_34, w_write_enable } )
    //w_write_enable 写时为1
 );
    
    cFifo2 u_cFifo2_1( //fire[0] fire[1]
        .rst         (rst         ),
        .i_drive     (w_mutex1_drive_cFifo2_1     ),
        .o_free      (w_mutex1_free_cFifo2_1      ),

        .o_driveNext (w_cFifo2_1_drive_cSelector1 ),
        .i_freeNext  (w_cFifo2_1_free_cSelector1  ),

        .o_fire_2    (w_cFifo2_fire_2   )
    );
    
    always @(posedge w_cFifo2_fire_2[0] or negedge rst) begin
        if (rst == 0) begin
            r_fifo2_1_addr_34 <= 34'd0;
            r_write_enable <= 1'd0;
        end
        else begin
            r_fifo2_1_addr_34 <= w_mutex1_to_fifo2_1_addr_34;
            r_write_enable <= w_write_enable;
        end
    end
    
    assign Icache_addr_tag_20 = r_fifo2_1_addr_34[33:14];
    assign Icache_addr_index_9 = r_fifo2_1_addr_34[13:5];

    assign Icache_SRAM_addr_10[9:1] = Icache_addr_index_9;
    assign Icache_SRAM_addr_10[0] = r_write_enable? w_fifo_replace : 1'b0;

    Icache_SRAM_bank0 Icache_SRAM(
    .clka(w_cFifo2_fire_2[1]), .rsta(rst),.ena(1'b1),
    //.wea(),
    .addra( Icache_SRAM_addr_10 ), //: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    .dina( { i_L2Cache_refillLine_32B, Icache_addr_tag_20, 1'b1 } ), // : IN STD_LOGIC_VECTOR(278 DOWNTO 0);
    //回填v位为1
    .douta(), //: OUT STD_LOGIC_VECTOR(557 DOWNTO 0);
    .rsta_busy() //: OUT STD_LOGIC
    );


endmodule
