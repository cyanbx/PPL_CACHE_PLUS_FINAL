onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memory_core_opt

do {wave.do}

view wave
view structure
view signals

do {Memory_core.udo}

run -all

quit -force
