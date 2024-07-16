-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jul 16 09:57:14 2024
-- Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/github/memory_system/memory_system.srcs/sources_1/ip/Dcache_bank_tagSRAM/Dcache_bank_tagSRAM_stub.vhdl
-- Design      : Dcache_bank_tagSRAM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu13p-fhgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dcache_bank_tagSRAM is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 21 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 175 downto 0 )
  );

end Dcache_bank_tagSRAM;

architecture stub of Dcache_bank_tagSRAM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[7:0],dina[21:0],douta[175:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_3,Vivado 2019.1";
begin
end;
