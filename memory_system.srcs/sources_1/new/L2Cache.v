
    // drive free ����L2Cache��������
    // driveNext freeNext ����L2Cache��������ģ��

    // ������֮��� drive free driveNext freeNext data fire �ź� ����wire����
    // ��һ����������ģ���� ��д�ÿ���������һ��������֮����ź� wire
    // always @( *) �൱������߼� ���ܴ�����

    // �������cFifo���¼�����ȷ������һ�� (ͨ��ǰ��Ŀ��Ƶ�Ԫ��merge) Ҫ���¼����ж��ȱ��� ��fire0�жϽ�����¼����ĸ�

    // always �ﱻ��ֵ��ֻ���� reg   always @( *) �൱������߼� ��ʹ���汻��ֵ����reg Ҳ����������wire
    // assign   ����ֵ��ֻ���� wire
    // reg ����������always�������  ��always�����ʹ�� reg <= ����  Ҳ����ʹ�� reg = ����  ������ݱ�����fire�������д���������always   always@(*) ���൱������߼� ���ܴ�����
    // fire ͨ����������ģ��
    

module L2Cache(
    input rst,

    // DCache
    input i_DCache_miss_drive, i_DCache_writeBack_drive, i_freeNext_DCache,
    output o_DCache_miss_free, o_DCache_writeBack_free, o_driveNext_DCache,

    input [33:0] i_miss_Addr_from_DCache_34, i_writeBack_Addr_from_DCache_34,
    input [255:0] i_L1Cache_writeBackLine_32B,  // ֻҪ�Ǳ�DCache writeBack������DV�϶�����1
    
    output [255:0] o_refillLine_to_L1Cache_32B, // ICache DCache ���� ���忿�¼�����

    // ICache
    input i_ICache_miss_drive, i_freeNext_ICache,
    output o_ICache_miss_free, o_driveNext_ICache,

    input [33:0] i_miss_Addr_from_ICache_34,
    // output [255:0] o_refillLine_to_L1Cache_32B
    
    output [1:0] o_DCache_or_ICache_2,  // ��������refillLine�Ǹ�ICache���Ǹ�DCache

    // DDR
    input i_DDR_drive, i_freeNext_DDR_miss, i_freeNext_DDR_writeBack,
    output o_DDR_free, o_driveNext_DDR_miss, o_driveNext_DDR_writeBack, // L2Cache Ҳ�� miss writeBack �����¼�����DDR

    output [33:0] o_miss_Addr_to_DDR_34, o_writeBack_Addr_to_DDR_34,
    input [255:0] i_DDR_refillLine_32B,
    output [255:0] o_writeBackLine_to_DDR_32B
);


// mutex0 (cMutexMerge2_5b)
    wire w_mutex0_drive_arb1, w_mutex0_free_arb1;
    wire [4:0] w_mutex0_data_to_arb1_5;

// arb1 (cArbMerge2_5b)
    wire w_arb1_drive_mutex1, w_arb1_free_mutex1;
    wire [4:0] w_arb1_data_to_mutex1_5;

// mutex1 (cMutexMerge3_5b)
    wire w_mutex1_drive_cfifo1, w_mutex1_free_cfifo1;
    wire [4:0] w_mutex1_data_to_cfifo1_5;

// cfifo1 (cFifo2)
    wire w_cfifo1_drive_selector1, w_cfifo1_free_selector1;
    wire [1:0] w_cfifo1_fire_2;

    // fire0
    reg [3:0] r_case_number_4;  // 0001 L1 miss  0010 L1(DCache)д��  0100 miss ����  1000 д�ػ���
    reg [1:0] r_DCache_or_ICache_2; // 10:DCache  01:ICache   ��¼��������������

    // fire1
    reg [33:0] r_physical_Addr_34; 
    reg r_read_or_write_tagSRAM;    // 0���� 1��д

    reg [9:0] r_tagSRAM_addr_10;  // tagSRAM��ַ
    wire [18:0] w_tagSRAM_in_19;  // ��ǰ�����Data��tag
    wire [18:0] w_tagSRAM_out_way0_19, w_tagSRAM_out_way1_19, w_tagSRAM_out_way2_19, w_tagSRAM_out_way3_19;
    wire [18:0] w_tagSRAM_out_way4_19, w_tagSRAM_out_way5_19, w_tagSRAM_out_way6_19, w_tagSRAM_out_way7_19;

    wire w_hit;
    wire [7:0] w_way_hit_8; // ������ ���е���way0��00000001
    reg [2:0] r_hit_way_3;
    reg [2:0] r_empty_way_3;

    wire w_need_writeBack;  // δ����ʱ �Ƿ�Ҫд��DDR

    reg [1:0] r_dvSRAM_in_2;    // DDR���01  writeBack���11
    reg r_read_or_write_dvSRAM;
    reg [9:0] r_dvSRAM_addr_10;
    wire [1:0] w_dvSRAM_out_way0_2, w_dvSRAM_out_way1_2, w_dvSRAM_out_way2_2, w_dvSRAM_out_way3_2;
    wire [1:0] w_dvSRAM_out_way4_2, w_dvSRAM_out_way5_2, w_dvSRAM_out_way6_2, w_dvSRAM_out_way7_2;



    wire [6:0] w_plruSRAM_addr_7;
    wire [6:0] w_plruSRAM_out_7;
    reg r_read_or_write_plruSRAM;
    reg [6:0] r_plruSRAM_in_7;
    reg [2:0] r_plru_evictWay_3;
    

