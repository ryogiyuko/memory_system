######################################################################
#
# File name : Dcache_tb_simulate.do
# Created on: Sat Aug 03 11:23:53 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L blk_mem_gen_v8_4_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.Dcache_tb xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {Dcache_tb_wave.do}

view wave
view structure
view signals

do {Dcache_tb.udo}

run 1000ns
