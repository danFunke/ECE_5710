-- Lab 2; Part 1.3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EuclidsGCD is
    port (
            x   : in STD_LOGIC_VECTOR (7 downto 0);
            y   : in STD_LOGIC_VECTOR (7 downto 0);
            clk : in STD_LOGIC;
            clr : in STD_LOGIC;
            gcd : out STD_LOGIC_VECTOR (7 downto 0)
        );
end EuclidsGCD;

architecture Behavior of EuclidsGCD is
    -- Declare constituent components
    component mux_2_to_1_nb
        generic (N:integer);
        port (
                a : in STD_LOGIC_VECTOR (N-1 downto 0);
                b : in STD_LOGIC_VECTOR (N-1 downto 0);
                s : in STD_LOGIC;
                y : out STD_LOGIC_VECTOR (N-1 downto 0)
            );
    end component;

    component register_nb
        generic (N:integer);
        port (
                load    : in STD_LOGIC;
                clk     : in STD_LOGIC;
                clr     : in STD_LOGIC;
                d       : in STD_LOGIC_VECTOR (N-1 downto 0);
                q       : out STD_LOGIC_VECTOR (N-1 downto 0)
            );
    end component;

    component submax2
        port (
                x : in STD_LOGIC_VECTOR (7 downto 0);
                y : in STD_LOGIC_VECTOR (7 downto 0);
                z : out STD_LOGIC_VECTOR (7 downto 0)
            );
    end component;

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

    -- Declare internal signals
    signal z        : STD_LOGIC_VECTOR (7 downto 0);
    signal xLoad    : STD_LOGIC;
    signal yLoad    : STD_LOGIC;
    signal xMuxSel  : STD_LOGIC;
    signal yMuxSel  : STD_LOGIC;
    signal xMuxOut  : STD_LOGIC_VECTOR (7 downto 0);
    signal yMuxOut  : STD_LOGIC_VECTOR (7 downto 0);
    signal xRegOut  : STD_LOGIC_VECTOR (7 downto 0);
    signal yRegOut  : STD_LOGIC_VECTOR (7 downto 0);

    -- Define Behavior
    begin
        -- Instantiate constituent components
        xMux : mux_2_to_1_nb
            generic map (N => 8)
            port map (
                a => z,
                b => x,
                s => xMuxSel,
                y => xMuxOut
            );

        yMux : mux_2_to_1_nb
            generic map (N => 8)
            port map (
                a => z,
                b => y,
                s => yMuxSel,
                y => yMuxOut
            );

        xReg : register_nb
            generic map (N => 8)
            port map (
                load    => xLoad,
                clk     => clk, 
                clr     => clr,
                d       => xMuxOut,
                q       => xRegOut
            );
        
        yReg : register_nb
            generic map (N => 8)
            port map (
                load    => yLoad,
                clk     => clk, 
                clr     => clr,
                d       => yMuxOut,
                q       => yRegOut
            );

        subMax : submax2
            port map (
                x => xRegOut,
                y => yRegOut,
                z => z
            );

        ctrl : RegAndMuxControl
            port map (
                x       => xRegOut,
                y       => yRegOut,
                xmuxsel => xMuxSel,
                ymuxsel => yMuxSel,
                xload   => xLoad,
                yload   => yLoad
            );

    gcd <= xRegOut;

end Behavior;
