-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jul 11 19:32:29 2024
-- Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/github/memory_system/memory_system.srcs/sources_1/ip/Icache_SRAM_bank0/Icache_SRAM_bank0_stub.vhdl
-- Design      : Icache_SRAM_bank0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu13p-fhgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Icache_SRAM_bank0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 276 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 553 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end Icache_SRAM_bank0;

architecture stub of Icache_SRAM_bank0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[0:0],addra[9:0],dina[276:0],douta[553:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_3,Vivado 2019.1";
begin
end;
