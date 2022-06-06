	component unsaved is
		port (
			reset_reset_n                       : in  std_logic                    := 'X'; -- reset_n
			video_vga_controller_conduits_CLK   : out std_logic;                           -- CLK
			video_vga_controller_conduits_HS    : out std_logic;                           -- HS
			video_vga_controller_conduits_VS    : out std_logic;                           -- VS
			video_vga_controller_conduits_BLANK : out std_logic;                           -- BLANK
			video_vga_controller_conduits_SYNC  : out std_logic;                           -- SYNC
			video_vga_controller_conduits_R     : out std_logic_vector(7 downto 0);        -- R
			video_vga_controller_conduits_G     : out std_logic_vector(7 downto 0);        -- G
			video_vga_controller_conduits_B     : out std_logic_vector(7 downto 0);        -- B
			clk_clk                             : in  std_logic                    := 'X'  -- clk
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			reset_reset_n                       => CONNECTED_TO_reset_reset_n,                       --                         reset.reset_n
			video_vga_controller_conduits_CLK   => CONNECTED_TO_video_vga_controller_conduits_CLK,   -- video_vga_controller_conduits.CLK
			video_vga_controller_conduits_HS    => CONNECTED_TO_video_vga_controller_conduits_HS,    --                              .HS
			video_vga_controller_conduits_VS    => CONNECTED_TO_video_vga_controller_conduits_VS,    --                              .VS
			video_vga_controller_conduits_BLANK => CONNECTED_TO_video_vga_controller_conduits_BLANK, --                              .BLANK
			video_vga_controller_conduits_SYNC  => CONNECTED_TO_video_vga_controller_conduits_SYNC,  --                              .SYNC
			video_vga_controller_conduits_R     => CONNECTED_TO_video_vga_controller_conduits_R,     --                              .R
			video_vga_controller_conduits_G     => CONNECTED_TO_video_vga_controller_conduits_G,     --                              .G
			video_vga_controller_conduits_B     => CONNECTED_TO_video_vga_controller_conduits_B,     --                              .B
			clk_clk                             => CONNECTED_TO_clk_clk                              --                           clk.clk
		);

