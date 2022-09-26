-- Lab 2; Part 2.1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EuclidsGCD_top2 is
    port (
        sw      : in STD_LOGIC_VECTOR (15 downto 0);
        btn     : in STD_LOGIC_VECTOR (3 downto 2);
        mclk    : in STD_LOGIC;
        a_to_g  : out STD_LOGIC_VECTOR (6 downto 0);
        an      : out STD_LOGIC_VECTOR (7 downto 0);
        dp      : out STD_LOGIC
    );
end EuclidsGCD_top2;

architecture Behavior of EuclidsGCD_top2 is
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

    component x7segb8
        port (
                x       : in STD_LOGIC_VECTOR (31 downto 0);
                clk     : in STD_LOGIC;
                clr     : in STD_LOGIC;
                a_to_g  : out STD_LOGIC_VECTOR (6 downto 0);
                an      : out STD_LOGIC_VECTOR (7 downto 0);
                dp      : out STD_LOGIC
            );
    end component;

    -- Delcare internal signals and constants
    signal c190 : STD_LOGIC;
    signal cpo  : STD_LOGIC;
    signal gcd_o : STD_LOGIC_VECTOR (7 downto 0);
    constant all_zeros_8b : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

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
                gcd => gcd_o
            );
        ssd : x7segb8
            port map (
                x(31 downto 24) => x"00",
                x(23 downto 16) => sw(15 downto 8),
                x(15 downto 8)  => sw(7 downto 0),
                x(7 downto 0)   => gcd_o,
                clk             => mclk,
                clr             => btn(3),
                a_to_g          => a_to_g,
                an              => an,
                dp              => dp
            );

end Behavior;
