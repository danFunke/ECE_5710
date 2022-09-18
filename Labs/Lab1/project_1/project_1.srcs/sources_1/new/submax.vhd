-- Lab 1: Conditional Subtractor, Part 1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity submax is
    Port( 
        x : in STD_LOGIC_VECTOR (3 downto 0);
        y : in STD_LOGIC_VECTOR (3 downto 0);
        z : out STD_LOGIC_VECTOR (3 downto 0)
        );
end submax;

architecture submax of submax is
    component comp
        generic(N:integer);
        port(
            x : in STD_LOGIC_VECTOR (N-1 downto 0);
            y : in STD_LOGIC_VECTOR (N-1 downto 0);
            lt : out STD_LOGIC 
        );
    end component;

    component subtract
        generic(N:integer);
        port (
            a : in STD_LOGIC_VECTOR (N-1 downto 0);
            b : in STD_LOGIC_VECTOR (N-1 downto 0);
            y : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component;

    component mux24b
        port(
            a : in STD_LOGIC_VECTOR (3 downto 0);
            b : in STD_LOGIC_VECTOR (3 downto 0);
            s : in STD_LOGIC;
            y : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal XltY : STD_LOGIC;
    signal YminX : STD_LOGIC_VECTOR (3 downto 0);
    signal XminY : STD_LOGIC_VECTOR (3 downto 0);

    begin
    C1 : comp
        generic map (N => 4)
        port map (
            x(0) => x(0),
            x(1) => x(1),
            x(2) => x(2),
            x(3) => x(3),
            y(0) => y(0),
            y(1) => y(1),
            y(2) => y(2),
            y(3) => y(3),
            lt => XltY
        );
    S1 : subtract
        generic map (N => 4)
        port map (
            a(0) => y(0),
            a(1) => y(1),
            a(2) => y(2),
            a(3) => y(3),
            b(0) => x(0),
            b(1) => x(1),
            b(2) => x(2),
            b(3) => x(3),
            y(0) => YminX(0),
            y(1) => YminX(1),
            y(2) => YminX(2),
            y(3) => YminX(3)
        );
    S2 : subtract
        generic map (N => 4)
        port map (
            a(0) => x(0),
            a(1) => x(1),
            a(2) => x(2),
            a(3) => x(3),
            b(0) => y(0),
            b(1) => y(1),
            b(2) => y(2),
            b(3) => y(3),
            y(0) => XminY(0),
            y(1) => XminY(1),
            y(2) => XminY(2),
            y(3) => XminY(3) 
        );
    M1 : mux24b
        port map (
            a(0) => XminY(0),
            a(1) => XminY(1),
            a(2) => XminY(2),
            a(3) => XminY(3),
            b(0) => YminX(0),
            b(1) => YminX(1),
            b(2) => YminX(2),
            b(3) => YminX(3),
            s => XltY,
            y(0) => z(0),
            y(1) => z(1),
            y(2) => z(2),
            y(3) => z(3)
        );
end submax;
