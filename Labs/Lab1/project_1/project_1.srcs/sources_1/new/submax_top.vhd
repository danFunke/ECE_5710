-- Lab 1: Conditional Subtractor, Part 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity submax_top is
    port (  sw : in STD_LOGIC_VECTOR (7 downto 0);
            ld : out STD_LOGIC_VECTOR (7 downto 4));
end submax_top;

architecture Behavioral of submax_top is
    component submax2
        port (  x : in STD_LOGIC_VECTOR (3 downto 0);
                y : in STD_LOGIC_VECTOR (3 downto 0);
                z : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

begin
    SMax: submax2 port map (
        x => sw(7 downto 4),
        y => sw(3 downto 0),
        z => ld(7 downto 4)
    );
end Behavioral;
