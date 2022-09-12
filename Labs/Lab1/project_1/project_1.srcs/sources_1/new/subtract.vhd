-- Example 31: N-bit subtractor
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity subtract is
    generic (N:integer := 8);
    port(
        a : in STD_LOGIC_VECTOR (N-1 downto 0);
        b : in STD_LOGIC_VECTOR (N-1 downto 0);
        y : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
end subtract;

architecture subtract of subtract is
begin
    process(a, b)
    begin
        y <= a - b;
    end process;
end subtract;