onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib MemoryCore_opt

do {wave.do}

view wave
view structure
view signals

do {MemoryCore.udo}

run -all

quit -force
