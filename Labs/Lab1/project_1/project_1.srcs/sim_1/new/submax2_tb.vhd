-- Lab 1: Conditional Subtractor, part 2 - Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity submax2_tb is
end submax2_tb;

architecture submax2_tb of submax2_tb is
    component submax2
        port (
            x : in  STD_LOGIC_VECTOR (3 downto 0);
            y : in  STD_LOGIC_VECTOR (3 downto 0);
            z : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal x : STD_LOGIC_VECTOR (3 downto 0);
    signal y : STD_LOGIC_VECTOR (3 downto 0);
    signal z : STD_LOGIC_VECTOR (3 downto 0);

    begin
        -- Instantiate component for test
        UUT: submax2 port map (
            x => x,
            y => y,
            z => z
            );
        
        -- Testbench process
        process
        begin
            -- Y greater than X
            x <= b"0100";
            y <= b"1111";
            wait for 100 ns;
            x <= b"0010";
            y <= b"1000";
            wait for 100 ns;
            x <= b"0001";
            y <= b"0010";
            wait for 100 ns;
            
            -- X greater than Y
            x <= b"1100";
            y <= b"0001";
            wait for 100 ns;
            x <= b"1001";
            y <= b"0011";
            wait for 100 ns;
            x <= b"0111";
            y <= b"0010";
            wait for 100ns;
            
            -- X equal to Y
            x <= b"0111";
            y <= b"0111";
            wait for 100 ns;
            x <= b"0001";
            y <= b"0001";
            wait;
        end process;


end submax2_tb;
