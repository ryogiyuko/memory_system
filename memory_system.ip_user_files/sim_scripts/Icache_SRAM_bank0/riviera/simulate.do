onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Icache_SRAM_bank0 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Icache_SRAM_bank0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Icache_SRAM_bank0.udo}

run -all

endsim

quit -force
