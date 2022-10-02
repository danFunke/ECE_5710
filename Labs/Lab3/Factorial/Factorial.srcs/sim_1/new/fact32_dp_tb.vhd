-- Lab 3, part 1.1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fact32_dp_tb is
end fact32_dp_tb;

architecture Behavioral of fact32_dp_tb is
    -- Declare internal components
    component fact32_dp
        port(
            num     : in STD_LOGIC_VECTOR (3 downto 0);
            clk     : in STD_LOGIC;
            clr     : in STD_LOGIC;
            go      : in STD_LOGIC;
            fload   : in STD_LOGIC;
            fact    : out STD_LOGIC_VECTOR (31 downto 0);
            oflow   : out STD_LOGIC;
            done    : out STD_LOGIC
        );
    end component;
    
    -- Declare internal signals
    signal num_tb   : STD_LOGIC_VECTOR (3 downto 0);
    signal clk_tb   : STD_LOGIC;
    signal clr_tb   : STD_LOGIC;
    signal go_tb    : STD_LOGIC;
    signal fload_tb : STD_LOGIC;
    signal fact_tb  : STD_LOGIC_VECTOR (31 downto 0);
    signal oflow_tb : STD_LOGIC;
    signal done_tb  : STD_LOGIC;
    
    -- Declare constants
    constant period : TIME := 20 ns;
    
    begin
        -- Instantiate unit under test
        UUT : fact32_dp
            port map(
                num => num_tb,
                clk => clk_tb,
                clr => clr_tb,
                go => go_tb,
                fload => fload_tb,
                fact => fact_tb,
                oflow => oflow_tb,
                done => done_tb
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
                -- Pulse clear to get into known state
                clr_tb <= '1';
                go_tb <= '1';
                num_tb <= X"6";
                fload_tb <= '0';
                wait for (period / 2);
                
                clr_tb <= '0';
                go_tb <= '0';
                if (done_tb = '1') then
                    fload_tb <= '0';
                else
                    fload_tb <= '1';
                end if;
                wait for (period * 6);
                                               
                -- Pulse clear to get into known state
                clr_tb <= '1';
                go_tb <= '1';
                num_tb <= X"C";
--                fload_tb <= '0';
                wait for (period);
                
                clr_tb <= '0';
                go_tb <= '0';
--                fload_tb <= '1';
                wait for (period * 12);
                
                -- Pulse clear to get into known state
                clr_tb <= '1';
                go_tb <= '1';
                num_tb <= X"F";
--                fload_tb <= '0';
                wait for (period);
                
                clr_tb <= '0';
                go_tb <= '0';
--                fload_tb <= '1';
                wait for (period * 15);
                
                -- Assert clear to stop counting and wait
--                clr_tb <= '1';
                wait;
            end process;

end Behavioral;
