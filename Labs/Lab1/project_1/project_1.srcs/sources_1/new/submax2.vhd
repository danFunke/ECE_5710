-- Lab 1: Conditional Subtractor, Part 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity submax2 is
    Port ( x : in   STD_LOGIC_VECTOR (3 downto 0);
           y : in   STD_LOGIC_VECTOR (3 downto 0);
           z : out  STD_LOGIC_VECTOR (3 downto 0));
end submax2;

architecture submax2 of submax2 is
begin
    process(x, y)
    begin
        if (x < y) then
            z <= y - x;
        else
            z <= x - y;
        end if;
    end process;
end submax2;