// selector1 (cSelector2)   
    wire w_selector1_drive_cfifo2, w_selector1_free_cfifo2;
    wire w_selector1_fire;

    wire w_selector1_valid;

    

// cfifo2 (cFifo1)
    wire w_cfifo2_drive_selector2, w_cfifo2_free_selector2;
    wire w_cfifo2_fire;

    reg r_read_or_write_dataSRAM;
    reg [9:0] r_dataSRAM_addr_10;
    reg [255:0] r_dataSRAM_in_32B;
    wire [255:0] w_dataSRAM_out_way7_32B, w_dataSRAM_out_way6_32B, w_dataSRAM_out_way5_32B, w_dataSRAM_out_way4_32B, w_dataSRAM_out_way3_32B, w_dataSRAM_out_way2_32B, w_dataSRAM_out_way1_32B, w_dataSRAM_out_way0_32B; 

// selector2 (cSelector4)
    wire w_selector2_drive_mutex1;
    wire w_selector2_free_mutex1;
    wire w_selector2_fire;
    

// mutex0
// DCache miss:00001  writeBack:00010
    (*dont_touch = "true"*)cMutexMerge2_5b mutex0(
        .i_drive0   (i_DCache_miss_drive),
        .i_drive1   (i_DCache_writeBack_drive),
        .i_data0    (5'b00001),
        .i_data1    (5'b00010),
        .i_freeNext (w_mutex0_free_arb1),

        .o_free0    (o_DCache_miss_free),
        .o_free1    (o_DCache_writeBack_free),

        .o_driveNext(w_mutex0_drive_arb1),
        .o_data     (w_mutex0_data_to_arb1_5),
        .rst        (rst)
    );

// arb1
// ICache miss:00100
    (*dont_touch = "true"*)cArbMerge2_5b arb1(
        .i_drive0   (w_mutex0_drive_arb1),
        .i_drive1   (i_ICache_miss_drive),
        .i_data0    (w_mutex0_data_to_arb1_5),
        .i_data1    (5'b00100),

        .i_freeNext (w_arb1_free_mutex1),
        .rst        (rst),
        .o_free0    (w_mutex0_free_arb1),
        .o_free1    (o_ICache_miss_free),

        .o_driveNext(w_arb1_drive_mutex1),
        .o_data     (w_arb1_data_to_mutex1_5)
    );

// mutex1
// ���վ�������L2Cacheģ�� Ҫ�����ĸ��¼�
    (*dont_touch = "true"*)cMutexMerge3_5b mutex1(
        .i_drive0   (w_arb1_drive_mutex1),
        .i_drive1   (w_selector2_drive_mutex1),
        .i_drive2   (i_DDR_drive),

        .i_data0    (w_arb1_data_to_mutex1_5),
        .i_data1    (5'b01000),
        .i_data2    (5'b10000),

        .i_freeNext (w_mutex1_free_cfifo1),
        .rst        (rst),

        .o_free0    (w_arb1_free_mutex1),
        .o_free1    (w_selector2_free_mutex1),
        .o_free2    (o_DDR_free),

        .o_driveNext(w_mutex1_drive_cfifo1),
        .o_data     (w_mutex1_data_to_cfifo1_5)
    );

//  cfifo1
//
    (*dont_touch = "true"*)cFifo2 cfifo1(
        .rst        (rst),

        .i_drive    (w_mutex1_drive_cfifo1),
        .o_free     (w_mutex1_free_cfifo1),

        .o_driveNext(w_cfifo1_drive_selector1),
        .i_freeNext (w_cfifo1_free_selector1),

        .o_fire_2   (w_cfifo1_fire_2)
    );

    // fire0
    // �жϴ�������¼����ĸ�
    always @(posedge w_cfifo1_fire_2[0] or negedge rst) begin
        if (rst == 0) begin 
            r_case_number_4 <= 4'b0000;
            r_DCache_or_ICache_2 <= 2'b00;
        end 
        else begin 
            if (w_mutex1_data_to_cfifo1_5[0] | w_mutex1_data_to_cfifo1_5[2]) begin 
                r_case_number_4 <= 4'b0001; // L1 miss
                if (w_mutex1_data_to_cfifo1_5[0])
                    r_DCache_or_ICache_2 <= 2'b10;  // DCache
                else
                    r_DCache_or_ICache_2 <= 2'b01;  // ICache
            end
            else if (w_mutex1_data_to_cfifo1_5[1]) begin 
                r_case_number_4 <= 4'b0010; // L1(DCache) д��
                r_DCache_or_ICache_2 <= 2'b10;  // DCache
            end
            else if (w_mutex1_data_to_cfifo1_5[3]) begin 
                r_DCache_or_ICache_2 <= r_DCache_or_ICache_2;
                if (r_case_number_4[1])
                    r_case_number_4 <= 4'b0001;
                else
                    r_case_number_4 <= r_case_number_4;
            end
            else if (w_mutex1_data_to_cfifo1_5[4]) begin    // ��Ի����������
                r_DCache_or_ICache_2 <= r_DCache_or_ICache_2;
                if (r_case_number_4[0])
                    r_case_number_4 <= 4'b0100; // L2miss DDR����L2
                else if (r_case_number_4[1])
                    r_case_number_4 <= 4'b1000; // DCache����L2
                else
                    r_case_number_4 <= r_case_number_4;
            end
            else begin 
                r_case_number_4 <= 4'b0;
                r_DCache_or_ICache_2 <= r_DCache_or_ICache_2;
            end
        end
    end

    assign o_DCache_or_ICache_2 = r_DCache_or_ICache_2;


    // fire1
    // �Ƚ������¼��õ��������ַ�浽 r_physical_Addr_34
    // ֻ�л���ʱ��Ҫдtag ���������0100 DDR����   1000��writeBack����
    // ʹ�� r_read_or_write_tagSRAM ��ʾ�Ƿ���Ҫдtag   1��д  0����
    // DDR���� DV=01  writeBack���� DV=11 ʹ�� r_dvSRAM_in_2 ��¼
    // writeBack��DDR֮��Ҫ��DV��Ϊ00
    // ʹ�� r_read_or_write_plruSRAM ��ʾ�Ƿ���Ҫдplru
    always @( *) begin 
        if (r_case_number_4[0]) begin   // L1 miss
            r_read_or_write_tagSRAM <= 1'b0;
            r_read_or_write_dvSRAM <= 1'b0;
            r_dvSRAM_in_2 <= 2'b00;
            if (r_DCache_or_ICache_2[1]) begin  // DCache miss
                r_physical_Addr_34 <= i_miss_Addr_from_DCache_34;
            end
            else begin  // ICache miss
                r_physical_Addr_34 <= i_miss_Addr_from_ICache_34;
            end
        end
        else if (r_case_number_4[1]) begin  // L1 writeBack
            r_dvSRAM_in_2 <= 2'b00;
            r_read_or_write_tagSRAM <= 1'b0;
            r_read_or_write_dvSRAM <= 1'b0;
            r_physical_Addr_34 <= i_writeBack_Addr_from_DCache_34;
        end
        else if (r_case_number_4[2]) begin  // DDR����
            r_read_or_write_tagSRAM <= 1'b1;
            r_read_or_write_dvSRAM <= 1'b1;
            r_dvSRAM_in_2 <= 2'b01;
            if (r_DCache_or_ICache_2[1]) begin  // DCache miss
                r_physical_Addr_34 <= i_miss_Addr_from_DCache_34;
            end
            else begin  // ICache miss
                r_physical_Addr_34 <= i_miss_Addr_from_ICache_34;
            end
        end
        else if (r_case_number_4[3]) begin  // writeBack����
            r_read_or_write_tagSRAM <= 1'b1;
            r_read_or_write_dvSRAM <= 1'b1;
            r_physical_Addr_34 <= r_physical_Addr_34;  
            r_dvSRAM_in_2 <= 2'b11;
        end
        else begin 
            r_read_or_write_tagSRAM <= r_read_or_write_tagSRAM;
            r_read_or_write_dvSRAM <= r_read_or_write_dvSRAM;
            r_physical_Addr_34 <= r_physical_Addr_34;
            r_dvSRAM_in_2 <= r_dvSRAM_in_2;
        end
    end


    // tagSRAM ģ��
    // dina: 1��tag   douta: 8��tag

    assign w_tagSRAM_in_19 = r_physical_Addr_34[33:15];

    // tagSRAM �ĸ��µ�ַ
    always @( *) begin 
        if (r_read_or_write_tagSRAM == 1) begin 
            if (w_need_writeBack) begin 
                r_tagSRAM_addr_10 = {r_physical_Addr_34[14:8], r_plru_evictWay_3}; 
            end
            else begin 
                r_tagSRAM_addr_10 = {r_physical_Addr_34[14:8], r_empty_way_3};
            end
        end
        else begin 
            r_tagSRAM_addr_10 = r_tagSRAM_addr_10;
        end
    end

    L2Cache_tagSRAM u_L2Cache_tagSRAM (
        .clka   (w_cfifo1_fire_2[1]), 
        .ena    (1'b1),      
        .wea    (r_read_or_write_tagSRAM),    
        .addra  (r_tagSRAM_addr_10),  
        .dina   (w_tagSRAM_in_19),   
        .douta  ({w_tagSRAM_out_way7_19, w_tagSRAM_out_way6_19, w_tagSRAM_out_way5_19, w_tagSRAM_out_way4_19, w_tagSRAM_out_way3_19, w_tagSRAM_out_way2_19, w_tagSRAM_out_way1_19, w_tagSRAM_out_way0_19})
    );

    // dvSRAM ģ��
    // dina: 2bit DV   douta: 16bit DV

    // dvSRAM �ĸ��µ�ַ
    always @( *) begin 
        if (r_case_number_4[2] | r_case_number_4[3]) begin 
            if (w_need_writeBack) begin 
                r_dvSRAM_addr_10 = {r_physical_Addr_34[14:8], r_plru_evictWay_3};
            end
            else begin 
                r_dvSRAM_addr_10 = {r_physical_Addr_34[14:8], r_empty_way_3};
            end
        end
        else begin 
            r_dvSRAM_addr_10 = r_dvSRAM_addr_10;
        end
    end
    
    L2Cache_dvSRAM u_L2Cache_dvSRAM (
        .clka   (w_cfifo1_fire_2[1] | w_selector2_fire), 
        .ena    (1'b1),      
        .wea    (r_read_or_write_dvSRAM),    
        .addra  (r_dvSRAM_addr_10),  
        .dina   (r_dvSRAM_in_2),   
        .douta  ({w_dvSRAM_out_way7_2, w_dvSRAM_out_way6_2, w_dvSRAM_out_way5_2, w_dvSRAM_out_way4_2, w_dvSRAM_out_way3_2, w_dvSRAM_out_way2_2, w_dvSRAM_out_way1_2, w_dvSRAM_out_way0_2})
    );

    // �ҵ���һ��������
    always @( *) begin 
        if (~(w_dvSRAM_out_way0_2[1] & w_dvSRAM_out_way1_2[1] & w_dvSRAM_out_way2_2[1] & w_dvSRAM_out_way3_2[1] & w_dvSRAM_out_way4_2[1] & w_dvSRAM_out_way5_2[1] & w_dvSRAM_out_way6_2[1] & w_dvSRAM_out_way7_2[1])) begin 
            if (~w_dvSRAM_out_way0_2[1]) begin 
                r_empty_way_3 = 3'b000;
            end
            else if (~w_dvSRAM_out_way1_2[1]) begin 
                r_empty_way_3 = 3'b001;
            end
            else if (~w_dvSRAM_out_way2_2[1]) begin 
                r_empty_way_3 = 3'b010;
            end
            else if (~w_dvSRAM_out_way3_2[1]) begin 
                r_empty_way_3 = 3'b011;
            end
            else if (~w_dvSRAM_out_way4_2[1]) begin 
                r_empty_way_3 = 3'b100;
            end
            else if (~w_dvSRAM_out_way5_2[1]) begin 
                r_empty_way_3 = 3'b101;
            end
            else if (~w_dvSRAM_out_way6_2[1]) begin 
                r_empty_way_3 = 3'b110;
            end
            else begin 
                r_empty_way_3 = 3'b111;
            end
        end
    end

    // �ҵ����е���
    always @( *) begin 
        if (w_hit) begin 
            case (w_way_hit_8)
                8'b00000001: begin 
                    r_hit_way_3 = 3'b000;
                end
                8'b00000010: begin 
                    r_hit_way_3 = 3'b001;
                end
                8'b00000100: begin 
                    r_hit_way_3 = 3'b010;
                end
                8'b00001000: begin 
                    r_hit_way_3 = 3'b011;
                end
                8'b00010000: begin 
                    r_hit_way_3 = 3'b100;
                end
                8'b00100000: begin 
                    r_hit_way_3 = 3'b101;
                end
                8'b01000000: begin 
                    r_hit_way_3 = 3'b110;
                end
                8'b10000000: begin 
                    r_hit_way_3 = 3'b111;
                end
                default: r_hit_way_3 = r_hit_way_3;
            endcase
        end
    end


    // plruSRAM ģ��
    // �����Ȱ�plru����??? �޸�֮�� ��д???
    assign w_plruSRAM_addr_7 = r_physical_Addr_34[14:8];

    L2Cache_plruSRAM u_L2Cache_plruSRAM (
        .clka   (w_cfifo1_fire_2[1] | w_cfifo2_fire), 
        .ena    (1'b1),      
        .wea    (r_read_or_write_plruSRAM),     
        .addra  (w_plruSRAM_addr_7),  
        .dina   (r_plruSRAM_in_7),   
        .douta  (w_plruSRAM_out_7)
    );

    // tag compare
    L2Cache_tag_compare u_L2Cache_tag_compare(
        .toCompare_tag_19                (r_physical_Addr_34[33:15]),  // PA[33:15]
        .L2Cache_tagSRAM_out_way7_19     (w_tagSRAM_out_way7_19),
        .L2Cache_tagSRAM_out_way6_19     (w_tagSRAM_out_way6_19), 
        .L2Cache_tagSRAM_out_way5_19     (w_tagSRAM_out_way5_19),
        .L2Cache_tagSRAM_out_way4_19     (w_tagSRAM_out_way4_19),
        .L2Cache_tagSRAM_out_way3_19     (w_tagSRAM_out_way3_19), 
        .L2Cache_tagSRAM_out_way2_19     (w_tagSRAM_out_way2_19), 
        .L2Cache_tagSRAM_out_way1_19     (w_tagSRAM_out_way1_19), 
        .L2Cache_tagSRAM_out_way0_19     (w_tagSRAM_out_way0_19),
        
        .L2Cache_tagSRAM_out_way7_v      (w_dvSRAM_out_way7_2[0]), 
        .L2Cache_tagSRAM_out_way6_v      (w_dvSRAM_out_way6_2[0]), 
        .L2Cache_tagSRAM_out_way5_v      (w_dvSRAM_out_way5_2[0]), 
        .L2Cache_tagSRAM_out_way4_v      (w_dvSRAM_out_way4_2[0]),
        .L2Cache_tagSRAM_out_way3_v      (w_dvSRAM_out_way3_2[0]),     
        .L2Cache_tagSRAM_out_way2_v      (w_dvSRAM_out_way2_2[0]), 
        .L2Cache_tagSRAM_out_way1_v      (w_dvSRAM_out_way1_2[0]), 
        .L2Cache_tagSRAM_out_way0_v      (w_dvSRAM_out_way0_2[0]),

        .hit                             (w_hit), // �Ƿ�����
        .way_hit_8                       (w_way_hit_8),  // ����??? ����way0 00000001
        .need_writeBack                  (w_need_writeBack)
    );

    // plru evict
    // ???ҪwriteBack??? ����plru evict
    always @(w_need_writeBack) begin
        case (w_plruSRAM_out_7[6:0])
            7'b???0?00: r_plru_evictWay_3 = 3'b000 ;
            7'b???1?00: r_plru_evictWay_3 = 3'b001 ;
            7'b??0??10: r_plru_evictWay_3 = 3'b010 ;
            7'b??1??10: r_plru_evictWay_3 = 3'b011 ;
            7'b?0??0?1: r_plru_evictWay_3 = 3'b100 ;
            7'b?1??0?1: r_plru_evictWay_3 = 3'b101 ;
            7'b0???1?1: r_plru_evictWay_3 = 3'b110 ;
            7'b1???1?1: r_plru_evictWay_3 = 3'b111 ;
            default: r_plru_evictWay_3 = 3'b0 ;
        endcase
    end

    reg [18:0] r_writeBack_tag_19;

    // plru update
    // ����:����   ȱʧ����ҪwriteBackʱ��???
    always @(w_hit or w_way_hit_8[7:0] or w_plruSRAM_out_7[6:0]) begin
        // hit �����б�Ϊ��PLRU
        if (w_hit == 1) begin
          case (w_way_hit_8[7:0])
            8'b00000001:begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = 1'b1;
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b1;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            8'b00000010:begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = 1'b0;
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b1;
              r_plruSRAM_in_7[0] = 1'b1;
            end 
            8'b00000100:begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = 1'b1;
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b0;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            8'b00001000:begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = 1'b0;
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b0;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            8'b00010000:begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = 1'b1;
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b1;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            8'b00100000: begin
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = 1'b0;
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b1;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            8'b01000000: begin
              r_plruSRAM_in_7[6] = 1'b1;
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b0;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            8'b10000000: begin
              r_plruSRAM_in_7[6] = 1'b0;
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b0;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            default: r_plruSRAM_in_7 = w_plruSRAM_out_7;
          endcase
        end

        // miss �������б�Ϊ???PLRU
        // ͬʱȡ��Ҫд�صı�ǩ
        else begin
          case (r_plru_evictWay_3)
            3'b000: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way0_19;  
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = 1'b1;
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b1;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            3'b001: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way1_19; 
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = 1'b0;
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b1;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            3'b010: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way2_19; 
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = 1'b1;
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b0;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            3'b011: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way3_19; 
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = 1'b0;
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = w_plruSRAM_out_7[2];
              r_plruSRAM_in_7[1] = 1'b0;
              r_plruSRAM_in_7[0] = 1'b1;
            end
            3'b100: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way4_19; 
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = 1'b1;
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b1;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            3'b101: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way5_19; 
              r_plruSRAM_in_7[6] = w_plruSRAM_out_7[6];
              r_plruSRAM_in_7[5] = 1'b0;
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b1;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            3'b110: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way6_19;   
              r_plruSRAM_in_7[6] = 1'b1;
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b0;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            3'b111: begin
              r_writeBack_tag_19 = w_tagSRAM_out_way7_19; 
              r_plruSRAM_in_7[6] = 1'b0;
              r_plruSRAM_in_7[5] = w_plruSRAM_out_7[5];
              r_plruSRAM_in_7[4] = w_plruSRAM_out_7[4];
              r_plruSRAM_in_7[3] = w_plruSRAM_out_7[3];
              r_plruSRAM_in_7[2] = 1'b0;
              r_plruSRAM_in_7[1] = w_plruSRAM_out_7[1];
              r_plruSRAM_in_7[0] = 1'b0;
            end
            default: begin
              r_writeBack_tag_19 = r_writeBack_tag_19;
              r_plruSRAM_in_7 = w_plruSRAM_out_7;
            end
          endcase
        end
    end


    // ֻ��0001 �� 0010�����¼����ж��Ƿ����� δ�����Ҳ���Ҫд��DDRʱ��selector1��valid0
    // ��������¶���selector1��valid1
    assign w_selector1_valid = ((r_case_number_4[0]|r_case_number_4[1]) & (~w_hit) & (~w_need_writeBack));

// selector1
    (*dont_touch = "true"*)cSelector2 selector1(
        .rst            (rst),
        .i_drive        (w_cfifo1_drive_selector1),
        .o_free         (w_cfifo1_free_selector1),

        .o_fire         (w_selector1_fire),

        .valid0         (w_selector1_valid), // ȱʧ ��д��
        .valid1         (~w_selector1_valid),

        .o_driveNext0   (o_driveNext_DDR_miss),
        .o_driveNext1   (w_selector1_drive_cfifo2),

        .i_freeNext0    (i_freeNext_DDR_miss),
        .i_freeNext1    (w_selector1_free_cfifo2)
    );

    assign o_miss_Addr_to_DDR_34 = r_physical_Addr_34;

    // fire
    // �����Ƿ���Ҫд dataSRAM  plruSRAM ���ж�
    // ������dataSRAM�Ĳ�����ַ
    // ׼��д�������
    // ���� valid  r_v0 r_v1 r_v2 r_v3
    reg r_v0, r_v1, r_v2, r_v3;

    always @(posedge w_selector1_fire or negedge rst) begin
        if (rst == 0) begin 
            r_v0 <= 1'b0;
            r_v1 <= 1'b0;
            r_v2 <= 1'b0; 
            r_v3 <= 1'b0;
            r_read_or_write_dataSRAM <= 1'b0;
            r_read_or_write_plruSRAM <= 1'b0;
            r_dataSRAM_addr_10 <= 10'b0;
            r_dataSRAM_in_32B <= 256'b0;
        end 
        else begin 
            if (r_case_number_4[0]) begin 
                r_read_or_write_dataSRAM <= 1'b0;
                r_read_or_write_plruSRAM <= 1'b1;
                if (w_hit) begin 
                    if (o_DCache_or_ICache_2 == 2'b10) begin 
                        r_v0 <= 1'b1;   // DCache
                        r_v1 <= 1'b0;
                        r_v2 <= 1'b0; 
                        r_v3 <= 1'b0;
                    end
                    else begin 
                        r_v0 <= 1'b0; 
                        r_v1 <= 1'b1;   // ICache
                        r_v2 <= 1'b0; 
                        r_v3 <= 1'b0;
                    end
                    r_dataSRAM_addr_10 <= {r_physical_Addr_34[14:8], r_hit_way_3};
                end
                else if (w_need_writeBack) begin 
                    r_dataSRAM_addr_10 <= {r_physical_Addr_34[14:8], r_plru_evictWay_3};
                    r_v0 <= 1'b0; 
                    r_v1 <= 1'b0;    
                    r_v2 <= 1'b0;   
                    r_v3 <= 1'b1;   // ����
                end
            end
            else if (r_case_number_4[1]) begin 
                r_read_or_write_plruSRAM <= 1'b1;
                if (w_hit) begin 
                    r_read_or_write_dataSRAM <= 1'b1;
                    r_dataSRAM_addr_10 <= {r_physical_Addr_34[14:8], r_hit_way_3};
                    r_dataSRAM_in_32B <= i_L1Cache_writeBackLine_32B;
                    r_v0 <= 1'b1;   // DCache
                    r_v1 <= 1'b0;
                    r_v2 <= 1'b0; 
                    r_v3 <= 1'b0;
                end
                else if (w_need_writeBack) begin 
                    r_read_or_write_dataSRAM <= 1'b0;
                    r_dataSRAM_addr_10 <= {r_physical_Addr_34[14:8], r_plru_evictWay_3};
                    r_v0 <= 1'b0; 
                    r_v1 <= 1'b0;    
                    r_v2 <= 1'b0;   
                    r_v3 <= 1'b1;   // ����
                end
            end
            else if (r_case_number_4[2]) begin 
                r_read_or_write_plruSRAM <= 1'b0;
                r_read_or_write_dataSRAM <= 1'b1;
                r_dataSRAM_addr_10 <= r_tagSRAM_addr_10;
                r_dataSRAM_in_32B <= i_DDR_refillLine_32B;
                r_v0 <= 1'b0; 
                r_v1 <= 1'b0;    
                r_v2 <= 1'b1;   // writeBack ���  
                r_v3 <= 1'b0; 
            end
            else if (r_case_number_4[3]) begin 
                r_read_or_write_plruSRAM <= 1'b0;
                r_read_or_write_dataSRAM <= 1'b1;
                r_dataSRAM_addr_10 <= r_tagSRAM_addr_10;
                r_dataSRAM_in_32B <= i_L1Cache_writeBackLine_32B;
                r_v0 <= 1'b0; 
                r_v1 <= 1'b0;    
                r_v2 <= 1'b1;   // writeBack ���  
                r_v3 <= 1'b0; 
            end
            else begin 
                r_read_or_write_dataSRAM <= r_read_or_write_dataSRAM;
                r_read_or_write_plruSRAM <= r_read_or_write_plruSRAM;
                r_dataSRAM_addr_10 <= r_dataSRAM_addr_10;
                r_dataSRAM_in_32B <= r_dataSRAM_in_32B;
                r_v0 <= 1'b0; 
                r_v1 <= 1'b0;    
                r_v2 <= 1'b0; 
                r_v3 <= 1'b0;
            end
        end
    end

    assign o_writeBack_Addr_to_DDR_34 = {r_writeBack_tag_19, r_physical_Addr_34[14:8], r_plru_evictWay_3, 5'b0};

// cfifo2
    // write plru
    // read or write dataSRAM 
    (*dont_touch = "true"*)cFifo1 cfifo2(
        .rst        (rst),

        .i_drive    (w_selector1_drive_cfifo2),
        .o_free     (w_selector1_free_cfifo2),

        .o_driveNext(w_cfifo2_drive_selector2),
        .i_freeNext (w_cfifo2_free_selector2),

        .o_fire_1   (w_cfifo2_fire)
    );

    // fire
    L2Cache_dataSRAM u_L2Cache_dataSRAM (
        .clka   (w_cfifo2_fire), 
        .ena    (1'b1),      
        .wea    (r_read_or_write_dataSRAM),     
        .addra  (r_dataSRAM_addr_10),  
        .dina   (r_dataSRAM_in_32B),   
        .douta  ({w_dataSRAM_out_way7_32B, w_dataSRAM_out_way6_32B, w_dataSRAM_out_way5_32B, w_dataSRAM_out_way4_32B, w_dataSRAM_out_way3_32B, w_dataSRAM_out_way2_32B, w_dataSRAM_out_way1_32B, w_dataSRAM_out_way0_32B})
    );

    reg [255:0] r_result_data_32B;

    always @( *) begin 
        if (r_case_number_4[0] | r_case_number_4[1]) begin 
            if (w_hit) begin 
                case (r_hit_way_3) 
                    3'b000: begin 
                        r_result_data_32B = w_dataSRAM_out_way0_32B;
                    end
                    3'b001: begin 
                        r_result_data_32B = w_dataSRAM_out_way1_32B;
                    end
                    3'b010: begin 
                        r_result_data_32B = w_dataSRAM_out_way2_32B;
                    end
                    3'b011: begin 
                        r_result_data_32B = w_dataSRAM_out_way3_32B;
                    end
                    3'b100: begin 
                        r_result_data_32B = w_dataSRAM_out_way4_32B;
                    end
                    3'b101: begin 
                        r_result_data_32B = w_dataSRAM_out_way5_32B;
                    end
                    3'b110: begin 
                        r_result_data_32B = w_dataSRAM_out_way6_32B;
                    end
                    3'b111: begin 
                        r_result_data_32B = w_dataSRAM_out_way7_32B;
                    end
                    default: r_result_data_32B = 256'b0;
                endcase
            end
            else if (w_need_writeBack) begin 
                case (r_plru_evictWay_3) 
                    3'b000: begin 
                        r_result_data_32B = w_dataSRAM_out_way0_32B;
                    end
                    3'b001: begin 
                        r_result_data_32B = w_dataSRAM_out_way1_32B;
                    end
                    3'b010: begin 
                        r_result_data_32B = w_dataSRAM_out_way2_32B;
                    end
                    3'b011: begin 
                        r_result_data_32B = w_dataSRAM_out_way3_32B;
                    end
                    3'b100: begin 
                        r_result_data_32B = w_dataSRAM_out_way4_32B;
                    end
                    3'b101: begin 
                        r_result_data_32B = w_dataSRAM_out_way5_32B;
                    end
                    3'b110: begin 
                        r_result_data_32B = w_dataSRAM_out_way6_32B;
                    end
                    3'b111: begin 
                        r_result_data_32B = w_dataSRAM_out_way7_32B;
                    end
                    default: r_result_data_32B = 256'b0;
                endcase
            end
            else begin 
                r_result_data_32B = 256'b0;
            end
        end
    end

    assign o_refillLine_to_L1Cache_32B = r_result_data_32B;
    assign o_writeBackLine_to_DDR_32B = r_result_data_32B;

    // ���writeBack��DDR ��ô����dvΪ00
    always @(posedge w_cfifo2_fire or negedge rst) begin
        if (rst == 0) begin 
            r_read_or_write_dvSRAM = 1'b0;
        end 
        else begin 
            if ((r_case_number_4[0] | r_case_number_4[1]) & w_need_writeBack) begin 
                r_read_or_write_dvSRAM = 1'b1;
                r_dvSRAM_addr_10 = {r_physical_Addr_34[14:8], r_plru_evictWay_3};
            end
            else begin 
                r_read_or_write_dvSRAM = 1'b0;
            end
        end
    end

// selector2
    (*dont_touch = "true"*)cSelector4 selector2(
        .rst            (rst),
        .i_drive        (w_cfifo2_drive_selector2),
        .o_free         (w_cfifo2_free_selector2),

        .o_fire         (w_selector2_fire),

        .valid0         (r_v0), // Dcache
        .valid1         (r_v1), // ICache
        .valid2         (r_v2), // writeBack��� �ص�mutex1
        .valid3         (r_v3), // DDR

        .o_driveNext0   (o_driveNext_DCache),
        .o_driveNext1   (o_driveNext_ICache),
        .o_driveNext2   (w_selector2_drive_mutex1),
        .o_driveNext3   (o_driveNext_DDR_writeBack),

        .i_freeNext0    (i_freeNext_DCache),
        .i_freeNext1    (i_freeNext_ICache),
        .i_freeNext2    (w_selector2_free_mutex1),
        .i_freeNext3    (i_freeNext_DDR_writeBack)
    );


endmodule