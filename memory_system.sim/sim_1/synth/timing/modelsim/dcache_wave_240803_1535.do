onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/rst
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_drive
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_lsu
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_lsu_free
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_lsu
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_PA_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_storeData_32
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_storeIndex_6
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_load_or_store
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_storeIndex_to_lsu_6
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_retire_store
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_retire_load
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_retire_store
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_retire_load
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_loadData_to_retire_32
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_ptw_drive
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_ptw
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_ptw_free
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_ptw
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_ptw_ptePA_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_pte_32
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_L2cache_drive
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_L2cache_writeBack
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_L2cache_miss
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_L2cache_free
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_L2cache_writeBack
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_L2cache_miss
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_L2cache_refill_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_miss_addr_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_writeBack_addr_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_writeBack_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_case_number_6
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_dcache_offset_12
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_plru_evictWay_3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_hit_way_3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_dcache_PA_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_writeBack_addr_34
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_hit
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_dirty
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_L2cache_drive_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_L2cache_refill_32B_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_L2cache_miss_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_L2cache_writeBack_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_ptw_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_retire_load_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_freeNext_retire_store_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_PA_34_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_drive_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_drive_IBUF_BUFG
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_load_or_store_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_lsu_storeData_32_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_ptw_drive_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_ptw_drive_IBUF_BUFG
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/i_ptw_ptePA_34_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/mutex1_pmt_to_pmtfifo
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_L2cache_free_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_dcache_PA_34_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_dcache_offset_12_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_L2cache_miss_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_L2cache_writeBack_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_ptw_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_retire_load_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_driveNext_retire_store_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_lsu_free_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_plru_evictWay_3_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_pte_32_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_case_number_6_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_dirty_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_hit_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_hit_way_3_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_r_writeBack_addr_34_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_storeIndex_to_lsu_6_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/o_writeBack_32B_OBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_0_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_10_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_1_in5_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_4_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_5_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_6_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/p_8_in
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/r_dcache_offset_12
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/rst_IBUF
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_D_V_buffer_n_10
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_D_V_buffer_n_6
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_D_V_buffer_n_7
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_D_V_buffer_n_8
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_D_V_buffer_n_9
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_100_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_101_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_102_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_103_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_104_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_105_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_106_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_107_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_108_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_109_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_10_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_110_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_111_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_112_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_113_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_114_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_115_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_116_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_117_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_118_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_119_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_120_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_121_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_122_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_123_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_124_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_125_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_126_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_127_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_128_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_129_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_130_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_131_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_132_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_133_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_134_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_135_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_136_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_137_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_138_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_139_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_140_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_141_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_142_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_143_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_144_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_145_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_146_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_147_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_148_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_149_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_150_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_151_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_152_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_153_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_154_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_155_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_156_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_157_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_158_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_159_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_160_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_161_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_162_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_163_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_164_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_165_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_166_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_167_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_168_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_169_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_170_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_171_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_172_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_173_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_174_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_175_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_176_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_177_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_178_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_179_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_180_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_181_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_182_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_183_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_184_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_185_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_186_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_187_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_188_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_189_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_190_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_191_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_192_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_193_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_194_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_195_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_196_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_197_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_198_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_199_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_200_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_201_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_202_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_203_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_204_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_205_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_206_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_207_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_208_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_209_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_210_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_211_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_212_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_213_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_214_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_215_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_216_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_217_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_218_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_219_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_220_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_221_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_222_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_223_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_224_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_225_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_226_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_227_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_228_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_229_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_230_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_231_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_232_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_233_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_234_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_235_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_236_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_237_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_238_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_239_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_240_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_241_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_242_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_243_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_244_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_245_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_246_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_247_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_248_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_249_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_250_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_251_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_252_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_253_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_254_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_255_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_256_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_257_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_258_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_259_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_260_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_261_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_262_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_263_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_264_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_265_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_266_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_267_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_268_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_269_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_270_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_271_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_78_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_79_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_80_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_81_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_82_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_83_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_84_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_85_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_86_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_87_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_88_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_89_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_90_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_91_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_92_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_93_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_94_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_95_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_96_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_97_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_98_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram0_i_99_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_100_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_101_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_102_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_103_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_104_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_105_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_106_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_107_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_108_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_109_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_110_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_111_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_112_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_113_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_114_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_115_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_116_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_117_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_118_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_119_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_120_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_121_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_122_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_123_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_124_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_125_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_126_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_127_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_128_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_129_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_130_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_131_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_132_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_133_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_134_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_135_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_136_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_137_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_138_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_139_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_140_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_141_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_142_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_143_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_144_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_145_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_146_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_147_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_148_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_149_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_150_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_151_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_152_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_153_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_154_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_155_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_156_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_157_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_158_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_159_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_160_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_161_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_162_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_163_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_164_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_165_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_166_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_167_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_168_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_169_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_170_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_171_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_172_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_173_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_174_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_175_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_176_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_177_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_178_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_179_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_180_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_181_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_182_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_183_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_184_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_185_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_186_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_187_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_188_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_189_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_190_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_191_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_192_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_193_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_194_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_34_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_35_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_36_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_37_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_38_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_39_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_40_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_41_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_42_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_43_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_44_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_45_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_46_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_47_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_48_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_49_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_50_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_51_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_52_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_53_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_54_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_55_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_56_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_57_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_58_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_59_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_60_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_61_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_62_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_63_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_64_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_65_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_66_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_67_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_68_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_69_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_70_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_71_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_72_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_73_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_74_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_75_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_76_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_77_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_78_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_79_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_80_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_81_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_82_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_83_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_84_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_85_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_86_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_87_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_88_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_89_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_90_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_91_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_92_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_93_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_94_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_95_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_96_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_97_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_98_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_dataSram1_i_99_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_154
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_155
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_156
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_157
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_158
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_159
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_160
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_161
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_162
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_163
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_164
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_165
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_166
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_167
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_168
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_169
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_170
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_171
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_172
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_173
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_174
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_Dcache_bank_tagSRAM_n_175
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_cSelector5_fire2_i_3_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_cSelector6_i_2_n_0
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_130
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_131
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_132
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_133
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_134
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_135
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_136
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_137
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_138
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_139
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_140
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_141
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_142
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_143
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_144
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_145
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_146
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_147
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_148
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_149
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_150
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_151
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_152
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_153
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_154
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_155
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_156
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_157
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_158
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_159
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_160
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_161
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_162
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_163
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_164
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_165
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_166
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_167
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_168
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_169
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_170
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_171
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_172
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_173
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_174
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_175
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_176
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_177
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_178
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_179
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_180
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_181
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_182
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_183
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_184
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_185
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_186
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_187
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_188
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_189
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_190
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_191
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_192
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_193
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_226
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_227
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_228
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_229
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_230
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_231
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_232
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_233
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_234
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_235
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_236
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_237
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_238
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_239
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_240
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_241
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_242
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_243
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_244
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_245
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_246
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_247
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_248
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_249
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_250
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_251
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_252
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_253
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_254
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_255
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_256
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/u_dcache_tag_compare_n_257
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid00
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid0012_out
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid10
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid30
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid3010_out
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid40
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid409_out
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/valid50
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_D_V_buffer_dataOut_16
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_drive_mutex1_refill
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_drive_mutex1_write
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_drive_mutex2_readComplete
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_drive_selector2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_fire
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_free_mutex1_refill
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_free_mutex1_write
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_free_mutex2_readComplete
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector1_free_selector2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_drive_mutex1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_drive_mutex2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_drive_mutex3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_fire_2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_free_mutex1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_free_mutex2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Selector2_free_mutex3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Seletcor1_drive_mutex3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_Seletcor1_free_mutex3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_arb1Data_to_mutex1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_arb1_drive_mutex1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_arb1_free
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM0_datain_64
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM0_write_enable
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM1_datain_64
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM1_write_enable
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way0_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way1_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way2_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way3_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way4_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way5_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way6_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dataSRAM_out_way7_32B
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dcache_PA_34_12
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_dirty
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_evict_tag_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_hit
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_hit_way_3
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_mutex1_data_to_pmtfifo1_6
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_mutex1_drive_pmtfifo1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_mutex1_free_pmtfifo1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_plru_buffer_dataIn_7
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_plru_buffer_out_7
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_pmtfifo1_drive_selector1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_pmtfifo1_fire_2
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_pmtfifo1_free_selector1
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way1_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way2_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way3_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way4_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way5_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way6_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tagSRAM_out_way7_22
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/w_tag_D_V_addr_8
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cArbMerge2_6b_o_free0_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cArbMerge2_6b_o_free1_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cMutexMerge2_o_data_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cMutexMerge3_o_data_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cMutexMerge6_outpmt_6b_o_free0_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_cMutexMerge6_outpmt_6b_o_free1_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_dcache_tag_compare_w_way_dirty_8_UNCONNECTED
add wave -noupdate -expand -label sim:/Dcache_tb/u_Dcache/Group1 -group {Region: sim:/Dcache_tb/u_Dcache} /Dcache_tb/u_Dcache/NLW_u_dcache_tag_compare_w_way_hit_8_UNCONNECTED
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[0]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[0]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[0]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[0]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[0]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[10]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[10]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[10]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[10]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[10]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[11]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[11]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[11]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[11]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[11]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[12]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[12]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[12]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[12]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[12]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[13]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[13]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[13]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[13]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[13]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[14]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[14]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[14]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[14]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[14]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[15]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[15]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[15]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[15]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[15]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[16]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[16]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[16]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[16]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[16]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[17]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[17]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[17]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[17]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[17]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[18]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[18]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[18]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[18]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[18]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[19]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[19]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[19]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[19]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[19]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[1]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[1]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[1]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[1]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[1]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[20]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[20]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[20]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[20]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[20]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[21]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[21]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[21]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[21]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[21]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[22]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[22]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[22]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[22]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[22]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[23]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[23]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[23]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[23]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[23]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[24]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[24]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[24]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[24]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[24]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[25]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[25]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[25]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[25]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[25]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[26]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[26]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[26]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[26]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[26]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[27]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[27]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[27]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[27]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[27]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[28]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[28]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[28]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[28]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[28]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[29]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[29]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[29]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[29]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[29]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[2]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[2]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[2]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[2]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[2]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[30]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[30]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[30]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[30]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[30]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[31]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[31]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[31]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[31]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[31]_inst_i_7_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[3]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[3]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[3]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[3]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[3]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[4]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[4]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[4]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[4]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[4]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[5]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[5]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[5]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[5]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[5]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[6]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[6]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[6]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[6]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[6]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[7]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[7]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[7]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[7]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[7]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[8]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[8]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[8]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[8]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[8]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[9]_inst_i_2_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[9]_inst_i_3_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[9]_inst_i_4_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[9]_inst_i_5_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\o_loadData_to_retire_32_OBUF[9]_inst_i_6_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_PA_or_ptePA_2[0]_i_1_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_PA_or_ptePA_2_reg_n_0_[0] }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_case_number_6_reg[3]_rep__0_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_case_number_6_reg[3]_rep_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_case_number_6_reg[5]_rep__0_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_case_number_6_reg[5]_rep_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\r_plru_evictWay_3[2]_i_1_n_0 }
add wave -noupdate {/Dcache_tb/u_Dcache/\u_dcache_plru_evict/w_dcache_plru_evict_out_evictWay_3 }
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {171940 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {154856 ps} {224752 ps}
