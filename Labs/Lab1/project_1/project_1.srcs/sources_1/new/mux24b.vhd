-- Example 9b: Quad 2-to-1 mux using if statement
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux24b is
    Port ( 
            a : in STD_LOGIC_VECTOR (3 downto 0);
            b : in STD_LOGIC_VECTOR (3 downto 0);
            s : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR (3 downto 0)
        );
end mux24b;

architecture mux24b of mux24b is
begin
    p1: process (a, b, s)
    begin
        if s = '0' then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end mux24b;
