	component TestePxBf is
		port (
			clk_clk                       : in    std_logic                     := 'X';             -- clk
			reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
			sram_conduit_cdt_write        : in    std_logic                     := 'X';             -- cdt_write
			sram_conduit_cdt_chipselect   : in    std_logic                     := 'X';             -- cdt_chipselect
			sram_conduit_cdt_outputenable : in    std_logic                     := 'X';             -- cdt_outputenable
			sram_conduit_cdt_address      : in    std_logic_vector(19 downto 0) := (others => 'X'); -- cdt_address
			sram_conduit_cdt_data_io      : inout std_logic_vector(15 downto 0) := (others => 'X'); -- cdt_data_io
			sram_conduit_cdt_byteenable   : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- cdt_byteenable
			sram_controller_conduit_DQ    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			sram_controller_conduit_ADDR  : out   std_logic_vector(19 downto 0);                    -- ADDR
			sram_controller_conduit_LB_N  : out   std_logic;                                        -- LB_N
			sram_controller_conduit_UB_N  : out   std_logic;                                        -- UB_N
			sram_controller_conduit_CE_N  : out   std_logic;                                        -- CE_N
			sram_controller_conduit_OE_N  : out   std_logic;                                        -- OE_N
			sram_controller_conduit_WE_N  : out   std_logic;                                        -- WE_N
			vga_conduit_CLK               : out   std_logic;                                        -- CLK
			vga_conduit_HS                : out   std_logic;                                        -- HS
			vga_conduit_VS                : out   std_logic;                                        -- VS
			vga_conduit_BLANK             : out   std_logic;                                        -- BLANK
			vga_conduit_SYNC              : out   std_logic;                                        -- SYNC
			vga_conduit_R                 : out   std_logic_vector(7 downto 0);                     -- R
			vga_conduit_G                 : out   std_logic_vector(7 downto 0);                     -- G
			vga_conduit_B                 : out   std_logic_vector(7 downto 0)                      -- B
		);
	end component TestePxBf;

	u0 : component TestePxBf
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --                     clk.clk
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --                   reset.reset_n
			sram_conduit_cdt_write        => CONNECTED_TO_sram_conduit_cdt_write,        --            sram_conduit.cdt_write
			sram_conduit_cdt_chipselect   => CONNECTED_TO_sram_conduit_cdt_chipselect,   --                        .cdt_chipselect
			sram_conduit_cdt_outputenable => CONNECTED_TO_sram_conduit_cdt_outputenable, --                        .cdt_outputenable
			sram_conduit_cdt_address      => CONNECTED_TO_sram_conduit_cdt_address,      --                        .cdt_address
			sram_conduit_cdt_data_io      => CONNECTED_TO_sram_conduit_cdt_data_io,      --                        .cdt_data_io
			sram_conduit_cdt_byteenable   => CONNECTED_TO_sram_conduit_cdt_byteenable,   --                        .cdt_byteenable
			sram_controller_conduit_DQ    => CONNECTED_TO_sram_controller_conduit_DQ,    -- sram_controller_conduit.DQ
			sram_controller_conduit_ADDR  => CONNECTED_TO_sram_controller_conduit_ADDR,  --                        .ADDR
			sram_controller_conduit_LB_N  => CONNECTED_TO_sram_controller_conduit_LB_N,  --                        .LB_N
			sram_controller_conduit_UB_N  => CONNECTED_TO_sram_controller_conduit_UB_N,  --                        .UB_N
			sram_controller_conduit_CE_N  => CONNECTED_TO_sram_controller_conduit_CE_N,  --                        .CE_N
			sram_controller_conduit_OE_N  => CONNECTED_TO_sram_controller_conduit_OE_N,  --                        .OE_N
			sram_controller_conduit_WE_N  => CONNECTED_TO_sram_controller_conduit_WE_N,  --                        .WE_N
			vga_conduit_CLK               => CONNECTED_TO_vga_conduit_CLK,               --             vga_conduit.CLK
			vga_conduit_HS                => CONNECTED_TO_vga_conduit_HS,                --                        .HS
			vga_conduit_VS                => CONNECTED_TO_vga_conduit_VS,                --                        .VS
			vga_conduit_BLANK             => CONNECTED_TO_vga_conduit_BLANK,             --                        .BLANK
			vga_conduit_SYNC              => CONNECTED_TO_vga_conduit_SYNC,              --                        .SYNC
			vga_conduit_R                 => CONNECTED_TO_vga_conduit_R,                 --                        .R
			vga_conduit_G                 => CONNECTED_TO_vga_conduit_G,                 --                        .G
			vga_conduit_B                 => CONNECTED_TO_vga_conduit_B                  --                        .B
		);

