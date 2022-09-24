-- From Listing 5.9 mux24b.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_to_1_4b is
    port (
            a   : in STD_LOGIC_VECTOR (3 downto 0);
            b   : in STD_LOGIC_VECTOR (3 downto 0);
            s   : in STD_LOGIC;
            y   : out STD_LOGIC_VECTOR (3 downto 0)
        );
end mux_2_to_1_4b;

architecture Behavior of mux_2_to_1_4b is
begin
    p1: process (a, b, s)
    begin
        if (s = '0') then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end Behavior;
