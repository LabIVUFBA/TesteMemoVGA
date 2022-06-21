onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label CLK /unsaved/clk_clk
add wave -noupdate -label RST /unsaved/reset_reset_n
add wave -noupdate -label {VGA CLK} /unsaved/video_vga_controller_conduits_CLK
add wave -noupdate -label HSYNC /unsaved/video_vga_controller_conduits_HS
add wave -noupdate -label VSYNC /unsaved/video_vga_controller_conduits_VS
add wave -noupdate -label R /unsaved/video_vga_controller_conduits_R
add wave -noupdate -label G /unsaved/video_vga_controller_conduits_G
add wave -noupdate -label B /unsaved/video_vga_controller_conduits_B
add wave -noupdate -label BLANK /unsaved/video_vga_controller_conduits_BLANK
add wave -noupdate -label SYNC /unsaved/video_vga_controller_conduits_SYNC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17076545354 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {21406398060 ps}
