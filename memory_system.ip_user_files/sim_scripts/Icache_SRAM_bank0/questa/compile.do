vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_3 -64 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../../memory_system.srcs/sources_1/ip/Icache_SRAM_bank0/sim/Icache_SRAM_bank0.v" \


vlog -work xil_defaultlib \
"glbl.v"

