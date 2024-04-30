transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jroy/Documents/GitHub/TP_FPGA/TP3_chenillard/chenillard.vhd}

vcom -93 -work work {C:/Users/jroy/Documents/GitHub/TP_FPGA/TP3_chenillard/tb_chenillard.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_chenillard

add wave *
view structure
view signals
run 1 ns
