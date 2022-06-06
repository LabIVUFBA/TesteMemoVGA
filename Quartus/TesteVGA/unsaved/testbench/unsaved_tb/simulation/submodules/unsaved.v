// unsaved.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module unsaved (
		input  wire       clk_clk,                             //                           clk.clk
		input  wire       reset_reset_n,                       //                         reset.reset_n
		output wire       video_vga_controller_conduits_CLK,   // video_vga_controller_conduits.CLK
		output wire       video_vga_controller_conduits_HS,    //                              .HS
		output wire       video_vga_controller_conduits_VS,    //                              .VS
		output wire       video_vga_controller_conduits_BLANK, //                              .BLANK
		output wire       video_vga_controller_conduits_SYNC,  //                              .SYNC
		output wire [7:0] video_vga_controller_conduits_R,     //                              .R
		output wire [7:0] video_vga_controller_conduits_G,     //                              .G
		output wire [7:0] video_vga_controller_conduits_B      //                              .B
	);

	wire         video_test_pattern_0_avalon_generator_source_valid;         // video_test_pattern_0:valid -> video_rgb_resampler_0:stream_in_valid
	wire  [23:0] video_test_pattern_0_avalon_generator_source_data;          // video_test_pattern_0:data -> video_rgb_resampler_0:stream_in_data
	wire         video_test_pattern_0_avalon_generator_source_ready;         // video_rgb_resampler_0:stream_in_ready -> video_test_pattern_0:ready
	wire         video_test_pattern_0_avalon_generator_source_startofpacket; // video_test_pattern_0:startofpacket -> video_rgb_resampler_0:stream_in_startofpacket
	wire         video_test_pattern_0_avalon_generator_source_endofpacket;   // video_test_pattern_0:endofpacket -> video_rgb_resampler_0:stream_in_endofpacket
	wire         video_rgb_resampler_0_avalon_rgb_source_valid;              // video_rgb_resampler_0:stream_out_valid -> video_vga_controller_0:valid
	wire  [29:0] video_rgb_resampler_0_avalon_rgb_source_data;               // video_rgb_resampler_0:stream_out_data -> video_vga_controller_0:data
	wire         video_rgb_resampler_0_avalon_rgb_source_ready;              // video_vga_controller_0:ready -> video_rgb_resampler_0:stream_out_ready
	wire         video_rgb_resampler_0_avalon_rgb_source_startofpacket;      // video_rgb_resampler_0:stream_out_startofpacket -> video_vga_controller_0:startofpacket
	wire         video_rgb_resampler_0_avalon_rgb_source_endofpacket;        // video_rgb_resampler_0:stream_out_endofpacket -> video_vga_controller_0:endofpacket
	wire         video_pll_0_vga_clk_clk;                                    // video_pll_0:vga_clk_clk -> [rst_controller_001:clk, video_rgb_resampler_0:clk, video_test_pattern_0:clk, video_vga_controller_0:clk]
	wire         rst_controller_reset_out_reset;                             // rst_controller:reset_out -> video_pll_0:ref_reset_reset
	wire         rst_controller_001_reset_out_reset;                         // rst_controller_001:reset_out -> [video_rgb_resampler_0:reset, video_test_pattern_0:reset, video_vga_controller_0:reset]
	wire         video_pll_0_reset_source_reset;                             // video_pll_0:reset_source_reset -> rst_controller_001:reset_in0

	unsaved_video_pll_0 video_pll_0 (
		.ref_clk_clk        (clk_clk),                        //      ref_clk.clk
		.ref_reset_reset    (rst_controller_reset_out_reset), //    ref_reset.reset
		.vga_clk_clk        (video_pll_0_vga_clk_clk),        //      vga_clk.clk
		.reset_source_reset (video_pll_0_reset_source_reset)  // reset_source.reset
	);

	unsaved_video_rgb_resampler_0 video_rgb_resampler_0 (
		.clk                      (video_pll_0_vga_clk_clk),                                    //               clk.clk
		.reset                    (rst_controller_001_reset_out_reset),                         //             reset.reset
		.stream_in_startofpacket  (video_test_pattern_0_avalon_generator_source_startofpacket), //   avalon_rgb_sink.startofpacket
		.stream_in_endofpacket    (video_test_pattern_0_avalon_generator_source_endofpacket),   //                  .endofpacket
		.stream_in_valid          (video_test_pattern_0_avalon_generator_source_valid),         //                  .valid
		.stream_in_ready          (video_test_pattern_0_avalon_generator_source_ready),         //                  .ready
		.stream_in_data           (video_test_pattern_0_avalon_generator_source_data),          //                  .data
		.slave_read               (),                                                           //  avalon_rgb_slave.read
		.slave_readdata           (),                                                           //                  .readdata
		.stream_out_ready         (video_rgb_resampler_0_avalon_rgb_source_ready),              // avalon_rgb_source.ready
		.stream_out_startofpacket (video_rgb_resampler_0_avalon_rgb_source_startofpacket),      //                  .startofpacket
		.stream_out_endofpacket   (video_rgb_resampler_0_avalon_rgb_source_endofpacket),        //                  .endofpacket
		.stream_out_valid         (video_rgb_resampler_0_avalon_rgb_source_valid),              //                  .valid
		.stream_out_data          (video_rgb_resampler_0_avalon_rgb_source_data)                //                  .data
	);

	unsaved_video_test_pattern_0 video_test_pattern_0 (
		.clk           (video_pll_0_vga_clk_clk),                                    //                     clk.clk
		.reset         (rst_controller_001_reset_out_reset),                         //                   reset.reset
		.ready         (video_test_pattern_0_avalon_generator_source_ready),         // avalon_generator_source.ready
		.data          (video_test_pattern_0_avalon_generator_source_data),          //                        .data
		.startofpacket (video_test_pattern_0_avalon_generator_source_startofpacket), //                        .startofpacket
		.endofpacket   (video_test_pattern_0_avalon_generator_source_endofpacket),   //                        .endofpacket
		.valid         (video_test_pattern_0_avalon_generator_source_valid)          //                        .valid
	);

	unsaved_video_vga_controller_0 video_vga_controller_0 (
		.clk           (video_pll_0_vga_clk_clk),                               //                clk.clk
		.reset         (rst_controller_001_reset_out_reset),                    //              reset.reset
		.data          (video_rgb_resampler_0_avalon_rgb_source_data),          //    avalon_vga_sink.data
		.startofpacket (video_rgb_resampler_0_avalon_rgb_source_startofpacket), //                   .startofpacket
		.endofpacket   (video_rgb_resampler_0_avalon_rgb_source_endofpacket),   //                   .endofpacket
		.valid         (video_rgb_resampler_0_avalon_rgb_source_valid),         //                   .valid
		.ready         (video_rgb_resampler_0_avalon_rgb_source_ready),         //                   .ready
		.VGA_CLK       (video_vga_controller_conduits_CLK),                     // external_interface.export
		.VGA_HS        (video_vga_controller_conduits_HS),                      //                   .export
		.VGA_VS        (video_vga_controller_conduits_VS),                      //                   .export
		.VGA_BLANK     (video_vga_controller_conduits_BLANK),                   //                   .export
		.VGA_SYNC      (video_vga_controller_conduits_SYNC),                    //                   .export
		.VGA_R         (video_vga_controller_conduits_R),                       //                   .export
		.VGA_G         (video_vga_controller_conduits_G),                       //                   .export
		.VGA_B         (video_vga_controller_conduits_B)                        //                   .export
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (video_pll_0_reset_source_reset),     // reset_in0.reset
		.clk            (video_pll_0_vga_clk_clk),            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
