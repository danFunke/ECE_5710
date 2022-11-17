onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dpram32x16 -L xil_defaultlib -L secureip -O5 xil_defaultlib.dpram32x16

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {dpram32x16.udo}

run -all

endsim

quit -force
