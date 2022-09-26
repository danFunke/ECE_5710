-- Lab 2; Part 1.2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity RegAndMuxControl is
    port (
            x       : in STD_LOGIC_VECTOR (7 downto 0);
            y       : in STD_LOGIC_VECTOR (7 downto 0);
            xmuxsel : out STD_LOGIC;
            ymuxsel : out STD_LOGIC;
            xload   : out STD_LOGIC;
            yload   : out STD_LOGIC
        );
end RegAndMuxControl;

architecture Behavior of RegAndMuxControl is
constant all_zeros : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process (x, y)
    begin
        xmuxsel <= '0';
        ymuxsel <= '0';
        xload   <= '0';
        yload   <= '0';
        if (x = all_zeros) and (y = all_zeros) then
            xmuxsel <= '1';
            ymuxsel <= '1';
            xload   <= '1';
            yload   <= '1';
        elsif (x > y) then
            xmuxsel <= '0';
            ymuxsel <= '1';
            xload   <= '1';
        elsif (y > x) then
            ymuxsel <= '0';
            xmuxsel <= '1';
            yload   <= '1';
        end if;
    end process;
end Behavior;