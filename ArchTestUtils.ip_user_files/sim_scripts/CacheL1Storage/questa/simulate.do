onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib CacheL1Storage_opt

do {wave.do}

view wave
view structure
view signals

do {CacheL1Storage.udo}

run -all

quit -force
