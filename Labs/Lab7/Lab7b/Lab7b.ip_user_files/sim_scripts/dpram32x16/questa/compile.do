vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../Lab7b.gen/sources_1/ip/dpram32x16/dpram32x16_sim_netlist.vhdl" \


