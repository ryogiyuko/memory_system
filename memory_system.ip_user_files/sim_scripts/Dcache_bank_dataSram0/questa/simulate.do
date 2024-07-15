onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Dcache_bank_dataSram0_opt

do {wave.do}

view wave
view structure
view signals

do {Dcache_bank_dataSram0.udo}

run -all

quit -force
