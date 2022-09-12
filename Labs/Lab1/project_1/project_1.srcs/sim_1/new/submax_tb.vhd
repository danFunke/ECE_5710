-- Lab 1: Conditional Subtractor - Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity submax_tb is
end submax_tb;

architecture Behavioral of submax_tb is
    component submax
        port (
            x : in STD_LOGIC_VECTOR (3 downto 0);
            y : in STD_LOGIC_VECTOR (3 downto 0);
            z : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal x : STD_LOGIC_VECTOR (3 downto 0);
    signal y : STD_LOGIC_VECTOR (3 downto 0);
    signal z : STD_LOGIC_VECTOR (3 downto 0);

    begin
        -- Intantiate component for test
        UUT: submax port map (
            x(0) => x(0),
            x(1) => x(1),
            x(2) => x(2),
            x(3) => x(3),
            y(0) => y(0),
            y(1) => y(1),
            y(2) => y(2),
            y(3) => y(3),
            z(0) => z(0),
            z(1) => z(1),
            z(2) => z(2),
            z(3) => z(3) 
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
end Behavioral;
