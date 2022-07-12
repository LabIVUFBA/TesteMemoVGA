onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label DQ -radix decimal /TestePxBf_tb/DQ_tb
add wave -noupdate -label CLK -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/clk
add wave -noupdate -label RST -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/reset
add wave -noupdate -divider MASTER
add wave -noupdate -label READ -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_read
add wave -noupdate -label ADDR -radix decimal /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_address
add wave -noupdate -label READDATA -radix decimal /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_readdata
add wave -noupdate -label READDATAVALID -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_readdatavalid
add wave -noupdate -label {WAIT REQUEST} -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_waitrequest
add wave -noupdate -label ARBITERLOCK -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/master_arbiterlock
add wave -noupdate -divider STREAM
add wave -noupdate -label READY -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_ready
add wave -noupdate -label DATA -radix decimal /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_data
add wave -noupdate -label EMPTY -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_empty
add wave -noupdate -label VALID -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_valid
add wave -noupdate -divider PACKET
add wave -noupdate -label {START OF PACKET} -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_startofpacket
add wave -noupdate -label {END OF PACKET} -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/stream_endofpacket
add wave -noupdate -divider FIFO
add wave -noupdate -label {DATA IN} -radix decimal /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_data_in
add wave -noupdate -label READ -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_read
add wave -noupdate -label WRITE -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_write
add wave -noupdate -label {DATA OUT} -radix decimal /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_data_out
add wave -noupdate -label EMPTY -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_empty
add wave -noupdate -label FULL -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_full
add wave -noupdate -label {ALMOST EMPTY} -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_almost_empty
add wave -noupdate -label {ALMOST FULL} -radix binary /TestePxBf_tb/teste/video_pixel_buffer_dma_0/fifo_almost_full
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {281984 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 170
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
WaveRestoreZoom {0 ps} {1326321 ps}
