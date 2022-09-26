-- Lab 2; Part 2.1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EuclidsGCD_top is
    port (
        sw      : in STD_LOGIC_VECTOR (15 downto 0);
        btn     : in STD_LOGIC_VECTOR (3 downto 2);
        mclk    : in STD_LOGIC;
        ld      : out STD_LOGIC_VECTOR (7 downto 0)
    );
end EuclidsGCD_top;

architecture Behavior of EuclidsGCD_top is
    -- Declare constituent components
    component EuclidsGCD
        port (
                x   : in STD_LOGIC_VECTOR (7 downto 0);
                y   : in STD_LOGIC_VECTOR (7 downto 0);
                clk : in STD_LOGIC;
                clr : in STD_LOGIC;
                gcd : out STD_LOGIC_VECTOR (7 downto 0)
            );
    end component;

    component clock_pulse
        port (
                inp     : in STD_LOGIC;
                cclk    : in STD_LOGIC;
                clr     : in STD_LOGIC;
                outp    : out STD_LOGIC
            );
    end component;

    component clock_divider
        port (
                mclk    : in STD_LOGIC;
                clr     : in STD_LOGIC;
                clk190  : out STD_LOGIC
            );
    end component;

    -- Delcare internal signals
    signal c190 : STD_LOGIC;
    signal cpo  : STD_LOGIC;

    begin
        -- Instantiate constituent components
        cd : clock_divider
            port map (
                mclk    => mclk,
                clr     => btn(3),
                clk190  => c190
            );

        cp : clock_pulse
            port map (
                inp     => btn(2),
                cclk    => c190,
                clr     => btn(3),
                outp    => cpo
            );

        gcd : EuclidsGCD
            port map (
                x => sw(15 downto 8),
                y => sw(7 downto 0),
                clk => cpo,
                clr => btn(3),
                gcd => ld(7 downto 0)
            );

end Behavior;
