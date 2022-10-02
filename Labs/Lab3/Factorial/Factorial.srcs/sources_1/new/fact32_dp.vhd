-- Lab 3, part 1.1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity fact32_dp is
    port(
        num     : in STD_LOGIC_VECTOR (3 downto 0);
        clk     : in STD_LOGIC;
        clr     : in STD_LOGIC;
        go      : in STD_LOGIC;
        fload   : in STD_LOGIC;
        fact    : out STD_LOGIC_VECTOR (31 downto 0);
        oflow   : out STD_LOGIC;
        done    : out STD_LOGIC
    );
end fact32_dp;

architecture behavior of fact32_dp is
    -- Declare internal components
    component comparator
        generic (N : integer := 8);
        port(
            x   : in STD_LOGIC_VECTOR (N-1 downto 0);
            y   : in STD_LOGIC_VECTOR (N-1 downto 0);
            lt  : out STD_LOGIC;
            gt  : out STD_LOGIC;
            eq  : out STD_LOGIC    
        );
    end component;
    
    component multiplexer
        generic (N : integer := 8);
        port (
            x   : in STD_LOGIC_VECTOR (N-1 downto 0);
            y   : in STD_LOGIC_VECTOR (N-1 downto 0);
            sel : in STD_LOGIC;
            z   : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component;
    
    component reg
        generic (N : integer := 8);
        port (
            d       : in STD_LOGIC_VECTOR (N-1 downto 0);
            load    : in STD_LOGIC;
            clk     : in STD_LOGIC;
            clr     : in STD_LOGIC;
            q       : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component;
    
    component counter
        generic (N : integer := 8);
        port (
            clr : in STD_LOGIC;
            clk : in STD_LOGIC;
            q   : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component;
    
    -- Declare internal signals
    signal cnt      : STD_LOGIC_VECTOR (3 downto 0);
    signal mult     : STD_LOGIC_VECTOR (31 downto 0);
    signal factd    : STD_LOGIC_VECTOR (63 downto 0);
    signal factq    : STD_LOGIC_VECTOR (31 downto 0);
    
    -- FOR DEVELOPMENT
    signal muxOut : STD_LOGIC_VECTOR (31 downto 0);
    
    begin
        -- Instantiate internal components
        oflowComp : comparator
            generic map (N => 4)
            port map (
                x => num,
                y => X"C",
                gt => oflow
            );
            
        doneComp : comparator
            generic map (N => 4)
            port map (
                x => cnt,
                y => num - X"2",
                gt => done
            );
            
        inMux : multiplexer
            generic map (N => 32)
            port map(
                x => factq,
                y => X"00000001",
                sel => go,
                z => muxOut
            );
            
        factReg : reg
            generic map (N => 32)
            port map(
                d => factd(31 downto 0),
                load => fload,
                clk => clk,
                clr => clr,
                q => factq
            );
        
        count : counter
            generic map (N => 4)
            port map (
                clr => clr,
                clk => clk,
                q   => cnt
            );
        
        -- Subtract cnt from num and extend difference to 32 bits
        mult <= X"0000000" & (num - cnt);
        
        -- Multiply fact by mult
        factd <= muxOut * mult;
        
        fact <= factd(31 downto 0);     
        
end behavior;
