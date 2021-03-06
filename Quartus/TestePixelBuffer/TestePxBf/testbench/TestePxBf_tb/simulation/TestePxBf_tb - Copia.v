// TestePxBf_tb.v

// Generated using ACDS version 20.1 720

`timescale 1 ns / 1 ns
module TestePxBf_tb (
	);

	integer		 arquivo;
	wire         testepxbf_inst_clk_bfm_clk_clk;                           // TestePxBf_inst_clk_bfm:clk -> [TestePxBf_inst:clk_clk, TestePxBf_inst_reset_bfm:clk]
	wire  [19:0] testepxbf_inst_sram_conduit_bfm_conduit_cdt_address;      // TestePxBf_inst_sram_conduit_bfm:sig_cdt_address -> TestePxBf_inst:sram_conduit_cdt_address
	wire   [0:0] testepxbf_inst_sram_conduit_bfm_conduit_cdt_outputenable; // TestePxBf_inst_sram_conduit_bfm:sig_cdt_outputenable -> TestePxBf_inst:sram_conduit_cdt_outputenable
	wire  [15:0] testepxbf_inst_sram_conduit_cdt_data_io;                  // [] -> [TestePxBf_inst:sram_conduit_cdt_data_io, TestePxBf_inst_sram_conduit_bfm:sig_cdt_data_io]
	wire   [0:0] testepxbf_inst_sram_conduit_bfm_conduit_cdt_chipselect;   // TestePxBf_inst_sram_conduit_bfm:sig_cdt_chipselect -> TestePxBf_inst:sram_conduit_cdt_chipselect
	wire   [0:0] testepxbf_inst_sram_conduit_bfm_conduit_cdt_write;        // TestePxBf_inst_sram_conduit_bfm:sig_cdt_write -> TestePxBf_inst:sram_conduit_cdt_write
	wire   [1:0] testepxbf_inst_sram_conduit_bfm_conduit_cdt_byteenable;   // TestePxBf_inst_sram_conduit_bfm:sig_cdt_byteenable -> TestePxBf_inst:sram_conduit_cdt_byteenable
	wire         testepxbf_inst_sram_controller_conduit_oe_n;              // TestePxBf_inst:sram_controller_conduit_OE_N -> TestePxBf_inst_sram_controller_conduit_bfm:sig_OE_N
	wire         testepxbf_inst_sram_controller_conduit_we_n;              // TestePxBf_inst:sram_controller_conduit_WE_N -> TestePxBf_inst_sram_controller_conduit_bfm:sig_WE_N
	wire         testepxbf_inst_sram_controller_conduit_lb_n;              // TestePxBf_inst:sram_controller_conduit_LB_N -> TestePxBf_inst_sram_controller_conduit_bfm:sig_LB_N
	wire         testepxbf_inst_sram_controller_conduit_ub_n;              // TestePxBf_inst:sram_controller_conduit_UB_N -> TestePxBf_inst_sram_controller_conduit_bfm:sig_UB_N
	wire  [15:0] testepxbf_inst_sram_controller_conduit_dq;                // [] -> [TestePxBf_inst:sram_controller_conduit_DQ, TestePxBf_inst_sram_controller_conduit_bfm:sig_DQ]
	wire         testepxbf_inst_sram_controller_conduit_ce_n;              // TestePxBf_inst:sram_controller_conduit_CE_N -> TestePxBf_inst_sram_controller_conduit_bfm:sig_CE_N
	wire  [19:0] testepxbf_inst_sram_controller_conduit_addr;              // TestePxBf_inst:sram_controller_conduit_ADDR -> TestePxBf_inst_sram_controller_conduit_bfm:sig_ADDR
	wire         testepxbf_inst_vga_conduit_blank;                         // TestePxBf_inst:vga_conduit_BLANK -> TestePxBf_inst_vga_conduit_bfm:sig_BLANK
	wire   [7:0] testepxbf_inst_vga_conduit_b;                             // TestePxBf_inst:vga_conduit_B -> TestePxBf_inst_vga_conduit_bfm:sig_B
	wire   [7:0] testepxbf_inst_vga_conduit_r;                             // TestePxBf_inst:vga_conduit_R -> TestePxBf_inst_vga_conduit_bfm:sig_R
	wire         testepxbf_inst_vga_conduit_clk;                           // TestePxBf_inst:vga_conduit_CLK -> TestePxBf_inst_vga_conduit_bfm:sig_CLK
	wire   [7:0] testepxbf_inst_vga_conduit_g;                             // TestePxBf_inst:vga_conduit_G -> TestePxBf_inst_vga_conduit_bfm:sig_G
	wire         testepxbf_inst_vga_conduit_hs;                            // TestePxBf_inst:vga_conduit_HS -> TestePxBf_inst_vga_conduit_bfm:sig_HS
	wire         testepxbf_inst_vga_conduit_sync;                          // TestePxBf_inst:vga_conduit_SYNC -> TestePxBf_inst_vga_conduit_bfm:sig_SYNC
	wire         testepxbf_inst_vga_conduit_vs;                            // TestePxBf_inst:vga_conduit_VS -> TestePxBf_inst_vga_conduit_bfm:sig_VS
	wire         testepxbf_inst_reset_bfm_reset_reset;                     // TestePxBf_inst_reset_bfm:reset -> TestePxBf_inst:reset_reset_n

	TestePxBf testepxbf_inst (
		.clk_clk                       (testepxbf_inst_clk_bfm_clk_clk),                           //                     clk.clk
		.reset_reset_n                 (testepxbf_inst_reset_bfm_reset_reset),                     //                   reset.reset_n
		.sram_conduit_cdt_write        (testepxbf_inst_sram_controller_conduit_we_n),        //            sram_conduit.cdt_write
		.sram_conduit_cdt_chipselect   (testepxbf_inst_sram_controller_conduit_ce_n),   //                        .cdt_chipselect
		.sram_conduit_cdt_outputenable (testepxbf_inst_sram_controller_conduit_oe_n), //                        .cdt_outputenable
		.sram_conduit_cdt_address      (testepxbf_inst_sram_controller_conduit_addr),      //                        .cdt_address
		.sram_conduit_cdt_data_io      (testepxbf_inst_sram_controller_conduit_dq),                  //                        .cdt_data_io
		.sram_conduit_cdt_byteenable   ({testepxbf_inst_sram_controller_conduit_ub_n, testepxbf_inst_sram_controller_conduit_lb_n}),   //                        .cdt_byteenable
		.sram_controller_conduit_DQ    (testepxbf_inst_sram_controller_conduit_dq),                // sram_controller_conduit.DQ
		.sram_controller_conduit_ADDR  (testepxbf_inst_sram_controller_conduit_addr),              //                        .ADDR
		.sram_controller_conduit_LB_N  (testepxbf_inst_sram_controller_conduit_lb_n),              //                        .LB_N
		.sram_controller_conduit_UB_N  (testepxbf_inst_sram_controller_conduit_ub_n),              //                        .UB_N
		.sram_controller_conduit_CE_N  (testepxbf_inst_sram_controller_conduit_ce_n),              //                        .CE_N
		.sram_controller_conduit_OE_N  (testepxbf_inst_sram_controller_conduit_oe_n),              //                        .OE_N
		.sram_controller_conduit_WE_N  (testepxbf_inst_sram_controller_conduit_we_n),              //                        .WE_N
		.vga_conduit_CLK               (testepxbf_inst_vga_conduit_clk),                           //             vga_conduit.CLK
		.vga_conduit_HS                (testepxbf_inst_vga_conduit_hs),                            //                        .HS
		.vga_conduit_VS                (testepxbf_inst_vga_conduit_vs),                            //                        .VS
		.vga_conduit_BLANK             (testepxbf_inst_vga_conduit_blank),                         //                        .BLANK
		.vga_conduit_SYNC              (testepxbf_inst_vga_conduit_sync),                          //                        .SYNC
		.vga_conduit_R                 (testepxbf_inst_vga_conduit_r),                             //                        .R
		.vga_conduit_G                 (testepxbf_inst_vga_conduit_g),                             //                        .G
		.vga_conduit_B                 (testepxbf_inst_vga_conduit_b)                              //                        .B
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) testepxbf_inst_clk_bfm (
		.clk (testepxbf_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) testepxbf_inst_reset_bfm (
		.reset (testepxbf_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (testepxbf_inst_clk_bfm_clk_clk)        //   clk.clk
	);

	altera_conduit_bfm testepxbf_inst_sram_conduit_bfm (
		.sig_cdt_address      (testepxbf_inst_sram_conduit_bfm_conduit_cdt_address),      // conduit.cdt_address
		.sig_cdt_byteenable   (testepxbf_inst_sram_conduit_bfm_conduit_cdt_byteenable),   //        .cdt_byteenable
		.sig_cdt_chipselect   (testepxbf_inst_sram_conduit_bfm_conduit_cdt_chipselect),   //        .cdt_chipselect
		.sig_cdt_data_io      (testepxbf_inst_sram_conduit_cdt_data_io),                  //        .cdt_data_io
		.sig_cdt_outputenable (testepxbf_inst_sram_conduit_bfm_conduit_cdt_outputenable), //        .cdt_outputenable
		.sig_cdt_write        (testepxbf_inst_sram_conduit_bfm_conduit_cdt_write)         //        .cdt_write
	);

	altera_conduit_bfm_0002 testepxbf_inst_sram_controller_conduit_bfm (
		.sig_ADDR (testepxbf_inst_sram_controller_conduit_addr), // conduit.ADDR
		.sig_CE_N (testepxbf_inst_sram_controller_conduit_ce_n), //        .CE_N
		.sig_DQ   (testepxbf_inst_sram_controller_conduit_dq),   //        .DQ
		.sig_LB_N (testepxbf_inst_sram_controller_conduit_lb_n), //        .LB_N
		.sig_OE_N (testepxbf_inst_sram_controller_conduit_oe_n), //        .OE_N
		.sig_UB_N (testepxbf_inst_sram_controller_conduit_ub_n), //        .UB_N
		.sig_WE_N (testepxbf_inst_sram_controller_conduit_we_n)  //        .WE_N
	);

	altera_conduit_bfm_0003 testepxbf_inst_vga_conduit_bfm (
		.sig_B     (testepxbf_inst_vga_conduit_b),     // conduit.B
		.sig_BLANK (testepxbf_inst_vga_conduit_blank), //        .BLANK
		.sig_CLK   (testepxbf_inst_vga_conduit_clk),   //        .CLK
		.sig_G     (testepxbf_inst_vga_conduit_g),     //        .G
		.sig_HS    (testepxbf_inst_vga_conduit_hs),    //        .HS
		.sig_R     (testepxbf_inst_vga_conduit_r),     //        .R
		.sig_SYNC  (testepxbf_inst_vga_conduit_sync),  //        .SYNC
		.sig_VS    (testepxbf_inst_vga_conduit_vs)     //        .VS
	);

	initial begin
        arquivo = $fopen("imageoutputnios.txt", "w");         
	end

	always @ (posedge testepxbf_inst_vga_conduit_clk) begin
		if ($time > 16700000 && testepxbf_inst_vga_conduit_vs == 0) begin
			$fclose(arquivo);
		end
		else begin
			if($time > 16700000 && testepxbf_inst_vga_conduit_blank != 0) begin
				$fwrite(arquivo,"00000000%b%b%b\n", testepxbf_inst_vga_conduit_r, testepxbf_inst_vga_conduit_g, testepxbf_inst_vga_conduit_b);
			end
		end
	end

endmodule
