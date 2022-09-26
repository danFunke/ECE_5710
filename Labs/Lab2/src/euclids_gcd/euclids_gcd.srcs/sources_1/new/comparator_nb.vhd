-- From Listing 5.32 comp.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_nb is
    generic (N:integer := 8);
    port (
            a   : in STD_LOGIC_VECTOR (N-1 downto 0);
            b   : in STD_LOGIC_VECTOR (N-1 downto 0);
            lt  : out STD_LOGIC
        );
end comparator_nb;

architecture Behavior of comparator_nb is
begin
    process (a, b)
    begin
        lt <= '0';
        if (a < b) then
            lt <= '1';
        end if;
    end process;
end Behavior;