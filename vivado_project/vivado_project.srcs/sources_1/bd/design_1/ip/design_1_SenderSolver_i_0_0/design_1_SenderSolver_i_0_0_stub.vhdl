-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue Mar  3 22:36:15 2020
-- Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_SenderSolver_i_0_0/design_1_SenderSolver_i_0_0_stub.vhdl
-- Design      : design_1_SenderSolver_i_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_SenderSolver_i_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    r_addr_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    request_valid_i : in STD_LOGIC;
    CacheResult : in STD_LOGIC_VECTOR ( 108 downto 0 );
    r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rsp_valid : in STD_LOGIC;
    r_memory_data : out STD_LOGIC_VECTOR ( 108 downto 0 );
    r_memory_valid : out STD_LOGIC;
    r_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request_valid : out STD_LOGIC
  );

end design_1_SenderSolver_i_0_0;

architecture stub of design_1_SenderSolver_i_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,r_addr_i[31:0],request_valid_i,CacheResult[108:0],r_data[31:0],rsp_valid,r_memory_data[108:0],r_memory_valid,r_addr[31:0],request_valid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SenderSolver_i,Vivado 2019.1.3";
begin
end;
