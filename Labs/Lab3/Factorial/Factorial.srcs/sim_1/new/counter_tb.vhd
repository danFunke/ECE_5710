library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity counter_tb is
end counter_tb;

architecture tb of counter_tb is
    -- Declare internal components
    component counter
        generic (N : integer);
        port(
            clr : in STD_LOGIC;
            clk : in STD_LOGIC;
            q   : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component;

    -- Test signals
    signal clk_tb   : STD_LOGIC;
    signal clr_tb   : STD_LOGIC;
    signal q_tb     : STD_LOGIC_VECTOR (7 downto 0);
    constant period : time := 20 ns;

    begin
        UUT : counter
            generic map (N => 8)
            port map (
                clk => clk_tb,
                clr => clr_tb,
                q => q_tb
            );
            
        clock : process
            begin
                clk_tb <= '0';
                wait for (period / 2);
                clk_tb <= '1';
                wait for (period / 2);
            end process;
            
        test : process
            begin
                clr_tb <= '1';
                wait for period;
                clr_tb <= '0';
                wait;
            end process;


end tb;
