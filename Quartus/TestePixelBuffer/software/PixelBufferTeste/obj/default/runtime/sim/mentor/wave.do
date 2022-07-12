onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 SYS
add wave -noupdate -label RST -radix binary /TestePxBf_tb/testepxbf_inst_reset_bfm_reset_reset
add wave -noupdate -label CLK -radix binary /TestePxBf_tb/testepxbf_inst_clk_bfm_clk_clk
add wave -noupdate -label VGA_CLK -radix binary /TestePxBf_tb/testepxbf_inst_vga_conduit_clk
add wave -noupdate -divider -height 40 MEM
add wave -noupdate -label WREN -radix binary /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_we_n
add wave -noupdate -label LB_N -radix binary /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_lb_n
add wave -noupdate -label UB_N -radix binary /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_ub_n
add wave -noupdate -label CE_N -radix binary /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_ce_n
add wave -noupdate -label OE_N -radix binary /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_oe_n
add wave -noupdate -label ADDR -radix unsigned /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_addr
add wave -noupdate -label DATA -radix unsigned /TestePxBf_tb/testepxbf_inst_sram_controller_conduit_dq
add wave -noupdate -divider -height 40 VGA
add wave -noupdate -label R -radix unsigned /TestePxBf_tb/testepxbf_inst_vga_conduit_r
add wave -noupdate -label G -radix unsigned /TestePxBf_tb/testepxbf_inst_vga_conduit_g
add wave -noupdate -label B -radix unsigned /TestePxBf_tb/testepxbf_inst_vga_conduit_b
add wave -noupdate -label BLANK -radix binary /TestePxBf_tb/testepxbf_inst_vga_conduit_blank
add wave -noupdate -label HS -radix binary /TestePxBf_tb/testepxbf_inst_vga_conduit_hs
add wave -noupdate -label VS -radix binary /TestePxBf_tb/testepxbf_inst_vga_conduit_vs
add wave -noupdate -label SYNC -radix binary /TestePxBf_tb/testepxbf_inst_vga_conduit_sync
add wave -noupdate -divider -height 40 {PX BFFR}
add wave -noupdate -label {MASTER ADDR} -radix unsigned /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_address
add wave -noupdate -label {MASTER READDATA} -radix unsigned /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_readdata
add wave -noupdate -label {STREAM DATA} -radix unsigned /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_data
add wave -noupdate -label {MASTER READDATAVALID} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_readdatavalid
add wave -noupdate -label {MASTER WAITREQUEST} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_waitrequest
add wave -noupdate -label {STREAM READY} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_ready
add wave -noupdate -label {MASTER ARBITER LOCK} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_arbiterlock
add wave -noupdate -label {MASTER READ} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/master_read
add wave -noupdate -label {START OF PACKET} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_startofpacket
add wave -noupdate -label {END OF PACKET} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_endofpacket
add wave -noupdate -label {STREAM EMPTY} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_empty
add wave -noupdate -label {STREAM VALID} -radix binary /TestePxBf_tb/testepxbf_inst/pixel_buffer/stream_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82280376 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 216
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {65648251 ps} {98702148 ps}
