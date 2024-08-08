module L2Cache_tag_compare(
    input [18:0] toCompare_tag_19,  // PA[33:15]
    input [18:0] L2Cache_tagSRAM_out_way7_19, L2Cache_tagSRAM_out_way6_19, L2Cache_tagSRAM_out_way5_19, L2Cache_tagSRAM_out_way4_19,
    input [18:0] L2Cache_tagSRAM_out_way3_19, L2Cache_tagSRAM_out_way2_19, L2Cache_tagSRAM_out_way1_19, L2Cache_tagSRAM_out_way0_19,
    
    input L2Cache_tagSRAM_out_way7_v, L2Cache_tagSRAM_out_way6_v, L2Cache_tagSRAM_out_way5_v, L2Cache_tagSRAM_out_way4_v,
    input L2Cache_tagSRAM_out_way3_v, L2Cache_tagSRAM_out_way2_v, L2Cache_tagSRAM_out_way1_v, L2Cache_tagSRAM_out_way0_v,

    output hit, // 是否命中
    output [7:0] way_hit_8,   // 独热码 命中way0 00000001 
    output need_writeBack       // 是否需要写回 1需要  0不需要
); 

    assign way_hit_8[0] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way0_19) == 19'b0) && L2Cache_tagSRAM_out_way0_v) ? 1 : 0;
    assign way_hit_8[1] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way1_19) == 19'b0) && L2Cache_tagSRAM_out_way1_v) ? 1 : 0;
    assign way_hit_8[2] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way2_19) == 19'b0) && L2Cache_tagSRAM_out_way2_v) ? 1 : 0;
    assign way_hit_8[3] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way3_19) == 19'b0) && L2Cache_tagSRAM_out_way3_v) ? 1 : 0;
    assign way_hit_8[4] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way4_19) == 19'b0) && L2Cache_tagSRAM_out_way4_v) ? 1 : 0;
    assign way_hit_8[5] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way5_19) == 19'b0) && L2Cache_tagSRAM_out_way5_v) ? 1 : 0;
    assign way_hit_8[6] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way6_19) == 19'b0) && L2Cache_tagSRAM_out_way6_v) ? 1 : 0;
    assign way_hit_8[7] = (((toCompare_tag_19 - L2Cache_tagSRAM_out_way7_19) == 19'b0) && L2Cache_tagSRAM_out_way7_v) ? 1 : 0;

    assign hit = way_hit_8[0] | way_hit_8[1] | way_hit_8[2] | way_hit_8[3] | way_hit_8[4] | way_hit_8[5] | way_hit_8[6] | way_hit_8[7];

    // 只有 未命中 且 没有空闲时 才需要写回
    assign need_writeBack = ((~hit) & (L2Cache_tagSRAM_out_way7_v & L2Cache_tagSRAM_out_way6_v & L2Cache_tagSRAM_out_way5_v & L2Cache_tagSRAM_out_way4_v & L2Cache_tagSRAM_out_way3_v & L2Cache_tagSRAM_out_way2_v & L2Cache_tagSRAM_out_way1_v & L2Cache_tagSRAM_out_way0_v));
endmodule