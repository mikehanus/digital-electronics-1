library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_ff_rst is
  -- Entity of testbench is always empty
end entity tb_ff_rst;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_ff_rst is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal sig_clk_100MHz : std_logic;
    signal sig_rst        : std_logic;
    signal sig_data       : std_logic;
    signal sig_qs         : std_logic_vector(3 downto 0);

begin
    uut_top : entity work.top
        port map (
            CLK100MHZ => sig_clk_100MHz,
            BTNC   => sig_rst,
            SW(0)  => sig_data,
            led    => sig_qs
        );

    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process is
    begin
        while now < 600 ns loop -- 30 periods of 100MHz clock
            sig_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            sig_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process is
    begin
        sig_rst <= '0';
        wait for 4ns;
        sig_rst <= '1';
        wait for 16ns;
        sig_rst <= '0';
        wait for 42ns;
        sig_rst <= '1';
        wait for 12ns;
        sig_rst <= '0';
        wait for 102ns;
        sig_rst <= '1';
        wait for 12ns;
        sig_rst <= '0';
        

        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process is
    begin
        report "Stimulus process started";
        sig_data <='0'; wait for 13 ns;
        sig_data <='1'; wait for 23 ns;
        sig_data <='0'; wait for 11 ns;
        sig_data <='1'; wait for 17 ns;
        sig_data <='0'; wait for 25 ns;
        sig_data <='1'; wait for 29 ns;
        sig_data <='0'; wait for 31 ns;
        sig_data <='1'; wait for 140 ns;
        sig_data <='0'; wait for 14 ns;
        sig_data <='1'; wait for 140 ns;
        sig_data <='0'; wait for 14 ns;

        -- DEFINE YOUR INPUT DATA HERE

        report "Stimulus process finished";
        wait;
    end process p_stimulus;

end architecture testbench;