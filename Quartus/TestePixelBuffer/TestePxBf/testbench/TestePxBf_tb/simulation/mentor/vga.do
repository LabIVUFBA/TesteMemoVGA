onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider SYS
add wave -noupdate -label CLK /TestePxBf_tb/testepxbf_inst_clk_bfm_clk_clk
add wave -noupdate -label RESET /TestePxBf_tb/testepxbf_inst_reset_bfm_reset_reset
add wave -noupdate -divider {VGA DATA}
add wave -noupdate -label R /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_r
add wave -noupdate -label G /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_g
add wave -noupdate -label B /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_b
add wave -noupdate -divider {VGA SYNC}
add wave -noupdate -label {VGA CLK} /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_clk
add wave -noupdate -label HS /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_hs
add wave -noupdate -label VS /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_vs
add wave -noupdate -label BLANK /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_blank
add wave -noupdate -label SYNC /TestePxBf_tb/testepxbf_inst_video_vga_controller_0_external_interface_sync
add wave -noupdate -divider MEMORY
add wave -noupdate -label ADDR /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_bfm_conduit_cdt_address
add wave -noupdate -label OE /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_bfm_conduit_cdt_outputenable
add wave -noupdate -label DQ /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_cdt_data_io
add wave -noupdate -label CS /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_bfm_conduit_cdt_chipselect
add wave -noupdate -label WREN /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_bfm_conduit_cdt_write
add wave -noupdate -label {BYTE EN} /TestePxBf_tb/testepxbf_inst_external_memory_bfm_0_conduit_bfm_conduit_cdt_byteenable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {889 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 156
configure wave -valuecolwidth 123
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ns} {17012 ns}
