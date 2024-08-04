onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Dcache_tb/count
add wave -noupdate /Dcache_tb/rst
add wave -noupdate /Dcache_tb/i_lsu_drive
add wave -noupdate /Dcache_tb/i_freeNext_lsu
add wave -noupdate /Dcache_tb/i_lsu_PA_34
add wave -noupdate /Dcache_tb/i_lsu_storeData_32
add wave -noupdate /Dcache_tb/i_lsu_storeIndex_6
add wave -noupdate /Dcache_tb/i_lsu_load_or_store
add wave -noupdate /Dcache_tb/i_freeNext_retire_store
add wave -noupdate /Dcache_tb/i_freeNext_retire_load
add wave -noupdate /Dcache_tb/i_ptw_drive
add wave -noupdate /Dcache_tb/i_freeNext_ptw
add wave -noupdate /Dcache_tb/i_ptw_ptePA_34
add wave -noupdate /Dcache_tb/i_L2cache_drive
add wave -noupdate /Dcache_tb/i_freeNext_L2cache_writeBack
add wave -noupdate /Dcache_tb/i_freeNext_L2cache_miss
add wave -noupdate /Dcache_tb/i_L2cache_refill_32B
add wave -noupdate /Dcache_tb/o_lsu_free
add wave -noupdate /Dcache_tb/o_driveNext_lsu
add wave -noupdate /Dcache_tb/o_storeIndex_to_lsu_6
add wave -noupdate /Dcache_tb/o_driveNext_retire_store
add wave -noupdate /Dcache_tb/o_driveNext_retire_load
add wave -noupdate /Dcache_tb/o_loadData_to_retire_32
add wave -noupdate /Dcache_tb/o_ptw_free
add wave -noupdate /Dcache_tb/o_driveNext_ptw
add wave -noupdate /Dcache_tb/o_pte_32
add wave -noupdate /Dcache_tb/o_L2cache_free
add wave -noupdate /Dcache_tb/o_driveNext_L2cache_writeBack
add wave -noupdate /Dcache_tb/o_driveNext_L2cache_miss
add wave -noupdate /Dcache_tb/o_miss_addr_34
add wave -noupdate /Dcache_tb/o_writeBack_addr_34
add wave -noupdate /Dcache_tb/o_writeBack_32B
add wave -noupdate /Dcache_tb/o_r_case_number_6
add wave -noupdate /Dcache_tb/o_dcache_offset_12
add wave -noupdate /Dcache_tb/o_plru_evictWay_3
add wave -noupdate /Dcache_tb/o_r_hit_way_3
add wave -noupdate /Dcache_tb/o_dcache_PA_34
add wave -noupdate /Dcache_tb/o_r_writeBack_addr_34
add wave -noupdate /Dcache_tb/o_r_hit
add wave -noupdate /Dcache_tb/o_r_dirty
add wave -noupdate /glbl/GSR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {491912 ps} 0}
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
WaveRestoreZoom {78698 ps} {529819 ps}
