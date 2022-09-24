-- Lab 2; Part 1.2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegAndMuxControl_tb is
end RegAndMuxControl_tb;

architecture tb of RegAndMuxControl_tb is
    component RegAndMuxControl
        port (
                x       : in STD_LOGIC_VECTOR (7 downto 0);
                y       : in STD_LOGIC_VECTOR (7 downto 0);
                xmuxsel : out STD_LOGIC;
                ymuxsel : out STD_LOGIC;
                xload   : out STD_LOGIC;
                yload   : out STD_LOGIC
            );
    end component;

    signal x_tb         : STD_LOGIC_VECTOR (7 downto 0);
    signal y_tb         : STD_LOGIC_VECTOR (7 downto 0);
    signal xmuxsel_tb   : STD_LOGIC;
    signal ymuxsel_tb   : STD_LOGIC;
    signal xload_tb     : STD_LOGIC;
    signal yload_tb     : STD_LOGIC;

begin
    UUT: RegAndMuxControl port map (
        x => x_tb,
        y => y_tb,
        xmuxsel => xmuxsel_tb,
        ymuxsel => ymuxsel_tb,
        xload => xload_tb,
        yload => yload_tb
    );

    process
    begin
        -- X and Y both zero
        x_tb <= X"00";
        y_tb <= X"00";
        wait for 100 ns;

        -- X greater than Y
        x_tb <= X"FF";
        y_tb <= X"0F";
        wait for 100 ns;
        
        -- Y greater than X
        x_tb <= X"0F";
        y_tb <= X"FF";
        wait for 100 ns;

        -- X and Y equal and non-zero
        x_tb <= X"0A";
        y_tb <= X"0A";
        wait;
    
    end process;

end tb;
