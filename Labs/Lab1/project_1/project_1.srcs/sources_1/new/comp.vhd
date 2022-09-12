-- Example 21: N-bit comparator using relational operators
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp is
    generic (N:integer := 8);
    port(
        x : in STD_LOGIC_VECTOR (N-1 downto 0);
        y : in STD_LOGIC_VECTOR (N-1 downto 0);
        lt : out STD_LOGIC
        );
end comp;

architecture comp of comp is
begin
    process (x, y)
    begin
        lt <= '0';
        if (x < y) then
            lt <= '1';
        end if;
    end process;
end comp;
