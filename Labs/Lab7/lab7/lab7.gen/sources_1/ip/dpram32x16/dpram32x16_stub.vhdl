-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Nov 10 00:01:44 2022
-- Host        : Winterberry running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dpram32x16 -prefix
--               dpram32x16_ dist_mem_gen_0_stub.vhdl
-- Design      : dist_mem_gen_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpram32x16 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end dpram32x16;

architecture stub of dpram32x16 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[4:0],d[15:0],dpra[4:0],clk,we,spo[15:0],dpo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2022.1";
begin
end;
