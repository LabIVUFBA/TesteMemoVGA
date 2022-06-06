
module unsaved (
	reset_reset_n,
	video_vga_controller_conduits_CLK,
	video_vga_controller_conduits_HS,
	video_vga_controller_conduits_VS,
	video_vga_controller_conduits_BLANK,
	video_vga_controller_conduits_SYNC,
	video_vga_controller_conduits_R,
	video_vga_controller_conduits_G,
	video_vga_controller_conduits_B,
	clk_clk);	

	input		reset_reset_n;
	output		video_vga_controller_conduits_CLK;
	output		video_vga_controller_conduits_HS;
	output		video_vga_controller_conduits_VS;
	output		video_vga_controller_conduits_BLANK;
	output		video_vga_controller_conduits_SYNC;
	output	[7:0]	video_vga_controller_conduits_R;
	output	[7:0]	video_vga_controller_conduits_G;
	output	[7:0]	video_vga_controller_conduits_B;
	input		clk_clk;
endmodule
