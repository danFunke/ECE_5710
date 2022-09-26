-- Lab 2: Part 1.4
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity EuclidsGCD_tb is
end EuclidsGCD_tb;

architecture tb of EuclidsGCD_tb is
    component EuclidsGCD
        port (
                x   : in STD_LOGIC_VECTOR (7 downto 0);
                y   : in STD_LOGIC_VECTOR (7 downto 0);
                clk : in STD_LOGIC;
                clr : in STD_LOGIC;
                gcd : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Test signals
    signal x_tb     : STD_LOGIC_VECTOR (7 downto 0);
    signal y_tb     : STD_LOGIC_VECTOR (7 downto 0);
    signal gcd_tb   : STD_LOGIC_VECTOR (7 downto 0) := X"00";
    signal clr_tb   : STD_LOGIC := '0';
    signal clk_tb   : STD_LOGIC := '0';
    constant clk_period : time := 20 ns;

begin
    UUT : EuclidsGCD
        port map (
            x => x_tb,
            y => y_tb,
            clk => clk_tb,
            clr => clr_tb,
            gcd => gcd_tb
        );
    
   clock : process
        begin
            clk_tb <= '0';
            wait for (clk_period / 2);
            clk_tb <= '1';
            wait for (clk_period / 2);
   end process;
   
   test : process
        begin
            clr_tb <= '1';
            x_tb <= X"04";
            y_tb <= X"0E";
            wait for 1 ns;
            clr_tb <= '0';
            wait;
   end process;

end tb;
