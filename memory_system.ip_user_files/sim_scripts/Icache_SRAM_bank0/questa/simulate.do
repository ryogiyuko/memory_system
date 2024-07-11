onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Icache_SRAM_bank0_opt

do {wave.do}

view wave
view structure
view signals

do {Icache_SRAM_bank0.udo}

run -all

quit -force
