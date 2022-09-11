----------------------------------------------------------------------------------
-- Example 1: 2-input gates
-- Reference: Digital Design Using Digilent FPGA Boards, pg. 18
-- Create Date: 09/09/2022 10:29:28 PM
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gates2 is
    port(
            a : in std_logic;
            b : in std_logic;
            c : out std_logic_vector (5 downto 0)
        );
end gates2;

architecture gates2 of gates2 is
begin
    c(5) <= a and  b;
    c(4) <= a nand b;
    c(3) <= a or   b;
    c(2) <= a nor  b;
    c(1) <= a xor  b;
    c(0) <= a xnor b;
end gates2;


