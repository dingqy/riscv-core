-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue Mar  3 22:36:15 2020
-- Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SenderSolver_d_0_0_stub.vhdl
-- Design      : design_1_SenderSolver_d_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    request_valid_i : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    addr_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    request_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rsp_valid : in STD_LOGIC;
    CacheResult : in STD_LOGIC_VECTOR ( 108 downto 0 );
    r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_valid : out STD_LOGIC;
    w_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r_memory_data : out STD_LOGIC_VECTOR ( 108 downto 0 );
    r_memory_valid : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request_valid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "request_valid_i,CLK,RESET,addr_i[31:0],request_mode[1:0],rsp_valid,CacheResult[108:0],r_data[31:0],w_data[31:0],w_valid,w_addr[31:0],r_memory_data[108:0],r_memory_valid,addr[31:0],request_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SenderSolver_d,Vivado 2019.1.3";
begin
end;
