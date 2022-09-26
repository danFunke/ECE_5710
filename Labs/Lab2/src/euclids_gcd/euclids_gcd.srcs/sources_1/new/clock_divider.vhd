-- From Listing 7.18 clkdiv.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity clock_divider is
    port (
            mclk    : in STD_LOGIC;     -- 50 MHz Clock
            clr     : in STD_LOGIC;
            clk190  : out STD_LOGIC
        );
end clock_divider;

architecture Behavior of clock_divider is
signal q: STD_LOGIC_VECTOR (23 downto 0);
begin
    process (mclk, clr)
    begin
        if (clr = '1') then
            q <= X"000000";
        elsif (mclk'event and mclk = '1') then
            q <= q + 1;
        end if;
    end process;

    clk190  <= q(17);

end Behavior;