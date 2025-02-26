onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib AXI_UART_TX_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AXI_UART_TX.udo}

run 1000ns

quit -force
