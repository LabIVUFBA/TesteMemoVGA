`timescale 1ns/1ns

module TestePxBf_tb;
reg clk_tb, rst_tb;

wire [15:0] DQ_tb;
wire [19:0] ADDR_tb;
wire LB_tb, UB_tb, CE_tb, OE_tb, WE_tb;
wire CLK_VGA, HS, VS, BLANK, SYNC;
wire [7:0] R, G, B;
integer arquivo;
reg arquivo_aberto;
	
TestePxBf teste (
		.clk_clk (clk_tb),
		.reset_reset_n (rst_tb),
		.external_memory_bfm_0_conduit_cdt_write (WE_tb),
		.external_memory_bfm_0_conduit_cdt_chipselect (CE_tb),
		.external_memory_bfm_0_conduit_cdt_outputenable (OE_tb),
		.external_memory_bfm_0_conduit_cdt_address (ADDR_tb),
		.external_memory_bfm_0_conduit_cdt_data_io (DQ_tb),
		.external_memory_bfm_0_conduit_cdt_byteenable ({UB_tb, LB_tb}),
		.sram_0_external_interface_DQ (DQ_tb),
		.sram_0_external_interface_ADDR (ADDR_tb),
		.sram_0_external_interface_LB_N (LB_tb),
		.sram_0_external_interface_UB_N (UB_tb),
		.sram_0_external_interface_CE_N (CE_tb),
		.sram_0_external_interface_OE_N (OE_tb),
		.sram_0_external_interface_WE_N (WE_tb),
		.video_vga_controller_0_external_interface_CLK (CLK_VGA),   // video_vga_controller_0_external_interface.CLK
		.video_vga_controller_0_external_interface_HS (HS),    //                                          .HS
		.video_vga_controller_0_external_interface_VS (VS),    //                                          .VS
		.video_vga_controller_0_external_interface_BLANK (BLANK), //                                          .BLANK
		.video_vga_controller_0_external_interface_SYNC (SYNC),  //                                          .SYNC
		.video_vga_controller_0_external_interface_R (R),     //                                          .R
		.video_vga_controller_0_external_interface_G (G),     //                                          .G
		.video_vga_controller_0_external_interface_B (B) 
		);

initial
begin: INPUTS_INITIALIZATION
	clk_tb = 1'b0;
	rst_tb = 1'b0;
	arquivo = $fopen("imageoutput.txt", "w");
	#30 rst_tb = 1'b1;
end
	
always
begin: CLOCK50_GENERATOR
	#10 clk_tb = ~clk_tb;
end

always @ (posedge CLK_VGA) begin
	if ($time > 539 && VS == 0) begin
		$fclose(arquivo);
	end
	else begin
		if($time > 350 && BLANK != 0) begin
			$fwrite(arquivo,"00000000%b%b%b\n", R, G, B); //RGB
		end
	end
end

endmodule 
