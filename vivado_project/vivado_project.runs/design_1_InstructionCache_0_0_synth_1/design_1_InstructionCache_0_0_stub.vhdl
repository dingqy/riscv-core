-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue Mar  3 22:36:17 2020
-- Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_InstructionCache_0_0_stub.vhdl
-- Design      : design_1_InstructionCache_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    r_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r_valid : in STD_LOGIC;
    FIFO_empty : in STD_LOGIC;
    r_memory_write : in STD_LOGIC_VECTOR ( 108 downto 0 );
    r_memory_valid_input : in STD_LOGIC;
    r_memory_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request_valid : out STD_LOGIC;
    r_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Cache_result : out STD_LOGIC_VECTOR ( 108 downto 0 );
    r_rsp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    r_rsp_valid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,r_addr[31:0],r_valid,FIFO_empty,r_memory_write[108:0],r_memory_valid_input,r_memory_addr[31:0],request_valid,r_data[31:0],Cache_result[108:0],r_rsp[1:0],r_rsp_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "InstructionCache,Vivado 2019.1.3";
begin
end;
