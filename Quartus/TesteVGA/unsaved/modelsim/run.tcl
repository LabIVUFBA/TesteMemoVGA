do msim_setup.tcl
vlib altera_mf_ver 
vmap altera_mf_ver altera_mf_ver 
vlog -work altera_mf_ver $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v 
vsim -L altera_mf_ver -t ps simtestvga.unsaved
do wave.do