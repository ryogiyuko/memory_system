onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Dcache_bank_tagSRAM_opt

do {wave.do}

view wave
view structure
view signals

do {Dcache_bank_tagSRAM.udo}

run -all

quit -force
