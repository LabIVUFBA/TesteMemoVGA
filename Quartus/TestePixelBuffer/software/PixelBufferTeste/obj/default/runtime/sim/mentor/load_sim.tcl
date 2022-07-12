# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force e:/LABIV/TesteMemoVGA/Quartus/TestePixelBuffer/software/PixelBufferTeste/mem_init/hdl_sim/TestePxBf_onchip_memory.dat ./ 
file copy -force e:/LABIV/TesteMemoVGA/Quartus/TestePixelBuffer/software/PixelBufferTeste/mem_init/TestePxBf_onchip_memory.hex ./ 
