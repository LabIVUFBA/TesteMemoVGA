do msim_setup.tcl
vlib altera_mf_ver 
vmap altera_mf_ver altera_mf_ver 
vlog -work altera_mf_ver $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v 
vsim -L altera_mf_ver -t 1ns SimPixelBuffer.TestePxBf_tb
do vga.do