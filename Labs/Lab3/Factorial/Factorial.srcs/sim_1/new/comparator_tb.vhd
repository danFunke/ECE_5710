library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comparator_tb is
end comparator_tb;

architecture tb of comparator_tb is
    -- Declare internal components
    component comparator
        generic (N : integer);
        port(
            x   : in STD_LOGIC_VECTOR (N-1 downto 0);
            y   : in STD_LOGIC_VECTOR (N-1 downto 0);
            lt  : out STD_LOGIC;
            gt  : out STD_LOGIC;
            eq  : out STD_LOGIC
        );
    end component;

    -- Test signals
    signal clk_tb   : STD_LOGIC;
    signal clr_tb   : STD_LOGIC;
    signal x_tb     : STD_LOGIC_VECTOR (7 downto 0);
    signal y_tb     : STD_LOGIC_VECTOR (7 downto 0);
    signal lt_tb    : STD_LOGIC;
    signal gt_tb    : STD_LOGIC;
    signal eq_tb    : STD_LOGIC;
    
    -- Constants
    constant period : time := 20 ns;

    begin
        UUT : comparator
            generic map (N => 8)
            port map (
                x => x_tb,
                y => y_tb,
                lt => lt_tb,
                gt => gt_tb,
                eq => eq_tb
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
                clr_tb <= '0';
                          
                -- LT = 1, GT = 0, EQ = 0
                x_tb <= X"01";
                y_tb <= X"02";
                wait for (period * 2);
                
                -- LT = 0, GT = 1, EQ = 0
                x_tb <= X"FF";
                y_tb <= X"FE";
                wait for (period * 2);
                
                -- LT = 0, GT = 0, EQ = 1
                x_tb <= X"0F";
                y_tb <= X"0F";
                wait for (period * 2);
                
                -- LT = 1, GT = 0, EQ = 0
                x_tb <= X"CE";
                y_tb <= X"FA";
                wait for (period * 2);
                
                -- LT = 0, GT = 1, EQ = 0
                x_tb <= X"FA";
                y_tb <= X"CE";
                wait for (period * 2);
                
                -- LT = 0, GT = 0, EQ = 1
                x_tb <= X"00";
                y_tb <= X"00";
                wait for (period * 2);
                
                wait;
            end process;


end tb;
