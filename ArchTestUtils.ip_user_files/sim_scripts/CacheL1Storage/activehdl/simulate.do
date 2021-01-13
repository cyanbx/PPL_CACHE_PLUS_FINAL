onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+CacheL1Storage -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CacheL1Storage xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {CacheL1Storage.udo}

run -all

endsim

quit -force
