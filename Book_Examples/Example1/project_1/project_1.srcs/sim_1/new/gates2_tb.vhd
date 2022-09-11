----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2022 10:42:35 PM
-- Design Name: 
-- Module Name: gates2_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gates2_tb is
--  Port ( );
end gates2_tb;

architecture Behavioral of gates2_tb is
    component gates2
        port(
            a : in std_logic;
            b : in std_logic;
            c : out std_logic_vector (5 downto 0)
        );
    end component;
    
    signal a, b : std_logic;
    signal c : std_logic_vector (5 downto 0);
    
begin
    -- Instantiate component for test, connect ports to internal signals
    UUT: gates2 port map (a => a, b => b, c => c);
    
    process
    begin
        a <= '0';
        b <= '0';
        wait for 100 ns;
        a <= '1';
        b <= '0';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        wait for 100 ns;
        a <= '1';
        b <= '1';
        wait;
    end process;

end Behavioral;
