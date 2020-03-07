-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue Mar  3 22:36:36 2020
-- Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl
-- Design      : design_1_xbar_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    f_hot2enc_return : out STD_LOGIC;
    aa_mi_artarget_hot : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[1]_0\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[64]_0\ : out STD_LOGIC_VECTOR ( 59 downto 0 );
    \gen_arbiter.m_mesg_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_0\ : out STD_LOGIC;
    \gen_axi.read_cs0__0\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[39]_0\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_0\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    mi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    p_16_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grant_hot0 : in STD_LOGIC;
    st_aa_arvalid_qual : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_cmd_pop_1__1\ : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter : entity is "axi_crossbar_v2_1_20_addr_arbiter";
end design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_mi_artarget_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_mi_arvalid\ : STD_LOGIC;
  signal any_grant : STD_LOGIC;
  signal \^f_hot2enc_return\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \^gen_arbiter.m_mesg_i_reg[64]_0\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal \gen_arbiter.m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.qual_reg_reg[0]_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal p_0_in10_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[1]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[10]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[11]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[12]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[13]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[14]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[15]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[16]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[17]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[18]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[19]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[20]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[21]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[22]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[23]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[24]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[25]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[26]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[27]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[28]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[29]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[30]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[32]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[33]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[34]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[35]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[36]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[37]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[38]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[39]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[40]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[41]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[42]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[43]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[45]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[47]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[48]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[49]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[4]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[54]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[55]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[56]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[57]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[58]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[59]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[60]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[61]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[62]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[63]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[6]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[7]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[8]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[9]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_valid_i_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_arready_i_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[8]_i_1\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
  aa_mi_artarget_hot(0) <= \^aa_mi_artarget_hot\(0);
  aa_mi_arvalid <= \^aa_mi_arvalid\;
  f_hot2enc_return <= \^f_hot2enc_return\;
  \gen_arbiter.m_mesg_i_reg[64]_0\(59 downto 0) <= \^gen_arbiter.m_mesg_i_reg[64]_0\(59 downto 0);
  \gen_arbiter.qual_reg_reg[0]_0\ <= \^gen_arbiter.qual_reg_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[0]_0\ <= \^gen_arbiter.s_ready_i_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[1]_0\ <= \^gen_arbiter.s_ready_i_reg[1]_0\;
\gen_arbiter.any_grant_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00E0"
    )
        port map (
      I0 => \^f_hot2enc_return\,
      I1 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I2 => grant_hot0,
      I3 => \^aa_mi_arvalid\,
      I4 => \gen_arbiter.any_grant_reg_n_0\,
      I5 => \gen_arbiter.grant_hot[1]_i_2__0_n_0\,
      O => \gen_arbiter.any_grant_i_1__0_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1__0_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => any_grant,
      I2 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I3 => \gen_arbiter.grant_hot[1]_i_2__0_n_0\,
      O => \gen_arbiter.grant_hot[0]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => any_grant,
      I2 => \^f_hot2enc_return\,
      I3 => \gen_arbiter.grant_hot[1]_i_2__0_n_0\,
      O => \gen_arbiter.grant_hot[1]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^aa_mi_artarget_hot\(0),
      I1 => mi_arready(0),
      I2 => \^aa_mi_arvalid\,
      I3 => aresetn_d,
      O => \gen_arbiter.grant_hot[1]_i_2__0_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[0]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[1]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000002000"
    )
        port map (
      I0 => qual_reg(0),
      I1 => \^gen_arbiter.s_ready_i_reg[0]_0\,
      I2 => s_axi_arvalid(0),
      I3 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I4 => p_0_in10_in,
      I5 => p_2_in,
      O => \^gen_arbiter.qual_reg_reg[0]_0\
    );
\gen_arbiter.last_rr_hot[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid(1),
      I1 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I2 => qual_reg(1),
      O => p_0_in10_in
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^gen_arbiter.qual_reg_reg[0]_0\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^f_hot2enc_return\,
      Q => p_2_in,
      S => \^sr\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000554000004040"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\,
      I1 => st_aa_arvalid_qual(0),
      I2 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I3 => st_aa_arvalid_qual(1),
      I4 => \gen_arbiter.last_rr_hot_reg[1]_0\,
      I5 => \^f_hot2enc_return\,
      O => any_grant
    );
\gen_arbiter.m_grant_enc_i[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000002000"
    )
        port map (
      I0 => qual_reg(1),
      I1 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I2 => s_axi_arvalid(1),
      I3 => p_2_in,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_7_n_0\,
      I5 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      O => \^f_hot2enc_return\
    );
\gen_arbiter.m_grant_enc_i[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid(0),
      I1 => \^gen_arbiter.s_ready_i_reg[0]_0\,
      I2 => qual_reg(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_7_n_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^f_hot2enc_return\,
      Q => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => s_axi_arid(1),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_araddr(40),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_araddr(41),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_araddr(42),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => s_axi_araddr(43),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_araddr(44),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => s_axi_araddr(45),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => s_axi_araddr(46),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => s_axi_araddr(47),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => s_axi_araddr(48),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => s_axi_araddr(49),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => s_axi_araddr(50),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => s_axi_araddr(51),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => s_axi_araddr(52),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => s_axi_araddr(53),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => s_axi_araddr(54),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => s_axi_araddr(55),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => s_axi_araddr(56),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => s_axi_araddr(57),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => s_axi_araddr(58),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => s_axi_araddr(59),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(32),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => s_axi_araddr(60),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => s_axi_araddr(61),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => s_axi_araddr(62),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => s_axi_araddr(63),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(8),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(9),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(10),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(11),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(12),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(13),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(33),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(14),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(15),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(3),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(4),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(5),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[45]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arlock(0),
      I1 => s_axi_arlock(1),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(45)
    );
\gen_arbiter.m_mesg_i[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => s_axi_arprot(3),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => s_axi_arprot(4),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => s_axi_arprot(5),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(34),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(2),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(3),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arcache(0),
      I1 => s_axi_arcache(4),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arcache(1),
      I1 => s_axi_arcache(5),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arcache(2),
      I1 => s_axi_arcache(6),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arcache(3),
      I1 => s_axi_arcache(7),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(35),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arqos(0),
      I1 => s_axi_arqos(4),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arqos(1),
      I1 => s_axi_arqos(5),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arqos(2),
      I1 => s_axi_arqos(6),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_arqos(3),
      I1 => s_axi_arqos(7),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(63)
    );
\gen_arbiter.m_mesg_i[64]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_aruser(0),
      I1 => s_axi_aruser(1),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(64)
    );
\gen_arbiter.m_mesg_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(36),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_araddr(37),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_araddr(38),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(39),
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(0),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(10),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(11),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(12),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(13),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(14),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(15),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(16),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(17),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(18),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(19),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(20),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(21),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(22),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(23),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(24),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(25),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(26),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(27),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(28),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(29),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(2),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(30),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(31),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(32),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(33),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(34),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(35),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(36),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(37),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(38),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(39),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(3),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(40),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(41),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(42),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(43),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(44),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(45),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(45),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(46),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(47),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(49),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(48),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(4),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(49),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(50),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(51),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(52),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(53),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(54),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(5),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(55),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(56),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(57),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(63),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(58),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(64),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(59),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(6),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(7),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(8),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \^gen_arbiter.m_mesg_i_reg[64]_0\(9),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => '1',
      Q => \^aa_mi_artarget_hot\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => \^aa_mi_artarget_hot\(0),
      I1 => mi_arready(0),
      I2 => \^aa_mi_arvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_valid_i_i_1__0_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1__0_n_0\,
      Q => \^aa_mi_arvalid\,
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => qual_reg(0),
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => qual_reg(1),
      R => \^sr\(0)
    );
\gen_arbiter.s_ready_i[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => aresetn_d,
      I2 => \^aa_mi_arvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[0]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => aresetn_d,
      I2 => \^aa_mi_arvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[0]_i_1__0_n_0\,
      Q => \^gen_arbiter.s_ready_i_reg[0]_0\,
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\,
      Q => \^gen_arbiter.s_ready_i_reg[1]_0\,
      R => '0'
    );
\gen_axi.s_axi_arready_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^aa_mi_artarget_hot\(0),
      I2 => mi_arready(0),
      O => \gen_axi.read_cs0__0\
    );
\gen_axi.s_axi_rid_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[64]_0\(0),
      I1 => mi_arready(0),
      I2 => \^aa_mi_artarget_hot\(0),
      I3 => \^aa_mi_arvalid\,
      I4 => p_11_in,
      I5 => p_16_in(0),
      O => \gen_arbiter.m_mesg_i_reg[0]_0\
    );
\gen_axi.s_axi_rid_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[64]_0\(1),
      I1 => mi_arready(0),
      I2 => \^aa_mi_artarget_hot\(0),
      I3 => \^aa_mi_arvalid\,
      I4 => p_11_in,
      I5 => p_16_in(1),
      O => \gen_arbiter.m_mesg_i_reg[1]_0\
    );
\gen_axi.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[64]_0\(39),
      I1 => \^gen_arbiter.m_mesg_i_reg[64]_0\(38),
      I2 => \^gen_arbiter.m_mesg_i_reg[64]_0\(40),
      I3 => \^gen_arbiter.m_mesg_i_reg[64]_0\(41),
      I4 => \gen_axi.s_axi_rlast_i_i_4_n_0\,
      O => \gen_arbiter.m_mesg_i_reg[39]_0\
    );
\gen_axi.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[64]_0\(36),
      I1 => \^gen_arbiter.m_mesg_i_reg[64]_0\(37),
      I2 => \^gen_arbiter.m_mesg_i_reg[64]_0\(34),
      I3 => \^gen_arbiter.m_mesg_i_reg[64]_0\(35),
      O => \gen_axi.s_axi_rlast_i_i_4_n_0\
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95554000"
    )
        port map (
      I0 => \r_cmd_pop_1__1\,
      I1 => \^aa_mi_arvalid\,
      I2 => \^aa_mi_artarget_hot\(0),
      I3 => mi_arready(0),
      I4 => r_issuing_cnt(0),
      O => \gen_arbiter.m_valid_i_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter_0 is
  port (
    aa_wm_awgrant_enc : out STD_LOGIC;
    f_hot2enc_return : out STD_LOGIC;
    aa_mi_awtarget_hot : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    \gen_axi.write_cs01_out\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \sa_wm_awvalid__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_aa_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[1]\ : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grant_hot0 : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[1]_0\ : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awvalid_qual : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_aready__1\ : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \w_cmd_pop_1__0\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter_0 : entity is "axi_crossbar_v2_1_20_addr_arbiter";
end design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter_0;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal \^aa_mi_awtarget_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_sa_awvalid\ : STD_LOGIC;
  signal \^aa_wm_awgrant_enc\ : STD_LOGIC;
  signal any_grant : STD_LOGIC;
  signal \^f_hot2enc_return\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.qual_reg_reg[0]_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_axi.write_cs01_out\ : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal p_0_in10_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ss_aa_awready\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_axi.write_cs[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[16]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[17]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[19]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[24]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[25]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[26]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[27]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[28]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[29]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[30]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[32]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[33]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[34]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[35]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[36]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[37]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[38]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[39]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[40]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[41]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[42]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[43]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[45]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[47]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[48]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[49]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[54]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[55]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[56]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[57]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[58]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[59]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[60]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[61]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[62]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[63]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3\ : label is "soft_lutpair34";
begin
  Q(59 downto 0) <= \^q\(59 downto 0);
  aa_mi_awtarget_hot(0) <= \^aa_mi_awtarget_hot\(0);
  aa_sa_awvalid <= \^aa_sa_awvalid\;
  aa_wm_awgrant_enc <= \^aa_wm_awgrant_enc\;
  f_hot2enc_return <= \^f_hot2enc_return\;
  \gen_arbiter.qual_reg_reg[0]_0\ <= \^gen_arbiter.qual_reg_reg[0]_0\;
  \gen_axi.write_cs01_out\ <= \^gen_axi.write_cs01_out\;
  ss_aa_awready(1 downto 0) <= \^ss_aa_awready\(1 downto 0);
\FSM_onehot_gen_axi.write_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => m_ready_d(1),
      I2 => \^aa_mi_awtarget_hot\(0),
      I3 => mi_awready(0),
      O => \^gen_axi.write_cs01_out\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800AAAA"
    )
        port map (
      I0 => \storage_data1_reg[0]\(0),
      I1 => \^aa_mi_awtarget_hot\(0),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      I4 => \m_aready__1\,
      O => D(0)
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => \storage_data1_reg[0]\(0),
      I1 => \^aa_mi_awtarget_hot\(0),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      I4 => \m_aready__1\,
      O => D(1)
    );
\FSM_onehot_state[3]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^aa_mi_awtarget_hot\(0),
      I1 => m_ready_d(0),
      I2 => \^aa_sa_awvalid\,
      O => \sa_wm_awvalid__0\(0)
    );
\gen_arbiter.any_grant_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00E0"
    )
        port map (
      I0 => \^f_hot2enc_return\,
      I1 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I2 => grant_hot0,
      I3 => \^aa_sa_awvalid\,
      I4 => \gen_arbiter.any_grant_reg_n_0\,
      I5 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.any_grant_i_1_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => any_grant,
      I2 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I3 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.grant_hot[0]_i_1_n_0\
    );
\gen_arbiter.grant_hot[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => any_grant,
      I2 => \^f_hot2enc_return\,
      I3 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[0]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[1]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000002000"
    )
        port map (
      I0 => qual_reg(0),
      I1 => \^ss_aa_awready\(0),
      I2 => ss_aa_awvalid(0),
      I3 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I4 => p_0_in10_in,
      I5 => p_2_in,
      O => \^gen_arbiter.qual_reg_reg[0]_0\
    );
\gen_arbiter.last_rr_hot[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => m_ready_d_1(0),
      I1 => s_axi_awvalid(1),
      I2 => \^ss_aa_awready\(1),
      I3 => qual_reg(1),
      O => p_0_in10_in
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^gen_arbiter.qual_reg_reg[0]_0\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => SR(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^f_hot2enc_return\,
      Q => p_2_in,
      S => SR(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000554000004040"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\,
      I1 => st_aa_awvalid_qual(0),
      I2 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I3 => st_aa_awvalid_qual(1),
      I4 => \gen_arbiter.last_rr_hot_reg[1]_0\,
      I5 => \^f_hot2enc_return\,
      O => any_grant
    );
\gen_arbiter.m_grant_enc_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000002000"
    )
        port map (
      I0 => qual_reg(1),
      I1 => \^ss_aa_awready\(1),
      I2 => ss_aa_awvalid(1),
      I3 => p_2_in,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\,
      I5 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      O => \^f_hot2enc_return\
    );
\gen_arbiter.m_grant_enc_i[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => m_ready_d_0(0),
      I1 => s_axi_awvalid(0),
      I2 => \^ss_aa_awready\(0),
      I3 => qual_reg(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => \^f_hot2enc_return\,
      Q => \^aa_wm_awgrant_enc\,
      R => SR(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => s_axi_awid(1),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => s_axi_awaddr(40),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => s_axi_awaddr(41),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_awaddr(42),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_awaddr(43),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => s_axi_awaddr(44),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => s_axi_awaddr(45),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => s_axi_awaddr(46),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => s_axi_awaddr(47),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => s_axi_awaddr(48),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => s_axi_awaddr(49),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(18),
      I1 => s_axi_awaddr(50),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(19),
      I1 => s_axi_awaddr(51),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(20),
      I1 => s_axi_awaddr(52),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(21),
      I1 => s_axi_awaddr(53),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => s_axi_awaddr(54),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => s_axi_awaddr(55),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(24),
      I1 => s_axi_awaddr(56),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => s_axi_awaddr(57),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(26),
      I1 => s_axi_awaddr(58),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => s_axi_awaddr(59),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(32),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => s_axi_awaddr(60),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(29),
      I1 => s_axi_awaddr(61),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => s_axi_awaddr(62),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => s_axi_awaddr(63),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(8),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(9),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(10),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(11),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(12),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awlen(13),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(33),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awlen(14),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awlen(15),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(3),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(4),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(5),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awlock(0),
      I1 => s_axi_awlock(1),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(45)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awprot(0),
      I1 => s_axi_awprot(3),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awprot(1),
      I1 => s_axi_awprot(4),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awprot(2),
      I1 => s_axi_awprot(5),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(34),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(2),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(3),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awcache(0),
      I1 => s_axi_awcache(4),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awcache(1),
      I1 => s_axi_awcache(5),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awcache(2),
      I1 => s_axi_awcache(6),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awcache(3),
      I1 => s_axi_awcache(7),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awaddr(35),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awqos(0),
      I1 => s_axi_awqos(4),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awqos(1),
      I1 => s_axi_awqos(5),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awqos(2),
      I1 => s_axi_awqos(6),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awqos(3),
      I1 => s_axi_awqos(7),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(63)
    );
\gen_arbiter.m_mesg_i[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awuser(0),
      I1 => s_axi_awuser(1),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(64)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awaddr(36),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_awaddr(37),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_awaddr(38),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => s_axi_awaddr(39),
      I2 => \^aa_wm_awgrant_enc\,
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \^q\(10),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \^q\(11),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \^q\(12),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \^q\(13),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \^q\(14),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \^q\(15),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \^q\(16),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \^q\(17),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \^q\(18),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \^q\(19),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \^aa_wm_awgrant_enc\,
      Q => \^q\(1),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \^q\(20),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \^q\(21),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \^q\(22),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \^q\(23),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \^q\(24),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \^q\(25),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \^q\(26),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \^q\(27),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \^q\(28),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \^q\(29),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \^q\(30),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \^q\(31),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \^q\(32),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \^q\(33),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \^q\(34),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \^q\(35),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \^q\(36),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \^q\(37),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \^q\(38),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \^q\(39),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \^q\(40),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \^q\(41),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \^q\(42),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \^q\(43),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \^q\(44),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(45),
      Q => \^q\(45),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \^q\(46),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \^q\(47),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(49),
      Q => \^q\(48),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \^q\(49),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \^q\(50),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \^q\(51),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \^q\(52),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \^q\(53),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \^q\(54),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \^q\(55),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \^q\(56),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \^q\(57),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(63),
      Q => \^q\(58),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(64),
      Q => \^q\(59),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \^q\(8),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \^q\(9),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => any_grant,
      D => '1',
      Q => \^aa_mi_awtarget_hot\(0),
      R => SR(0)
    );
\gen_arbiter.m_valid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"113FFFFF113F0000"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => \^aa_mi_awtarget_hot\(0),
      I2 => mi_awready(0),
      I3 => m_ready_d(1),
      I4 => \^aa_sa_awvalid\,
      I5 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_valid_i_i_1_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1_n_0\,
      Q => \^aa_sa_awvalid\,
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[1]_0\(0),
      Q => qual_reg(0),
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[1]_0\(1),
      Q => qual_reg(1),
      R => SR(0)
    );
\gen_arbiter.s_ready_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[0]_i_1_n_0\
    );
\gen_arbiter.s_ready_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[0]_i_1_n_0\,
      Q => \^ss_aa_awready\(0),
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[1]_i_1_n_0\,
      Q => \^ss_aa_awready\(1),
      R => '0'
    );
\gen_axi.s_axi_bid_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_axi.s_axi_bid_i_reg[1]\,
      I2 => \^gen_axi.write_cs01_out\,
      I3 => p_20_in(0),
      O => \gen_arbiter.m_mesg_i_reg[0]_0\
    );
\gen_axi.s_axi_bid_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_axi.s_axi_bid_i_reg[1]\,
      I2 => \^gen_axi.write_cs01_out\,
      I3 => p_20_in(1),
      O => \gen_arbiter.m_mesg_i_reg[1]_0\
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5955555504000000"
    )
        port map (
      I0 => \w_cmd_pop_1__0\,
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(1),
      I3 => \^aa_mi_awtarget_hot\(0),
      I4 => mi_awready(0),
      I5 => w_issuing_cnt(0),
      O => \gen_arbiter.m_valid_i_reg_0\
    );
\storage_data1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \storage_data1_reg[0]\(1),
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(0),
      I3 => \^aa_mi_awtarget_hot\(0),
      O => \FSM_onehot_state_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_1\ : in STD_LOGIC;
    \chosen_reg[1]_0\ : in STD_LOGIC;
    \chosen_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp : entity is "axi_crossbar_v2_1_20_arbiter_resp";
end design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp is
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
begin
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[0]_0\,
      Q => chosen(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[1]_0\,
      Q => chosen(1),
      R => SR(0)
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[0]_1\,
      Q => \last_rr_hot_reg[0]_0\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[1]_0\,
      Q => p_2_in,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_5 is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_1\ : in STD_LOGIC;
    \chosen_reg[1]_0\ : in STD_LOGIC;
    \chosen_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_5 : entity is "axi_crossbar_v2_1_20_arbiter_resp";
end design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_5;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_5 is
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
begin
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[0]_0\,
      Q => chosen(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[1]_0\,
      Q => chosen(1),
      R => SR(0)
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[0]_1\,
      Q => \last_rr_hot_reg[0]_0\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[1]_0\,
      Q => p_2_in,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_8 is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_1\ : in STD_LOGIC;
    \chosen_reg[1]_0\ : in STD_LOGIC;
    \chosen_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_8 : entity is "axi_crossbar_v2_1_20_arbiter_resp";
end design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_8;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_8 is
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
begin
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[0]_0\,
      Q => chosen(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[1]_0\,
      Q => chosen(1),
      R => SR(0)
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[0]_1\,
      Q => \last_rr_hot_reg[0]_0\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[1]_0\,
      Q => p_2_in,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_9 is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_1\ : in STD_LOGIC;
    \chosen_reg[1]_0\ : in STD_LOGIC;
    \chosen_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_9 : entity is "axi_crossbar_v2_1_20_arbiter_resp";
end design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_9;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_9 is
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
begin
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[0]_0\,
      Q => chosen(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen_reg[1]_0\,
      Q => chosen(1),
      R => SR(0)
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[0]_1\,
      Q => \last_rr_hot_reg[0]_0\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot_reg[1]_0\,
      Q => p_2_in,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_decerr_slave is
  port (
    p_20_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_16_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_10_in : out STD_LOGIC;
    p_17_in : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    mi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg_0\ : out STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[0]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_bid_i_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[0]_0\ : in STD_LOGIC;
    \gen_axi.s_axi_rid_i_reg[1]_0\ : in STD_LOGIC;
    \gen_axi.s_axi_rid_i_reg[0]_0\ : in STD_LOGIC;
    mi_rready_1 : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \gen_axi.read_cs0__0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc : in STD_LOGIC;
    wm_mr_wvalid_1 : in STD_LOGIC;
    aa_mi_arvalid : in STD_LOGIC;
    aa_mi_artarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.read_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sa_wm_awvalid__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.write_cs01_out\ : in STD_LOGIC;
    mi_bready_1 : in STD_LOGIC;
    \gen_axi.s_axi_rlast_i_reg_0\ : in STD_LOGIC;
    \gen_axi.write_cs0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_decerr_slave : entity is "axi_crossbar_v2_1_20_decerr_slave";
end design_1_xbar_0_axi_crossbar_v2_1_20_decerr_slave;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_decerr_slave is
  signal \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_axi.write_cs_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_axi.read_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cs__0\ : STD_LOGIC;
  signal \gen_axi.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_2_n_0\ : STD_LOGIC;
  signal \^mi_arready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_10_in\ : STD_LOGIC;
  signal \^p_11_in\ : STD_LOGIC;
  signal \^p_13_in\ : STD_LOGIC;
  signal \^p_17_in\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[4]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[5]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[7]_i_5\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_rlast_i_i_5\ : label is "soft_lutpair66";
begin
  \FSM_onehot_gen_axi.write_cs_reg[0]_0\ <= \^fsm_onehot_gen_axi.write_cs_reg[0]_0\;
  mi_arready(0) <= \^mi_arready\(0);
  mi_awready(0) <= \^mi_awready\(0);
  p_10_in <= \^p_10_in\;
  p_11_in <= \^p_11_in\;
  p_13_in <= \^p_13_in\;
  p_17_in <= \^p_17_in\;
\FSM_onehot_gen_axi.write_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FA22FA22FA22"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => mi_bready_1,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I4 => \gen_axi.write_cs0__0\,
      I5 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      O => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFFFA888A888"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => mi_bready_1,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I4 => \gen_axi.write_cs0__0\,
      I5 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      O => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8807000700"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => mi_bready_1,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I4 => \gen_axi.write_cs0__0\,
      I5 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\,
      Q => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      S => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      R => SR(0)
    );
\gen_axi.read_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(0),
      I1 => \^p_11_in\,
      I2 => \gen_axi.read_cnt_reg[7]_0\(0),
      O => p_0_in(0)
    );
\gen_axi.read_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(0),
      I1 => \gen_axi.read_cnt_reg__0\(1),
      I2 => \^p_11_in\,
      I3 => \gen_axi.read_cnt_reg[7]_0\(1),
      O => p_0_in(1)
    );
\gen_axi.read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(1),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(2),
      I3 => \^p_11_in\,
      I4 => \gen_axi.read_cnt_reg[7]_0\(2),
      O => p_0_in(2)
    );
\gen_axi.read_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg__0\(3),
      I4 => \^p_11_in\,
      I5 => \gen_axi.read_cnt_reg[7]_0\(3),
      O => p_0_in(3)
    );
\gen_axi.read_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \gen_axi.read_cnt[4]_i_2_n_0\,
      I1 => \gen_axi.read_cnt_reg__0\(4),
      I2 => \^p_11_in\,
      I3 => \gen_axi.read_cnt_reg[7]_0\(4),
      O => p_0_in(4)
    );
\gen_axi.read_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg__0\(3),
      O => \gen_axi.read_cnt[4]_i_2_n_0\
    );
\gen_axi.read_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \gen_axi.read_cnt[5]_i_2_n_0\,
      I1 => \gen_axi.read_cnt_reg__0\(5),
      I2 => \^p_11_in\,
      I3 => \gen_axi.read_cnt_reg[7]_0\(5),
      O => p_0_in(5)
    );
\gen_axi.read_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt_reg__0\(1),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(2),
      I4 => \gen_axi.read_cnt_reg__0\(4),
      O => \gen_axi.read_cnt[5]_i_2_n_0\
    );
\gen_axi.read_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I1 => \gen_axi.read_cnt_reg__0\(6),
      I2 => \^p_11_in\,
      I3 => \gen_axi.read_cnt_reg[7]_0\(6),
      O => p_0_in(6)
    );
\gen_axi.read_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20202020202020"
    )
        port map (
      I0 => mi_rready_1,
      I1 => \gen_axi.read_cs__0\,
      I2 => \^p_11_in\,
      I3 => aa_mi_arvalid,
      I4 => aa_mi_artarget_hot(0),
      I5 => \^mi_arready\(0),
      O => \gen_axi.read_cnt[7]_i_1_n_0\
    );
\gen_axi.read_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(6),
      I1 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(7),
      I3 => \^p_11_in\,
      I4 => \gen_axi.read_cnt_reg[7]_0\(7),
      O => p_0_in(7)
    );
\gen_axi.read_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(5),
      I1 => \gen_axi.read_cnt_reg__0\(4),
      I2 => \gen_axi.read_cnt_reg__0\(6),
      I3 => \gen_axi.read_cnt_reg__0\(7),
      I4 => \gen_axi.read_cnt[7]_i_5_n_0\,
      O => \gen_axi.read_cs__0\
    );
\gen_axi.read_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(4),
      I1 => \gen_axi.read_cnt_reg__0\(2),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      I4 => \gen_axi.read_cnt_reg__0\(3),
      I5 => \gen_axi.read_cnt_reg__0\(5),
      O => \gen_axi.read_cnt[7]_i_4_n_0\
    );
\gen_axi.read_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg__0\(3),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      O => \gen_axi.read_cnt[7]_i_5_n_0\
    );
\gen_axi.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \gen_axi.read_cnt_reg\(0),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \gen_axi.read_cnt_reg__0\(1),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \gen_axi.read_cnt_reg__0\(2),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \gen_axi.read_cnt_reg__0\(3),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \gen_axi.read_cnt_reg__0\(4),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \gen_axi.read_cnt_reg__0\(5),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \gen_axi.read_cnt_reg__0\(6),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \gen_axi.read_cnt_reg__0\(7),
      R => SR(0)
    );
\gen_axi.read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F70707070707070"
    )
        port map (
      I0 => mi_rready_1,
      I1 => \gen_axi.read_cs__0\,
      I2 => \^p_11_in\,
      I3 => aa_mi_arvalid,
      I4 => aa_mi_artarget_hot(0),
      I5 => \^mi_arready\(0),
      O => \gen_axi.read_cs[0]_i_1_n_0\
    );
\gen_axi.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.read_cs[0]_i_1_n_0\,
      Q => \^p_11_in\,
      R => SR(0)
    );
\gen_axi.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00EA000000FF00"
    )
        port map (
      I0 => \^mi_arready\(0),
      I1 => \gen_axi.read_cs__0\,
      I2 => mi_rready_1,
      I3 => aresetn_d,
      I4 => \gen_axi.read_cs0__0\,
      I5 => \^p_11_in\,
      O => \gen_axi.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_arready_i_i_1_n_0\,
      Q => \^mi_arready\(0),
      R => '0'
    );
\gen_axi.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFFFB0B0B0"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      I3 => mi_bready_1,
      I4 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I5 => \^mi_awready\(0),
      O => \gen_axi.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_awready_i_i_1_n_0\,
      Q => \^mi_awready\(0),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i_reg[0]_0\,
      Q => p_20_in(0),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i_reg[1]_0\,
      Q => p_20_in(1),
      R => SR(0)
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \gen_axi.s_axi_wready_i_i_2_n_0\,
      I1 => mi_bready_1,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => \^p_17_in\,
      O => \gen_axi.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_i_1_n_0\,
      Q => \^p_17_in\,
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rid_i_reg[0]_0\,
      Q => p_16_in(0),
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rid_i_reg[1]_0\,
      Q => p_16_in(1),
      R => SR(0)
    );
\gen_axi.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FCC5FFF50CC5000"
    )
        port map (
      I0 => \gen_axi.read_cs__0\,
      I1 => \gen_axi.s_axi_rlast_i_reg_0\,
      I2 => \gen_axi.s_axi_rlast_i_i_3_n_0\,
      I3 => \^p_11_in\,
      I4 => \gen_axi.read_cs0__0\,
      I5 => \^p_13_in\,
      O => \gen_axi.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => mi_rready_1,
      I1 => \gen_axi.s_axi_rlast_i_i_5_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(7),
      I3 => \gen_axi.read_cnt_reg__0\(5),
      I4 => \gen_axi.read_cnt_reg__0\(6),
      O => \gen_axi.s_axi_rlast_i_i_3_n_0\
    );
\gen_axi.s_axi_rlast_i_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt_reg__0\(4),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg__0\(2),
      O => \gen_axi.s_axi_rlast_i_i_5_n_0\
    );
\gen_axi.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rlast_i_i_1_n_0\,
      Q => \^p_13_in\,
      R => SR(0)
    );
\gen_axi.s_axi_wready_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \gen_axi.write_cs01_out\,
      I1 => \^fsm_onehot_gen_axi.write_cs_reg[0]_0\,
      I2 => \gen_axi.s_axi_wready_i_i_2_n_0\,
      I3 => \^p_10_in\,
      O => \gen_axi.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.s_axi_wready_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      I1 => s_axi_wlast(0),
      I2 => m_select_enc,
      I3 => s_axi_wlast(1),
      I4 => wm_mr_wvalid_1,
      O => \gen_axi.s_axi_wready_i_i_2_n_0\
    );
\gen_axi.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_wready_i_i_1_n_0\,
      Q => \^p_10_in\,
      R => SR(0)
    );
\storage_data1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => \^p_10_in\,
      I1 => s_axi_wlast(1),
      I2 => m_select_enc,
      I3 => s_axi_wlast(0),
      I4 => wm_mr_wvalid_1,
      I5 => \sa_wm_awvalid__0\(0),
      O => \gen_axi.s_axi_wready_i_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_splitter is
  port (
    \gen_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_splitter : entity is "axi_crossbar_v2_1_20_splitter";
end design_1_xbar_0_axi_crossbar_v2_1_20_splitter;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_splitter is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[0]_i_2__0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair128";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\gen_arbiter.last_rr_hot[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(0),
      O => ss_aa_awvalid(0)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      I4 => ss_wr_awready_0,
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C00080000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      I4 => ss_wr_awready_0,
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_aa_awready(0),
      I1 => \^m_ready_d\(0),
      I2 => ss_wr_awready_0,
      I3 => \^m_ready_d\(1),
      O => \gen_arbiter.s_ready_i_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_splitter_2 is
  port (
    \gen_arbiter.s_ready_i_reg[1]\ : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_splitter_2 : entity is "axi_crossbar_v2_1_20_splitter";
end design_1_xbar_0_axi_crossbar_v2_1_20_splitter_2;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_splitter_2 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_7__0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \s_axi_awready[1]_INST_0\ : label is "soft_lutpair142";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\gen_arbiter.m_grant_enc_i[0]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(0),
      O => ss_aa_awvalid(0)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      I4 => ss_wr_awready_1,
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C00080000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      I4 => ss_wr_awready_1,
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_aa_awready(0),
      I1 => \^m_ready_d\(0),
      I2 => ss_wr_awready_1,
      I3 => \^m_ready_d\(1),
      O => \gen_arbiter.s_ready_i_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_splitter_4 is
  port (
    \m_ready_d_reg[0]_0\ : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_splitter_4 : entity is "axi_crossbar_v2_1_20_splitter";
end design_1_xbar_0_axi_crossbar_v2_1_20_splitter_4;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_splitter_4 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\gen_arbiter.grant_hot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEC00000FFFFFFFF"
    )
        port map (
      I0 => \^m_ready_d\(0),
      I1 => aa_mi_awtarget_hot(0),
      I2 => mi_awready(0),
      I3 => \^m_ready_d\(1),
      I4 => aa_sa_awvalid,
      I5 => aresetn_d,
      O => \m_ready_d_reg[0]_0\
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000C0C8C0"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aresetn_d,
      I2 => \^m_ready_d\(0),
      I3 => aa_mi_awtarget_hot(0),
      I4 => mi_awready(0),
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => aresetn_d,
      I1 => \^m_ready_d\(0),
      I2 => aa_mi_awtarget_hot(0),
      I3 => \^m_ready_d\(1),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl : entity is "axi_data_fifo_v2_1_18_ndeep_srl";
end design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl is
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '1',
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F80000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => Q(1),
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => \^m_aready__1\,
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid_0,
      I2 => s_axi_wlast(0),
      I3 => \m_aready1__0\(0),
      O => \^m_aready__1\
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => load_s1,
      I3 => \storage_data1_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_10 is
  port (
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    storage_data11 : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_10 : entity is "axi_data_fifo_v2_1_18_ndeep_srl";
end design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_10;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_10 is
  signal push : STD_LOGIC;
  signal \storage_data1[0]_i_2__1_n_0\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => A(1 downto 0),
      CE => push,
      CLK => aclk,
      D => aa_wm_awgrant_enc,
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000E00000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => aa_mi_awtarget_hot(0),
      I5 => \m_aready__1\,
      O => push
    );
\storage_data1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => \storage_data1[0]_i_2__1_n_0\,
      I1 => \storage_data1_reg[0]\,
      I2 => Q(1),
      I3 => \storage_data1_reg[0]_0\,
      I4 => storage_data11,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state_reg[1]\
    );
\storage_data1[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc,
      O => \storage_data1[0]_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_7 is
  port (
    push : out STD_LOGIC;
    \m_aready__1_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_7 : entity is "axi_data_fifo_v2_1_18_ndeep_srl";
end design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_7;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_7 is
  signal \^m_aready__1_1\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1_1\ <= \^m_aready__1_1\;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '1',
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088000000F80000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => Q(1),
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => \^m_aready__1_1\,
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid_0,
      I2 => s_axi_wlast(0),
      I3 => \m_aready1__0\(0),
      O => \^m_aready__1_1\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => load_s1,
      I3 => \storage_data1_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    mi_bready_1 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \w_cmd_pop_1__0\ : out STD_LOGIC;
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_1\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_2\ : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_buser[1]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    chosen_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_2_in_6 : in STD_LOGIC;
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_1\ : in STD_LOGIC;
    p_2_in_8 : in STD_LOGIC;
    \chosen_reg[1]_2\ : in STD_LOGIC;
    need_arbitration_9 : in STD_LOGIC;
    need_arbitration_11 : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_19_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1\ is
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal bready_carry : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \m_payload_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[3]_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__3_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^mi_bready_1\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \s_ready_i_i_1__4_n_0\ : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^w_cmd_pop_1__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_6__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_6__2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_4__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_axi_bid[0]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s_axi_bid[2]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_axi_bresp[2]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_axi_bresp[3]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_axi_buser[0]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_axi_buser[1]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__4\ : label is "soft_lutpair94";
begin
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \m_payload_i_reg[3]_0\ <= \^m_payload_i_reg[3]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  mi_bready_1 <= \^mi_bready_1\;
  p_0_in <= \^p_0_in\;
  \w_cmd_pop_1__0\ <= \^w_cmd_pop_1__0\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => '0'
    );
\chosen[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440004040"
    )
        port map (
      I0 => \^m_payload_i_reg[3]_0\,
      I1 => \^m_valid_i_reg_0\,
      I2 => p_2_in_6,
      I3 => \s_axi_buser[1]\(3),
      I4 => st_mr_bvalid(0),
      I5 => \chosen_reg[1]_1\,
      O => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1)
    );
\chosen[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800808080"
    )
        port map (
      I0 => \^m_payload_i_reg[3]_0\,
      I1 => \^m_valid_i_reg_0\,
      I2 => p_2_in_8,
      I3 => \s_axi_buser[1]\(3),
      I4 => st_mr_bvalid(0),
      I5 => \chosen_reg[1]_2\,
      O => \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1)
    );
\gen_arbiter.m_grant_enc_i[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => \^w_cmd_pop_1__0\,
      O => \gen_master_slots[1].w_issuing_cnt_reg[8]\
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80CC800080008000"
    )
        port map (
      I0 => chosen_5(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => s_axi_bready(1),
      I3 => \^m_payload_i_reg[3]_0\,
      I4 => chosen_3(0),
      I5 => s_axi_bready(0),
      O => \^w_cmd_pop_1__0\
    );
\gen_multi_thread.active_cnt[9]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => chosen_3(0),
      I1 => \^m_payload_i_reg[3]_0\,
      I2 => \^m_valid_i_reg_0\,
      O => \gen_multi_thread.resp_select_0\
    );
\gen_multi_thread.active_cnt[9]_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => chosen_5(0),
      I1 => \^m_payload_i_reg[3]_0\,
      I2 => \^m_valid_i_reg_0\,
      O => \gen_multi_thread.resp_select_2\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1),
      I1 => need_arbitration_9,
      I2 => chosen_3(0),
      O => \chosen_reg[1]\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1),
      I1 => need_arbitration_11,
      I2 => chosen_5(0),
      O => \chosen_reg[1]_0\
    );
\last_rr_hot[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^m_payload_i_reg[3]_0\,
      O => m_valid_i_reg_2(0)
    );
\last_rr_hot[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^m_payload_i_reg[3]_0\,
      O => m_valid_i_reg_1
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_20_in(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => st_mr_bid(2),
      O => \m_payload_i[2]_i_1_n_0\
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_20_in(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      O => \m_payload_i[3]_i_1_n_0\
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[2]_i_1_n_0\,
      Q => st_mr_bid(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[3]_i_1_n_0\,
      Q => \^m_payload_i_reg[3]_0\,
      R => '0'
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_17_in,
      I1 => \^mi_bready_1\,
      I2 => bready_carry(3),
      O => \m_valid_i_i_1__3_n_0\
    );
\m_valid_i_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^p_0_in\
    );
\m_valid_i_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808000008080000"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => chosen_3(0),
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => s_axi_bready(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen_5(0),
      O => bready_carry(3)
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__3_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => \^p_0_in\
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(2),
      I1 => st_mr_bid(2),
      I2 => chosen_3(0),
      I3 => \^m_payload_i_reg[3]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => \m_payload_i_reg[2]_0\
    );
\s_axi_bid[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(2),
      I1 => st_mr_bid(2),
      I2 => chosen_5(0),
      I3 => \^m_payload_i_reg[3]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => \m_payload_i_reg[2]_1\
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_3(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_3(0),
      O => s_axi_bresp(1)
    );
\s_axi_bresp[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_5(0),
      O => s_axi_bresp(2)
    );
\s_axi_bresp[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_5(0),
      O => s_axi_bresp(3)
    );
\s_axi_buser[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => \s_axi_buser[1]\(4),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_3(0),
      O => s_axi_buser(0)
    );
\s_axi_buser[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \s_axi_buser[1]\(4),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[3]_0\,
      I3 => chosen_5(0),
      O => s_axi_buser(1)
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1FF"
    )
        port map (
      I0 => p_17_in,
      I1 => \^m_valid_i_reg_0\,
      I2 => bready_carry(3),
      I3 => \^aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_1__4_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__4_n_0\,
      Q => \^mi_bready_1\,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_11\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    access_done : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready_1_sp_1 : out STD_LOGIC;
    \access_done__0\ : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_2\ : out STD_LOGIC;
    \m_payload_i_reg[3]_3\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \chosen_reg[0]_1\ : in STD_LOGIC;
    \gen_multi_thread.resp_select_5\ : in STD_LOGIC;
    \s_axi_bvalid[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \chosen_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.resp_select_9\ : in STD_LOGIC;
    \last_rr_hot_reg[0]\ : in STD_LOGIC;
    p_2_in_10 : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    p_2_in_12 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_11\ : entity is "axi_register_slice_v2_1_19_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_11\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal bready_carry : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw/m_rvalid_qual__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \last_rr_hot[1]_i_3__2_n_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_2__1_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  signal s_axi_bready_1_sn_1 : STD_LOGIC;
  signal s_ready_i_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_3__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_3__2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_3__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_3__2\ : label is "soft_lutpair68";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  m_axi_bready(0) <= \^m_axi_bready\(0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  p_1_in <= \^p_1_in\;
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
  s_axi_bready_1_sp_1 <= s_axi_bready_1_sn_1;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d_reg[0]_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\chosen[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440004040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^m_valid_i_reg_0\,
      I2 => \last_rr_hot_reg[0]\,
      I3 => st_mr_bid(0),
      I4 => \s_axi_bvalid[1]\(0),
      I5 => p_2_in_10,
      O => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0)
    );
\chosen[0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800808080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^m_valid_i_reg_0\,
      I2 => \last_rr_hot_reg[0]_0\,
      I3 => st_mr_bid(0),
      I4 => \s_axi_bvalid[1]\(0),
      I5 => p_2_in_12,
      O => \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0)
    );
\gen_multi_thread.active_cnt[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAA0000"
    )
        port map (
      I0 => \gen_multi_thread.resp_select_5\,
      I1 => chosen_4(0),
      I2 => \^q\(3),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_bready(0),
      O => access_done
    );
\gen_multi_thread.active_cnt[9]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \gen_multi_thread.resp_select_9\,
      I1 => chosen_8(0),
      I2 => \^q\(3),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_bready(1),
      O => \access_done__0\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0),
      I1 => s_axi_bready_0_sn_1,
      I2 => chosen_4(0),
      O => \chosen_reg[0]\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0),
      I1 => s_axi_bready_1_sn_1,
      I2 => chosen_8(0),
      O => \chosen_reg[0]_0\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDFDFAA000000"
    )
        port map (
      I0 => s_axi_bready_0_sn_1,
      I1 => st_mr_bid(0),
      I2 => \s_axi_bvalid[1]\(0),
      I3 => p_2_in_10,
      I4 => \last_rr_hot[1]_i_3__2_n_0\,
      I5 => \last_rr_hot_reg[0]\,
      O => \m_payload_i_reg[3]_1\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7FAA000000"
    )
        port map (
      I0 => s_axi_bready_1_sn_1,
      I1 => st_mr_bid(0),
      I2 => \s_axi_bvalid[1]\(0),
      I3 => p_2_in_12,
      I4 => \gen_slave_slots[1].gen_si_write.si_transactor_aw/m_rvalid_qual__1\(0),
      I5 => \last_rr_hot_reg[0]_0\,
      O => \m_payload_i_reg[3]_3\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FF205500FF00"
    )
        port map (
      I0 => s_axi_bready_0_sn_1,
      I1 => st_mr_bid(0),
      I2 => \s_axi_bvalid[1]\(0),
      I3 => p_2_in_10,
      I4 => \last_rr_hot[1]_i_3__2_n_0\,
      I5 => \last_rr_hot_reg[0]\,
      O => \m_payload_i_reg[3]_0\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D580FF805500FF00"
    )
        port map (
      I0 => s_axi_bready_1_sn_1,
      I1 => st_mr_bid(0),
      I2 => \s_axi_bvalid[1]\(0),
      I3 => p_2_in_12,
      I4 => \gen_slave_slots[1].gen_si_write.si_transactor_aw/m_rvalid_qual__1\(0),
      I5 => \last_rr_hot_reg[0]_0\,
      O => \m_payload_i_reg[3]_2\
    );
\last_rr_hot[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA080CFBFF080C"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^q\(3),
      I3 => chosen_4(0),
      I4 => \chosen_reg[0]_1\,
      I5 => chosen_4(1),
      O => s_axi_bready_0_sn_1
    );
\last_rr_hot[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA80C0BFFF80C0"
    )
        port map (
      I0 => s_axi_bready(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^q\(3),
      I3 => chosen_8(0),
      I4 => \chosen_reg[0]_2\(0),
      I5 => chosen_8(1),
      O => s_axi_bready_1_sn_1
    );
\last_rr_hot[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(3),
      O => \gen_slave_slots[1].gen_si_write.si_transactor_aw/m_rvalid_qual__1\(0)
    );
\last_rr_hot[1]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(3),
      O => \last_rr_hot[1]_i_3__2_n_0\
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \m_payload_i[4]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[4]_i_1_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[4]_i_1_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[4]_i_1_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[4]_i_1_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[4]_i_1_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\m_valid_i_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => bready_carry(2),
      O => \m_valid_i_i_2__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_2__1_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => p_0_in
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020FF2020202020"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(3),
      I2 => chosen_4(0),
      I3 => \s_axi_bvalid[1]\(0),
      I4 => st_mr_bid(0),
      I5 => chosen_4(1),
      O => s_axi_bvalid(0)
    );
\s_axi_bvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(3),
      I2 => chosen_8(0),
      I3 => \s_axi_bvalid[1]\(0),
      I4 => st_mr_bid(0),
      I5 => chosen_8(1),
      O => s_axi_bvalid(1)
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^p_1_in\
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1FF"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => bready_carry(2),
      I3 => s_ready_i_reg_0,
      O => s_ready_i_i_2_n_0
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808000008080000"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => chosen_4(0),
      I2 => \^q\(3),
      I3 => s_axi_bready(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen_8(0),
      O => bready_carry(2)
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_2_n_0,
      Q => \^m_axi_bready\(0),
      R => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_payload_i_reg[36]_0\ : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_cmd_pop_1__1\ : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \gen_multi_thread.resp_select\ : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    \m_payload_i_reg[35]_1\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_1\ : out STD_LOGIC;
    \chosen_reg[1]\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 37 downto 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_11_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_2_in : in STD_LOGIC;
    st_mr_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_1\ : in STD_LOGIC;
    p_2_in_7 : in STD_LOGIC;
    \chosen_reg[1]_2\ : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    p_16_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    need_arbitration : in STD_LOGIC;
    need_arbitration_10 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_19_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2\ is
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \m_payload_i[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[36]_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal rready_carry : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 36 downto 34 );
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 69 to 69 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_6__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[8]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_6\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_6__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_axi_rdata[32]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \s_axi_rdata[33]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi_rdata[37]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_axi_rdata[38]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_axi_rdata[39]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \s_axi_rdata[40]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \s_axi_rdata[45]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_axi_rdata[48]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_axi_rdata[49]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \s_axi_rdata[50]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \s_axi_rdata[51]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \s_axi_rdata[52]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_axi_rdata[53]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_axi_rdata[56]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_axi_rdata[61]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \s_axi_rlast[0]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_axi_rresp[2]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_axi_ruser[0]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \s_axi_ruser[1]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \skid_buffer[34]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \skid_buffer[35]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \skid_buffer[36]_i_1\ : label is "soft_lutpair100";
begin
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  \m_payload_i_reg[36]_0\ <= \^m_payload_i_reg[36]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\chosen[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440004040"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\,
      I1 => \^m_valid_i_reg_0\,
      I2 => p_2_in,
      I3 => Q(36),
      I4 => st_mr_rvalid(0),
      I5 => \chosen_reg[1]_1\,
      O => \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1)
    );
\chosen[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800808080"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\,
      I1 => \^m_valid_i_reg_0\,
      I2 => p_2_in_7,
      I3 => Q(36),
      I4 => st_mr_rvalid(0),
      I5 => \chosen_reg[1]_2\,
      O => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1)
    );
\gen_arbiter.m_grant_enc_i[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF200000000000"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^m_payload_i_reg[36]_0\,
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => Q(34),
      I5 => s_axi_rready(0),
      O => m_valid_i_reg_1
    );
\gen_arbiter.m_grant_enc_i[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F800000000000"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^m_payload_i_reg[36]_0\,
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => Q(34),
      I5 => s_axi_rready(1),
      O => m_valid_i_reg_2
    );
\gen_arbiter.m_grant_enc_i[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808000008080000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => chosen(0),
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => s_axi_rready(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen_4(0),
      O => rready_carry(3)
    );
\gen_arbiter.m_grant_enc_i[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => r_issuing_cnt(0),
      I1 => \^m_payload_i_reg[34]_0\,
      I2 => rready_carry(3),
      I3 => \^m_valid_i_reg_0\,
      O => \gen_master_slots[1].r_issuing_cnt_reg[8]\
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => rready_carry(3),
      I2 => \^m_payload_i_reg[34]_0\,
      O => \r_cmd_pop_1__1\
    );
\gen_multi_thread.active_cnt[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => chosen(0),
      I1 => \^m_payload_i_reg[36]_0\,
      I2 => \^m_valid_i_reg_0\,
      O => \gen_multi_thread.resp_select\
    );
\gen_multi_thread.active_cnt[9]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => chosen_4(0),
      I1 => \^m_payload_i_reg[36]_0\,
      I2 => \^m_valid_i_reg_0\,
      O => \gen_multi_thread.resp_select_1\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1),
      I1 => need_arbitration,
      I2 => chosen(0),
      O => \chosen_reg[1]\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(1),
      I1 => need_arbitration_10,
      I2 => chosen_4(0),
      O => \chosen_reg[1]_0\
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808080FFFFFFFF"
    )
        port map (
      I0 => chosen_4(0),
      I1 => s_axi_rready(1),
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      I4 => s_axi_rready(0),
      I5 => \^m_valid_i_reg_0\,
      O => p_1_in_0
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => p_13_in,
      I1 => \skid_buffer_reg_n_0_[34]\,
      I2 => \^s_ready_i_reg_0\,
      I3 => p_1_in_0,
      I4 => \^m_payload_i_reg[34]_0\,
      O => \m_payload_i[34]_i_1_n_0\
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => p_16_in(0),
      I1 => \skid_buffer_reg_n_0_[35]\,
      I2 => \^s_ready_i_reg_0\,
      I3 => p_1_in_0,
      I4 => st_mr_rid(2),
      O => \m_payload_i[35]_i_1_n_0\
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => p_16_in(1),
      I1 => \skid_buffer_reg_n_0_[36]\,
      I2 => \^s_ready_i_reg_0\,
      I3 => p_1_in_0,
      I4 => \^m_payload_i_reg[36]_0\,
      O => \m_payload_i[36]_i_1_n_0\
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => '1',
      Q => st_mr_rmesg(69),
      S => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[34]_i_1_n_0\,
      Q => \^m_payload_i_reg[34]_0\,
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[35]_i_1_n_0\,
      Q => st_mr_rid(2),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[36]_i_1_n_0\,
      Q => \^m_payload_i_reg[36]_0\,
      R => '0'
    );
\m_valid_i_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => p_11_in,
      I1 => \^s_ready_i_reg_0\,
      I2 => p_1_in_0,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => p_0_in
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(10),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(11),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(12),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(13),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(14),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(15),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(16),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(17),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(18),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(19),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(20),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(21),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(22),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(23),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(24),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(25),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(26),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(27),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(28),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(29),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(30),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(31),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[32]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(32)
    );
\s_axi_rdata[33]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(1),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(33)
    );
\s_axi_rdata[34]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(34)
    );
\s_axi_rdata[35]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(35)
    );
\s_axi_rdata[36]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(36)
    );
\s_axi_rdata[37]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(5),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(37)
    );
\s_axi_rdata[38]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(6),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(38)
    );
\s_axi_rdata[39]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(7),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(39)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[40]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(8),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(40)
    );
\s_axi_rdata[41]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(9),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(41)
    );
\s_axi_rdata[42]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(10),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(42)
    );
\s_axi_rdata[43]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(11),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(43)
    );
\s_axi_rdata[44]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(12),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(44)
    );
\s_axi_rdata[45]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(13),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(45)
    );
\s_axi_rdata[46]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(14),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(46)
    );
\s_axi_rdata[47]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(15),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(47)
    );
\s_axi_rdata[48]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(16),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(48)
    );
\s_axi_rdata[49]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(17),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(49)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[50]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(18),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(50)
    );
\s_axi_rdata[51]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(19),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(51)
    );
\s_axi_rdata[52]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(20),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(52)
    );
\s_axi_rdata[53]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(21),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(53)
    );
\s_axi_rdata[54]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(22),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(54)
    );
\s_axi_rdata[55]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(23),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(55)
    );
\s_axi_rdata[56]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(24),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(56)
    );
\s_axi_rdata[57]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(25),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(57)
    );
\s_axi_rdata[58]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(26),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(58)
    );
\s_axi_rdata[59]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(27),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(59)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(5),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[60]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(28),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(60)
    );
\s_axi_rdata[61]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(29),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_rdata(61)
    );
\s_axi_rdata[62]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(30),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(62)
    );
\s_axi_rdata[63]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(31),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(63)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(6),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(7),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(8),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(9),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rdata(9)
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(35),
      I1 => st_mr_rid(2),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => \m_payload_i_reg[35]_0\
    );
\s_axi_rid[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(35),
      I1 => st_mr_rid(2),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => \m_payload_i_reg[35]_1\
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(34),
      I1 => \^m_payload_i_reg[34]_0\,
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rlast(0)
    );
\s_axi_rlast[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(34),
      I1 => \^m_payload_i_reg[34]_0\,
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rlast(1)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(32),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACAAAAA"
    )
        port map (
      I0 => Q(33),
      I1 => st_mr_rmesg(69),
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rresp(1)
    );
\s_axi_rresp[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(32),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rresp(2)
    );
\s_axi_rresp[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAAAAAA"
    )
        port map (
      I0 => Q(33),
      I1 => st_mr_rmesg(69),
      I2 => chosen_4(0),
      I3 => \^m_payload_i_reg[36]_0\,
      I4 => \^m_valid_i_reg_0\,
      O => s_axi_rresp(3)
    );
\s_axi_ruser[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => Q(37),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen(0),
      O => s_axi_ruser(0)
    );
\s_axi_ruser[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => Q(37),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^m_payload_i_reg[36]_0\,
      I3 => chosen_4(0),
      O => s_axi_ruser(1)
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in_0,
      I1 => p_11_in,
      I2 => \^s_ready_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => p_13_in,
      I1 => \skid_buffer_reg_n_0_[34]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(34)
    );
\skid_buffer[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => p_16_in(0),
      I1 => \skid_buffer_reg_n_0_[35]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(35)
    );
\skid_buffer[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => p_16_in(1),
      I1 => \skid_buffer_reg_n_0_[36]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(36)
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(34),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(35),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(36),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_12\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 37 downto 0 );
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[36]_0\ : out STD_LOGIC;
    \gen_multi_thread.any_pop__1_1\ : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    \m_payload_i_reg[36]_1\ : out STD_LOGIC;
    \m_payload_i_reg[36]_2\ : out STD_LOGIC;
    \m_payload_i_reg[36]_3\ : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[36]_4\ : out STD_LOGIC;
    \m_payload_i_reg[36]_5\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.resp_select\ : in STD_LOGIC;
    st_mr_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rvalid[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.resp_select_6\ : in STD_LOGIC;
    chosen_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[0]\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    p_2_in_11 : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_12\ : entity is "axi_register_slice_v2_1_19_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_12\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar/m_rvalid_qual__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \last_rr_hot[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[36]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[36]_1\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_1\ : STD_LOGIC;
  signal \^m_valid_i_reg_2\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_3\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_3__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair75";
begin
  Q(37 downto 0) <= \^q\(37 downto 0);
  \m_payload_i_reg[36]_0\ <= \^m_payload_i_reg[36]_0\;
  \m_payload_i_reg[36]_1\ <= \^m_payload_i_reg[36]_1\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  m_valid_i_reg_1 <= \^m_valid_i_reg_1\;
  m_valid_i_reg_2 <= \^m_valid_i_reg_2\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\chosen[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440004040"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^m_valid_i_reg_0\,
      I2 => \last_rr_hot_reg[0]\,
      I3 => st_mr_rid(0),
      I4 => \s_axi_rvalid[1]\(0),
      I5 => p_2_in,
      O => \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0)
    );
\chosen[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800808080"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^m_valid_i_reg_0\,
      I2 => \last_rr_hot_reg[0]_0\,
      I3 => st_mr_rid(0),
      I4 => \s_axi_rvalid[1]\(0),
      I5 => p_2_in_11,
      O => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0)
    );
\gen_multi_thread.active_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008080"
    )
        port map (
      I0 => \^m_valid_i_reg_1\,
      I1 => s_axi_rready(0),
      I2 => \^q\(34),
      I3 => st_mr_rlast(0),
      I4 => \gen_multi_thread.resp_select\,
      O => \gen_multi_thread.any_pop__1\
    );
\gen_multi_thread.active_cnt[9]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008080"
    )
        port map (
      I0 => \^m_valid_i_reg_2\,
      I1 => s_axi_rready(1),
      I2 => \^q\(34),
      I3 => st_mr_rlast(0),
      I4 => \gen_multi_thread.resp_select_6\,
      O => \gen_multi_thread.any_pop__1_1\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0),
      I1 => \^m_payload_i_reg[36]_0\,
      I2 => chosen(0),
      O => \chosen_reg[0]\
    );
\gen_multi_thread.arbiter_resp_inst/chosen[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/next_rr_hot\(0),
      I1 => \^m_payload_i_reg[36]_1\,
      I2 => chosen_7(0),
      O => \chosen_reg[0]_0\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDFDFAA000000"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\,
      I1 => st_mr_rid(0),
      I2 => \s_axi_rvalid[1]\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot[1]_i_3__1_n_0\,
      I5 => \last_rr_hot_reg[0]\,
      O => \m_payload_i_reg[36]_3\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7FAA000000"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_1\,
      I1 => st_mr_rid(0),
      I2 => \s_axi_rvalid[1]\(0),
      I3 => p_2_in_11,
      I4 => \gen_slave_slots[1].gen_si_read.si_transactor_ar/m_rvalid_qual__1\(0),
      I5 => \last_rr_hot_reg[0]_0\,
      O => \m_payload_i_reg[36]_5\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FF205500FF00"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\,
      I1 => st_mr_rid(0),
      I2 => \s_axi_rvalid[1]\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot[1]_i_3__1_n_0\,
      I5 => \last_rr_hot_reg[0]\,
      O => \m_payload_i_reg[36]_2\
    );
\gen_multi_thread.arbiter_resp_inst/last_rr_hot[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D580FF805500FF00"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_1\,
      I1 => st_mr_rid(0),
      I2 => \s_axi_rvalid[1]\(0),
      I3 => p_2_in_11,
      I4 => \gen_slave_slots[1].gen_si_read.si_transactor_ar/m_rvalid_qual__1\(0),
      I5 => \last_rr_hot_reg[0]_0\,
      O => \m_payload_i_reg[36]_4\
    );
\last_rr_hot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00004F444F44"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^m_valid_i_reg_0\,
      I2 => st_mr_rid(0),
      I3 => \s_axi_rvalid[1]\(0),
      I4 => s_axi_rready(0),
      I5 => \^m_valid_i_reg_1\,
      O => \^m_payload_i_reg[36]_0\
    );
\last_rr_hot[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F888F888"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^m_valid_i_reg_0\,
      I2 => st_mr_rid(0),
      I3 => \s_axi_rvalid[1]\(0),
      I4 => s_axi_rready(1),
      I5 => \^m_valid_i_reg_2\,
      O => \^m_payload_i_reg[36]_1\
    );
\last_rr_hot[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(36),
      O => \gen_slave_slots[1].gen_si_read.si_transactor_ar/m_rvalid_qual__1\(0)
    );
\last_rr_hot[1]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(36),
      O => \last_rr_hot[1]_i_3__1_n_0\
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \skid_buffer_reg_n_0_[0]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \skid_buffer_reg_n_0_[10]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \skid_buffer_reg_n_0_[11]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \skid_buffer_reg_n_0_[12]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \skid_buffer_reg_n_0_[13]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \skid_buffer_reg_n_0_[14]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \skid_buffer_reg_n_0_[15]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \skid_buffer_reg_n_0_[16]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \skid_buffer_reg_n_0_[17]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \skid_buffer_reg_n_0_[18]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \skid_buffer_reg_n_0_[19]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \skid_buffer_reg_n_0_[1]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \skid_buffer_reg_n_0_[20]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \skid_buffer_reg_n_0_[21]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \skid_buffer_reg_n_0_[22]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \skid_buffer_reg_n_0_[23]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \skid_buffer_reg_n_0_[24]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \skid_buffer_reg_n_0_[25]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \skid_buffer_reg_n_0_[26]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \skid_buffer_reg_n_0_[27]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \skid_buffer_reg_n_0_[28]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \skid_buffer_reg_n_0_[29]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \skid_buffer_reg_n_0_[2]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \skid_buffer_reg_n_0_[30]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \skid_buffer_reg_n_0_[31]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \skid_buffer_reg_n_0_[32]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \skid_buffer_reg_n_0_[33]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \skid_buffer_reg_n_0_[34]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \skid_buffer_reg_n_0_[35]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \skid_buffer_reg_n_0_[36]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(36)
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808080FFFFFFFF"
    )
        port map (
      I0 => chosen_7(0),
      I1 => s_axi_rready(1),
      I2 => \^q\(36),
      I3 => chosen(0),
      I4 => s_axi_rready(0),
      I5 => \^m_valid_i_reg_0\,
      O => p_1_in_0
    );
\m_payload_i[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_ruser(0),
      I1 => \skid_buffer_reg_n_0_[37]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(37)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \skid_buffer_reg_n_0_[3]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \skid_buffer_reg_n_0_[4]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \skid_buffer_reg_n_0_[5]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \skid_buffer_reg_n_0_[6]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \skid_buffer_reg_n_0_[7]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \skid_buffer_reg_n_0_[8]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \skid_buffer_reg_n_0_[9]\,
      I2 => \^s_ready_i_reg_0\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(32),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(33),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(36),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(37),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(9),
      Q => \^q\(9),
      R => '0'
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => p_1_in_0,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => p_0_in
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020FF2020202020"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(36),
      I2 => chosen(0),
      I3 => \s_axi_rvalid[1]\(0),
      I4 => st_mr_rid(0),
      I5 => chosen(1),
      O => \^m_valid_i_reg_1\
    );
\s_axi_rvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(36),
      I2 => chosen_7(0),
      I3 => \s_axi_rvalid[1]\(0),
      I4 => st_mr_rid(0),
      I5 => chosen_7(1),
      O => \^m_valid_i_reg_2\
    );
s_ready_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in_0,
      I1 => m_axi_rvalid(0),
      I2 => \^s_ready_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_ruser(0),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grant_hot0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    \chosen_reg[1]\ : in STD_LOGIC;
    \chosen_reg[0]\ : in STD_LOGIC;
    \gen_multi_thread.any_pop__1\ : in STD_LOGIC;
    \r_cmd_pop_1__1\ : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.last_rr_hot_reg[1]\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    st_aa_arvalid_qual : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    f_hot2enc_return : in STD_LOGIC;
    \gen_multi_thread.active_id_reg[0]_0\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor : entity is "axi_crossbar_v2_1_20_si_transactor";
end design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor is
  signal \gen_arbiter.any_grant_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.active_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_multi_thread.active_target[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.thread_valid_1__0\ : STD_LOGIC;
  signal m_avalid_qual_i019_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_8\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_9\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_5\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[0]_i_2\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[2]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_target[8]_i_1\ : label is "soft_lutpair123";
begin
\gen_arbiter.any_grant_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000004040"
    )
        port map (
      I0 => \gen_arbiter.any_grant_i_3_n_0\,
      I1 => m_avalid_qual_i019_in,
      I2 => \gen_arbiter.any_grant_reg\,
      I3 => st_aa_arvalid_qual(0),
      I4 => \gen_arbiter.any_grant_reg_0\,
      I5 => f_hot2enc_return,
      O => grant_hot0
    );
\gen_arbiter.any_grant_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => s_axi_rlast(0),
      I3 => s_axi_rready(0),
      I4 => \gen_arbiter.last_rr_hot_reg[1]\,
      O => \gen_arbiter.any_grant_i_3_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008888"
    )
        port map (
      I0 => \gen_multi_thread.s_avalid_en\(1),
      I1 => \gen_multi_thread.s_avalid_en\(0),
      I2 => \gen_arbiter.last_rr_hot_reg[1]\,
      I3 => \gen_arbiter.last_rr_hot_reg[1]_0\,
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt_reg[1]_0\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(8),
      I1 => \gen_multi_thread.active_id\(2),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_arbiter.m_grant_enc_i[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(0),
      I1 => \gen_multi_thread.active_id\(0),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.s_avalid_en\(0)
    );
\gen_arbiter.qual_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[0]_i_2_n_0\,
      I1 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB000000FB00FB00"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.any_pop__1\,
      I3 => m_avalid_qual_i019_in,
      I4 => \r_cmd_pop_1__1\,
      I5 => r_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[0]_i_2_n_0\
    );
\gen_arbiter.qual_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7DFF7D0000FF7D"
    )
        port map (
      I0 => \gen_multi_thread.thread_valid_0__0\,
      I1 => s_axi_arid(0),
      I2 => \gen_multi_thread.active_id\(0),
      I3 => \gen_multi_thread.active_target\(0),
      I4 => \gen_multi_thread.aid_match_1__0\,
      I5 => \gen_multi_thread.active_target\(8),
      O => m_avalid_qual_i019_in
    );
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9964"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id_reg[0]_0\,
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A86A"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.active_id_reg[0]_0\,
      I3 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id\(0),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.cmd_push_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(0),
      I5 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.active_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00AA00AA00A2222"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id\(2),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.cmd_push_1\,
      I5 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.active_cnt[8]_i_1_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(2),
      I5 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.active_cnt[9]_i_1_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820A8008A0288008"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.thread_valid_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(2),
      I4 => \gen_multi_thread.thread_valid_0__0\,
      I5 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_cnt[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.thread_valid_1__0\
    );
\gen_multi_thread.active_cnt[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[8]_i_1_n_0\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[9]_i_1_n_0\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FD20"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.active_id[0]_i_1_n_0\
    );
\gen_multi_thread.active_id[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(8),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_id[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \gen_multi_thread.cmd_push_1\,
      I2 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.active_id[2]_i_1_n_0\
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[0]_i_1_n_0\,
      Q => \gen_multi_thread.active_id\(0),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[2]_i_1_n_0\,
      Q => \gen_multi_thread.active_id\(2),
      R => SR(0)
    );
\gen_multi_thread.active_target[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.active_target[0]_i_1_n_0\
    );
\gen_multi_thread.active_target[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.active_target[8]_i_1_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[0]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[8]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_9
     port map (
      SR(0) => SR(0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \chosen_reg[0]_0\ => \chosen_reg[0]\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]\,
      \last_rr_hot_reg[0]_1\ => \last_rr_hot_reg[0]_0\,
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      p_2_in => p_2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized0\ is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grant_hot0 : out STD_LOGIC;
    \m_ready_d_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bready[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    \chosen_reg[1]\ : in STD_LOGIC;
    \chosen_reg[0]\ : in STD_LOGIC;
    access_done : in STD_LOGIC;
    \w_cmd_pop_1__0\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    st_aa_awvalid_qual : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    f_hot2enc_return : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_20_si_transactor";
end \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized0\ is
  signal \gen_arbiter.any_grant_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.active_id[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_multi_thread.active_target[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.thread_valid_1__0\ : STD_LOGIC;
  signal m_avalid_qual_i019_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_10\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_9__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[1]_i_3\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_5__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[0]_i_1__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[2]_i_1__0\ : label is "soft_lutpair127";
begin
\gen_arbiter.any_grant_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF4000004040"
    )
        port map (
      I0 => \gen_arbiter.any_grant_i_3__0_n_0\,
      I1 => m_avalid_qual_i019_in,
      I2 => \gen_arbiter.any_grant_reg\,
      I3 => st_aa_awvalid_qual(0),
      I4 => \gen_arbiter.any_grant_reg_0\,
      I5 => f_hot2enc_return,
      O => grant_hot0
    );
\gen_arbiter.any_grant_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => s_axi_bready(0),
      I3 => s_axi_bvalid(0),
      O => \gen_arbiter.any_grant_i_3__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(0),
      I1 => \gen_multi_thread.active_id\(0),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.s_avalid_en\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008888"
    )
        port map (
      I0 => \gen_multi_thread.s_avalid_en\(1),
      I1 => \gen_multi_thread.s_avalid_en\(0),
      I2 => s_axi_bvalid(0),
      I3 => s_axi_bready(0),
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => \gen_multi_thread.accept_cnt\(0),
      O => \s_axi_bready[0]\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(8),
      I1 => \gen_multi_thread.active_id\(2),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_arbiter.qual_reg[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[0]_i_2__0_n_0\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \m_ready_d_reg[0]\(0)
    );
\gen_arbiter.qual_reg[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB000000FB00FB00"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => access_done,
      I3 => m_avalid_qual_i019_in,
      I4 => \w_cmd_pop_1__0\,
      I5 => w_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[0]_i_2__0_n_0\
    );
\gen_arbiter.qual_reg[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7DFF7D0000FF7D"
    )
        port map (
      I0 => \gen_multi_thread.thread_valid_0__0\,
      I1 => s_axi_awid(0),
      I2 => \gen_multi_thread.active_id\(0),
      I3 => \gen_multi_thread.active_target\(0),
      I4 => \gen_multi_thread.aid_match_1__0\,
      I5 => \gen_multi_thread.active_target\(8),
      O => m_avalid_qual_i019_in
    );
\gen_multi_thread.accept_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9964"
    )
        port map (
      I0 => access_done,
      I1 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A86A"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I3 => access_done,
      O => \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => access_done,
      I1 => \gen_multi_thread.active_id\(0),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.cmd_push_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_cnt[0]_i_1__0_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(0),
      I5 => access_done,
      O => \gen_multi_thread.active_cnt[1]_i_1__0_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00AA00AA00A2222"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_cnt[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(8),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_cnt[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => access_done,
      I1 => \gen_multi_thread.active_id\(2),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.cmd_push_1\,
      I5 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.active_cnt[8]_i_1__0_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(2),
      I5 => access_done,
      O => \gen_multi_thread.active_cnt[9]_i_1__0_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820A8008A0288008"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.thread_valid_1__0\,
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(2),
      I4 => \gen_multi_thread.thread_valid_0__0\,
      I5 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_cnt[9]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.thread_valid_1__0\
    );
\gen_multi_thread.active_cnt[9]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[1]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[8]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[9]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \gen_multi_thread.cmd_push_0\,
      I2 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.active_id[0]_i_1__0_n_0\
    );
\gen_multi_thread.active_id[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \gen_multi_thread.cmd_push_1\,
      I2 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.active_id[2]_i_1__0_n_0\
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_id\(0),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[2]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_id\(2),
      R => SR(0)
    );
\gen_multi_thread.active_target[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.active_target[0]_i_1__0_n_0\
    );
\gen_multi_thread.active_target[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.active_target[8]_i_1__0_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[8]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_8
     port map (
      SR(0) => SR(0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \chosen_reg[0]_0\ => \chosen_reg[0]\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]\,
      \last_rr_hot_reg[0]_1\ => \last_rr_hot_reg[0]_0\,
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      p_2_in => p_2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized1\ is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_arvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    \chosen_reg[1]\ : in STD_LOGIC;
    \chosen_reg[0]\ : in STD_LOGIC;
    \gen_multi_thread.any_pop__1\ : in STD_LOGIC;
    \r_cmd_pop_1__1\ : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_id_reg[0]_0\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.last_rr_hot_reg[1]\ : in STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized1\ : entity is "axi_crossbar_v2_1_20_si_transactor";
end \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized1\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized1\ is
  signal \gen_arbiter.qual_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.active_id[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_multi_thread.active_target[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.thread_valid_1__0\ : STD_LOGIC;
  signal m_avalid_qual_i019_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_11\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_12\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_5__1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[0]_i_2__0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[2]_i_1__1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_target[8]_i_1__1\ : label is "soft_lutpair137";
begin
\gen_arbiter.m_grant_enc_i[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(8),
      I1 => \gen_multi_thread.active_id\(2),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_arbiter.m_grant_enc_i[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(0),
      I1 => \gen_multi_thread.active_id\(0),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.s_avalid_en\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008888"
    )
        port map (
      I0 => \gen_multi_thread.s_avalid_en\(1),
      I1 => \gen_multi_thread.s_avalid_en\(0),
      I2 => \gen_arbiter.last_rr_hot_reg[1]\,
      I3 => \gen_arbiter.last_rr_hot_reg[1]_0\,
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => \gen_multi_thread.accept_cnt\(0),
      O => st_aa_arvalid_qual(0)
    );
\gen_arbiter.qual_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[1]_i_2_n_0\,
      I1 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB000000FB00FB00"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.any_pop__1\,
      I3 => m_avalid_qual_i019_in,
      I4 => \r_cmd_pop_1__1\,
      I5 => r_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[1]_i_2_n_0\
    );
\gen_arbiter.qual_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7DFF7D0000FF7D"
    )
        port map (
      I0 => \gen_multi_thread.thread_valid_0__0\,
      I1 => s_axi_arid(0),
      I2 => \gen_multi_thread.active_id\(0),
      I3 => \gen_multi_thread.active_target\(0),
      I4 => \gen_multi_thread.aid_match_1__0\,
      I5 => \gen_multi_thread.active_target\(8),
      O => m_avalid_qual_i019_in
    );
\gen_multi_thread.accept_cnt[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9964"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id_reg[0]_0\,
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A86A"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.active_id_reg[0]_0\,
      I3 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.accept_cnt[1]_i_1__1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id\(0),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.cmd_push_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_cnt[0]_i_1__1_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(0),
      I5 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.active_cnt[1]_i_1__1_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00AA00AA00A2222"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_cnt[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_id\(2),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.cmd_push_1\,
      I5 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.active_cnt[8]_i_1__1_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(2),
      I5 => \gen_multi_thread.any_pop__1\,
      O => \gen_multi_thread.active_cnt[9]_i_1__1_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820A8008A0288008"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.thread_valid_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(2),
      I4 => \gen_multi_thread.thread_valid_0__0\,
      I5 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_cnt[9]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.thread_valid_1__0\
    );
\gen_multi_thread.active_cnt[9]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[0]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[1]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[8]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[9]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FD20"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.active_id[0]_i_1__1_n_0\
    );
\gen_multi_thread.active_id[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(8),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => s_axi_arid(0),
      I3 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_id[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \gen_multi_thread.cmd_push_1\,
      I2 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.active_id[2]_i_1__1_n_0\
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[0]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_id\(0),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[2]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_id\(2),
      R => SR(0)
    );
\gen_multi_thread.active_target[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.active_target[0]_i_1__1_n_0\
    );
\gen_multi_thread.active_target[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.active_target[8]_i_1__1_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[0]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[8]_i_1__1_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp_5
     port map (
      SR(0) => SR(0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \chosen_reg[0]_0\ => \chosen_reg[0]\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]\,
      \last_rr_hot_reg[0]_1\ => \last_rr_hot_reg[0]_0\,
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      p_2_in => p_2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized2\ is
  port (
    p_2_in : out STD_LOGIC;
    \last_rr_hot_reg[0]\ : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    \chosen_reg[1]\ : in STD_LOGIC;
    \chosen_reg[0]\ : in STD_LOGIC;
    \access_done__0\ : in STD_LOGIC;
    \w_cmd_pop_1__0\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized2\ : entity is "axi_crossbar_v2_1_20_si_transactor";
end \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized2\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized2\ is
  signal \gen_arbiter.qual_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.active_id[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_id[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_multi_thread.active_target[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.thread_valid_1__0\ : STD_LOGIC;
  signal m_avalid_qual_i019_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_11__0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_12__0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__2\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__2\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[1]_i_3__0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_5__2\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[0]_i_1__2\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_id[2]_i_1__2\ : label is "soft_lutpair141";
begin
\gen_arbiter.m_grant_enc_i[0]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(8),
      I1 => \gen_multi_thread.active_id\(2),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_arbiter.m_grant_enc_i[0]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target\(0),
      I1 => \gen_multi_thread.active_id\(0),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.s_avalid_en\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008888"
    )
        port map (
      I0 => \gen_multi_thread.s_avalid_en\(1),
      I1 => \gen_multi_thread.s_avalid_en\(0),
      I2 => s_axi_bvalid(0),
      I3 => s_axi_bready(0),
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => \gen_multi_thread.accept_cnt\(0),
      O => st_aa_awvalid_qual(0)
    );
\gen_arbiter.qual_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[1]_i_2__0_n_0\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \m_ready_d_reg[0]\(0)
    );
\gen_arbiter.qual_reg[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB000000FB00FB00"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \access_done__0\,
      I3 => m_avalid_qual_i019_in,
      I4 => \w_cmd_pop_1__0\,
      I5 => w_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[1]_i_2__0_n_0\
    );
\gen_arbiter.qual_reg[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7DFF7D0000FF7D"
    )
        port map (
      I0 => \gen_multi_thread.thread_valid_0__0\,
      I1 => s_axi_awid(0),
      I2 => \gen_multi_thread.active_id\(0),
      I3 => \gen_multi_thread.active_target\(0),
      I4 => \gen_multi_thread.aid_match_1__0\,
      I5 => \gen_multi_thread.active_target\(8),
      O => m_avalid_qual_i019_in
    );
\gen_multi_thread.accept_cnt[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9964"
    )
        port map (
      I0 => \access_done__0\,
      I1 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A86A"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I3 => \access_done__0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \access_done__0\,
      I1 => \gen_multi_thread.active_id\(0),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.cmd_push_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_cnt[0]_i_1__2_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(0),
      I5 => \access_done__0\,
      O => \gen_multi_thread.active_cnt[1]_i_1__2_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00AA00AA00A2222"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.aid_match_1__0\,
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_cnt[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(8),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_cnt[8]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82827D7D7DFF8200"
    )
        port map (
      I0 => \access_done__0\,
      I1 => \gen_multi_thread.active_id\(2),
      I2 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.cmd_push_1\,
      I5 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.active_cnt[8]_i_1__2_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E07878E078787878"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt_reg[0]_0\,
      I4 => \gen_multi_thread.active_id\(2),
      I5 => \access_done__0\,
      O => \gen_multi_thread.active_cnt[9]_i_1__2_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820A8008A0288008"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.thread_valid_1__0\,
      I2 => s_axi_awid(0),
      I3 => \gen_multi_thread.active_id\(2),
      I4 => \gen_multi_thread.thread_valid_0__0\,
      I5 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_cnt[9]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.thread_valid_1__0\
    );
\gen_multi_thread.active_cnt[9]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[0]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[1]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[8]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_cnt[9]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \gen_multi_thread.cmd_push_0\,
      I2 => \gen_multi_thread.active_id\(0),
      O => \gen_multi_thread.active_id[0]_i_1__2_n_0\
    );
\gen_multi_thread.active_id[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \gen_multi_thread.cmd_push_1\,
      I2 => \gen_multi_thread.active_id\(2),
      O => \gen_multi_thread.active_id[2]_i_1__2_n_0\
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[0]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_id\(0),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_id[2]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_id\(2),
      R => SR(0)
    );
\gen_multi_thread.active_target[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_0\,
      I1 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.active_target[0]_i_1__2_n_0\
    );
\gen_multi_thread.active_target[8]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.cmd_push_1\,
      I1 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.active_target[8]_i_1__2_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[0]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.active_target[8]_i_1__2_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_arbiter_resp
     port map (
      SR(0) => SR(0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \chosen_reg[0]_0\ => \chosen_reg[0]\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]\,
      \last_rr_hot_reg[0]_1\ => \last_rr_hot_reg[0]_0\,
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      p_2_in => p_2_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc_0 : in STD_LOGIC;
    p_10_in : in STD_LOGIC;
    m_avalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo : entity is "axi_data_fifo_v2_1_18_axic_reg_srl_fifo";
end design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo is
  signal \FSM_onehot_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_avalid_0 : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_2__0_n_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  signal storage_data1210_out : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5\ : label is "soft_lutpair146";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1__0\ : label is "soft_lutpair145";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \m_valid_i_i_2__0\ : label is "soft_lutpair144";
begin
  SS(0) <= \^ss\(0);
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => m_avalid_0,
      I2 => s_axi_wvalid(0),
      I3 => m_select_enc_0,
      O => \storage_data1_reg[0]_1\
    );
\FSM_onehot_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__1_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      I3 => storage_data11,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => storage_data1210_out,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_4__1_n_0\,
      I3 => fifoaddr(0),
      I4 => fifoaddr(1),
      I5 => storage_data1210_out,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[3]_i_2__1_n_0\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_4__1_n_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => storage_data1210_out
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => p_0_in8_in,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__1_n_0\,
      Q => p_9_in,
      S => \^ss\(0)
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SR(0),
      Q => \^ss\(0),
      R => '0'
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => push,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      \FSM_onehot_state_reg[1]\ => \^s_ready_i_reg_0\,
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      load_s1 => load_s1,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid_0 => m_avalid_0,
      m_ready_d(0) => m_ready_d(0),
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \storage_data1_reg[0]\ => \^storage_data1_reg[0]_0\
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => \m_valid_i_i_2__0_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_4__1_n_0\,
      I3 => fifoaddr(0),
      I4 => fifoaddr(1),
      I5 => storage_data1210_out,
      O => \m_valid_i_i_1__1_n_0\
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \m_aready__1\,
      I2 => m_ready_d(0),
      I3 => s_axi_awvalid(0),
      O => \m_valid_i_i_2__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__1_n_0\,
      Q => m_avalid_0,
      R => \^ss\(0)
    );
\s_axi_wready[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => m_avalid_0,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => m_select_enc_0,
      I3 => p_10_in,
      I4 => m_avalid,
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEEEEEE"
    )
        port map (
      I0 => \^ss\(0),
      I1 => storage_data11,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => push,
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => SR(0)
    );
\storage_data1[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A000E000A0"
    )
        port map (
      I0 => p_9_in,
      I1 => p_0_in8_in,
      I2 => s_axi_awvalid(0),
      I3 => m_ready_d(0),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo_6 is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \gen_axi.write_cs0__0\ : out STD_LOGIC;
    wm_mr_wvalid_1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready__1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_10_in : in STD_LOGIC;
    m_avalid : in STD_LOGIC;
    \storage_data1[0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo_6 : entity is "axi_data_fifo_v2_1_18_axic_reg_srl_fifo";
end design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo_6;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo_6 is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1_1\ : STD_LOGIC;
  signal m_avalid_0 : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  signal \storage_data1210_out__0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^wm_mr_wvalid_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_axi.write_cs[2]_i_3\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5__0\ : label is "soft_lutpair133";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1\ : label is "soft_lutpair132";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of m_valid_i_i_2 : label is "soft_lutpair131";
begin
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  wm_mr_wvalid_1 <= \^wm_mr_wvalid_1\;
\FSM_onehot_gen_axi.write_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \^wm_mr_wvalid_1\,
      I1 => s_axi_wlast(1),
      I2 => m_select_enc_0,
      I3 => s_axi_wlast(0),
      O => \gen_axi.write_cs0__0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAA00000000"
    )
        port map (
      I0 => \storage_data1[0]_i_4\,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => m_avalid_0,
      I3 => s_axi_wvalid(0),
      I4 => m_select_enc_0,
      I5 => m_avalid,
      O => \^wm_mr_wvalid_1\
    );
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1_1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      I3 => storage_data11,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \storage_data1210_out__0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_aready__1_1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I3 => fifoaddr(0),
      I4 => fifoaddr(1),
      I5 => \storage_data1210_out__0\,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \m_aready__1_1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[3]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1_1\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => \m_aready__1_1\,
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_4__0_n_0\
    );
\FSM_onehot_state[3]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \storage_data1210_out__0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__0_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \^wm_mr_wvalid_1\,
      I1 => s_axi_wlast(0),
      I2 => m_select_enc_0,
      I3 => s_axi_wlast(1),
      I4 => p_10_in,
      O => \m_aready__1\
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => push,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_7
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      \FSM_onehot_state_reg[1]\ => \^s_ready_i_reg_0\,
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      load_s1 => load_s1,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      \m_aready__1_1\ => \m_aready__1_1\,
      m_avalid_0 => m_avalid_0,
      m_ready_d(0) => m_ready_d(0),
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \storage_data1_reg[0]\ => \^storage_data1_reg[0]_0\
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => m_valid_i_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I3 => fifoaddr(0),
      I4 => fifoaddr(1),
      I5 => \storage_data1210_out__0\,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \m_aready__1_1\,
      I2 => m_ready_d(0),
      I3 => s_axi_awvalid(0),
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => m_valid_i_i_1_n_0,
      Q => m_avalid_0,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => m_avalid_0,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => p_10_in,
      I3 => m_avalid,
      I4 => m_select_enc_0,
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEEEEEE"
    )
        port map (
      I0 => areset_d1,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => push,
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__1_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => SR(0)
    );
\storage_data1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A000E000A0"
    )
        port map (
      I0 => p_9_in,
      I1 => p_0_in8_in,
      I2 => s_axi_awvalid(0),
      I3 => m_ready_d(0),
      I4 => \m_aready__1_1\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1\ is
  port (
    m_avalid : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \m_aready1__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_aready1__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    p_10_in : in STD_LOGIC;
    m_select_enc_1 : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \sa_wm_awvalid__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wm_mr_wvalid_1 : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc_2 : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    \storage_data1_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1\ : entity is "axi_data_fifo_v2_1_18_axic_reg_srl_fifo";
end \design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1\;

architecture STRUCTURE of \design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1\ is
  signal \FSM_onehot_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \state2__1\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0\ : label is "soft_lutpair90";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_avalid <= \^m_avalid\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \state2__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \m_aready__1\,
      I3 => \sa_wm_awvalid__0\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[1]_i_1__1_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEECECEC62606060"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \sa_wm_awvalid__0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state2__1\,
      I5 => \^q\(1),
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      O => \state2__1\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => D(0),
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__1_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => D(1),
      Q => \^q\(1),
      S => areset_d1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => \^m_avalid\,
      I2 => p_10_in,
      I3 => m_select_enc_1,
      O => \m_aready1__0\(0)
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_avalid\,
      I1 => p_10_in,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => m_select_enc_2,
      O => \m_aready1__0_0\(0)
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F51F0AE0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \sa_wm_awvalid__0\(0),
      I3 => \m_aready__1\,
      I4 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBDBDFFF24242000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \m_aready__1\,
      I2 => \sa_wm_awvalid__0\(0),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_18_ndeep_srl_10
     port map (
      A(1 downto 0) => fifoaddr(1 downto 0),
      \FSM_onehot_state_reg[1]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      \m_aready__1\ => \m_aready__1\,
      m_ready_d(0) => m_ready_d(0),
      storage_data11 => storage_data11,
      \storage_data1_reg[0]\ => \storage_data1_reg[0]_1\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]_2\,
      \storage_data1_reg[0]_1\ => \^storage_data1_reg[0]_0\
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCCCCC62404040"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \sa_wm_awvalid__0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state2__1\,
      I5 => \^q\(1),
      O => \m_valid_i_i_1__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\storage_data1[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => p_10_in,
      I1 => s_axi_wlast(1),
      I2 => \^storage_data1_reg[0]_0\,
      I3 => s_axi_wlast(0),
      I4 => wm_mr_wvalid_1,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice is
  port (
    st_mr_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    st_mr_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 37 downto 0 );
    \m_payload_i_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    need_arbitration : out STD_LOGIC;
    need_arbitration_0 : out STD_LOGIC;
    access_done : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.any_pop__1_1\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    need_arbitration_2 : out STD_LOGIC;
    need_arbitration_3 : out STD_LOGIC;
    \access_done__0\ : out STD_LOGIC;
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[36]\ : out STD_LOGIC;
    \m_payload_i_reg[36]_0\ : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[3]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[36]_1\ : out STD_LOGIC;
    \m_payload_i_reg[36]_2\ : out STD_LOGIC;
    \chosen_reg[0]_1\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \m_payload_i_reg[3]_2\ : out STD_LOGIC;
    \chosen_reg[0]_2\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.resp_select\ : in STD_LOGIC;
    st_mr_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rvalid[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \chosen_reg[0]_3\ : in STD_LOGIC;
    \gen_multi_thread.resp_select_5\ : in STD_LOGIC;
    \s_axi_bvalid[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.resp_select_6\ : in STD_LOGIC;
    chosen_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \chosen_reg[0]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.resp_select_9\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[0]\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \last_rr_hot_reg[0]_0\ : in STD_LOGIC;
    p_2_in_10 : in STD_LOGIC;
    \last_rr_hot_reg[0]_1\ : in STD_LOGIC;
    p_2_in_11 : in STD_LOGIC;
    \last_rr_hot_reg[0]_2\ : in STD_LOGIC;
    p_2_in_12 : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice : entity is "axi_register_slice_v2_1_19_axi_register_slice";
end design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice;

architecture STRUCTURE of design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice is
  signal \^p_1_in\ : STD_LOGIC;
begin
  p_1_in <= \^p_1_in\;
\b.b_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_11\
     port map (
      D(4 downto 0) => D(4 downto 0),
      Q(4 downto 0) => \m_payload_i_reg[4]\(4 downto 0),
      access_done => access_done,
      \access_done__0\ => \access_done__0\,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aresetn_d_reg[0]\,
      chosen_4(1 downto 0) => chosen_4(1 downto 0),
      chosen_8(1 downto 0) => chosen_8(1 downto 0),
      \chosen_reg[0]\ => \chosen_reg[0]_0\,
      \chosen_reg[0]_0\ => \chosen_reg[0]_2\,
      \chosen_reg[0]_1\ => \chosen_reg[0]_3\,
      \chosen_reg[0]_2\(0) => \chosen_reg[0]_4\(0),
      \gen_multi_thread.resp_select_5\ => \gen_multi_thread.resp_select_5\,
      \gen_multi_thread.resp_select_9\ => \gen_multi_thread.resp_select_9\,
      \last_rr_hot_reg[0]\ => \last_rr_hot_reg[0]_0\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]_2\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[3]_0\ => \m_payload_i_reg[3]\,
      \m_payload_i_reg[3]_1\ => \m_payload_i_reg[3]_0\,
      \m_payload_i_reg[3]_2\ => \m_payload_i_reg[3]_1\,
      \m_payload_i_reg[3]_3\ => \m_payload_i_reg[3]_2\,
      m_valid_i_reg_0 => st_mr_bvalid(0),
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      p_2_in_10 => p_2_in_10,
      p_2_in_12 => p_2_in_12,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bready_0_sp_1 => need_arbitration_0,
      s_axi_bready_1_sp_1 => need_arbitration_3,
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      \s_axi_bvalid[1]\(0) => \s_axi_bvalid[1]\(0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      st_mr_bid(0) => st_mr_bid(0)
    );
\r.r_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_12\
     port map (
      Q(37 downto 0) => Q(37 downto 0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      chosen_7(1 downto 0) => chosen_7(1 downto 0),
      \chosen_reg[0]\ => \chosen_reg[0]\,
      \chosen_reg[0]_0\ => \chosen_reg[0]_1\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      \gen_multi_thread.any_pop__1_1\ => \gen_multi_thread.any_pop__1_1\,
      \gen_multi_thread.resp_select\ => \gen_multi_thread.resp_select\,
      \gen_multi_thread.resp_select_6\ => \gen_multi_thread.resp_select_6\,
      \last_rr_hot_reg[0]\ => \last_rr_hot_reg[0]\,
      \last_rr_hot_reg[0]_0\ => \last_rr_hot_reg[0]_1\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[36]_0\ => need_arbitration,
      \m_payload_i_reg[36]_1\ => need_arbitration_2,
      \m_payload_i_reg[36]_2\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[36]_3\ => \m_payload_i_reg[36]_0\,
      \m_payload_i_reg[36]_4\ => \m_payload_i_reg[36]_1\,
      \m_payload_i_reg[36]_5\ => \m_payload_i_reg[36]_2\,
      m_valid_i_reg_0 => st_mr_rvalid(0),
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2 => m_valid_i_reg_0,
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      p_2_in => p_2_in,
      p_2_in_11 => p_2_in_11,
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      \s_axi_rvalid[1]\(0) => \s_axi_rvalid[1]\(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      st_mr_rid(0) => st_mr_rid(0),
      st_mr_rlast(0) => st_mr_rlast(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice_1 is
  port (
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    mi_bready_1 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mi_rready_1 : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \w_cmd_pop_1__0\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : out STD_LOGIC;
    st_mr_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_payload_i_reg[36]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : out STD_LOGIC;
    \r_cmd_pop_1__1\ : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[35]\ : out STD_LOGIC;
    \gen_multi_thread.resp_select\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_0\ : out STD_LOGIC;
    m_valid_i_reg_3 : out STD_LOGIC;
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_1\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \gen_multi_thread.resp_select_2\ : out STD_LOGIC;
    m_valid_i_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    \chosen_reg[1]_1\ : out STD_LOGIC;
    \chosen_reg[1]_2\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 37 downto 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_buser[1]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    chosen_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_11_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_2_in : in STD_LOGIC;
    st_mr_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_3\ : in STD_LOGIC;
    p_2_in_6 : in STD_LOGIC;
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_4\ : in STD_LOGIC;
    p_2_in_7 : in STD_LOGIC;
    \chosen_reg[1]_5\ : in STD_LOGIC;
    p_2_in_8 : in STD_LOGIC;
    \chosen_reg[1]_6\ : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    p_16_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    need_arbitration : in STD_LOGIC;
    need_arbitration_9 : in STD_LOGIC;
    need_arbitration_10 : in STD_LOGIC;
    need_arbitration_11 : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice_1 : entity is "axi_register_slice_v2_1_19_axi_register_slice";
end design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice_1;

architecture STRUCTURE of design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice_1 is
  signal \^p_0_in\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
\b.b_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      chosen_3(0) => chosen_3(0),
      chosen_5(0) => chosen_5(0),
      \chosen_reg[1]\ => \chosen_reg[1]_0\,
      \chosen_reg[1]_0\ => \chosen_reg[1]_2\,
      \chosen_reg[1]_1\ => \chosen_reg[1]_4\,
      \chosen_reg[1]_2\ => \chosen_reg[1]_6\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      \gen_multi_thread.resp_select_0\ => \gen_multi_thread.resp_select_0\,
      \gen_multi_thread.resp_select_2\ => \gen_multi_thread.resp_select_2\,
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      \m_payload_i_reg[2]_1\ => \m_payload_i_reg[2]_0\,
      \m_payload_i_reg[3]_0\ => \m_payload_i_reg[3]\(0),
      m_valid_i_reg_0 => m_valid_i_reg(0),
      m_valid_i_reg_1 => m_valid_i_reg_1,
      m_valid_i_reg_2(0) => m_valid_i_reg_4(0),
      mi_bready_1 => mi_bready_1,
      need_arbitration_11 => need_arbitration_11,
      need_arbitration_9 => need_arbitration_9,
      p_0_in => \^p_0_in\,
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      p_2_in_6 => p_2_in_6,
      p_2_in_8 => p_2_in_8,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => s_axi_buser(1 downto 0),
      \s_axi_buser[1]\(4 downto 0) => \s_axi_buser[1]\(4 downto 0),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      \w_cmd_pop_1__0\ => \w_cmd_pop_1__0\,
      w_issuing_cnt(0) => w_issuing_cnt(0)
    );
\r.r_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_19_axic_register_slice__parameterized2\
     port map (
      Q(37 downto 0) => Q(37 downto 0),
      aclk => aclk,
      chosen(0) => chosen(0),
      chosen_4(0) => chosen_4(0),
      \chosen_reg[1]\ => \chosen_reg[1]\,
      \chosen_reg[1]_0\ => \chosen_reg[1]_1\,
      \chosen_reg[1]_1\ => \chosen_reg[1]_3\,
      \chosen_reg[1]_2\ => \chosen_reg[1]_5\,
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      \gen_multi_thread.resp_select\ => \gen_multi_thread.resp_select\,
      \gen_multi_thread.resp_select_1\ => \gen_multi_thread.resp_select_1\,
      \m_payload_i_reg[34]_0\ => st_mr_rlast(0),
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[36]_0\ => \m_payload_i_reg[36]\(0),
      m_valid_i_reg_0 => m_valid_i_reg_0(0),
      m_valid_i_reg_1 => m_valid_i_reg_2,
      m_valid_i_reg_2 => m_valid_i_reg_3,
      need_arbitration => need_arbitration,
      need_arbitration_10 => need_arbitration_10,
      p_0_in => \^p_0_in\,
      p_11_in => p_11_in,
      p_13_in => p_13_in,
      p_16_in(1 downto 0) => p_16_in(1 downto 0),
      p_1_in => p_1_in,
      p_2_in => p_2_in,
      p_2_in_7 => p_2_in_7,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(0) => r_issuing_cnt(0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => s_axi_ruser(1 downto 0),
      s_ready_i_reg_0 => mi_rready_1,
      st_mr_rvalid(0) => st_mr_rvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_20_wdata_mux__parameterized0\ is
  port (
    m_avalid : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    \m_aready1__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_aready1__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    p_10_in : in STD_LOGIC;
    m_select_enc_1 : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \sa_wm_awvalid__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wm_mr_wvalid_1 : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc_2 : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_20_wdata_mux__parameterized0\ : entity is "axi_crossbar_v2_1_20_wdata_mux";
end \design_1_xbar_0_axi_crossbar_v2_1_20_wdata_mux__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_20_wdata_mux__parameterized0\ is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1\
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => areset_d1,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      \m_aready1__0_0\(0) => \m_aready1__0_0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_1 => m_select_enc_1,
      m_select_enc_2 => m_select_enc_2,
      p_10_in => p_10_in,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(0),
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_0\,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router is
  port (
    ss_wr_awready_0 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    \gen_axi.write_cs0__0\ : out STD_LOGIC;
    wm_mr_wvalid_1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready__1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_10_in : in STD_LOGIC;
    m_avalid : in STD_LOGIC;
    \storage_data1[0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router : entity is "axi_crossbar_v2_1_20_wdata_router";
end design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router is
begin
wrouter_aw_fifo: entity work.design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo_6
     port map (
      SR(0) => SR(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_0 => m_select_enc_0,
      p_10_in => p_10_in,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg_0 => ss_wr_awready_0,
      \storage_data1[0]_i_4\ => \storage_data1[0]_i_4\,
      \storage_data1_reg[0]_0\ => m_select_enc,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router_3 is
  port (
    areset_d1 : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc_0 : in STD_LOGIC;
    p_10_in : in STD_LOGIC;
    m_avalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router_3 : entity is "axi_crossbar_v2_1_20_wdata_router";
end design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router_3;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router_3 is
begin
wrouter_aw_fifo: entity work.design_1_xbar_0_axi_data_fifo_v2_1_18_axic_reg_srl_fifo
     port map (
      SR(0) => SR(0),
      SS(0) => areset_d1,
      aclk => aclk,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_0 => m_select_enc_0,
      p_10_in => p_10_in,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg_0 => ss_wr_awready_1,
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_crossbar is
  port (
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    \gen_arbiter.m_mesg_i_reg[64]\ : out STD_LOGIC_VECTOR ( 59 downto 0 );
    \gen_arbiter.s_ready_i_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[35]\ : out STD_LOGIC;
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_0\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_crossbar : entity is "axi_crossbar_v2_1_20_crossbar";
end design_1_xbar_0_axi_crossbar_v2_1_20_crossbar;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_crossbar is
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 1 to 1 );
  signal aa_mi_arvalid : STD_LOGIC;
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 1 to 1 );
  signal aa_sa_awvalid : STD_LOGIC;
  signal aa_wm_awgrant_enc : STD_LOGIC;
  signal access_done : STD_LOGIC;
  signal \access_done__0\ : STD_LOGIC;
  signal addr_arbiter_ar_n_4 : STD_LOGIC;
  signal addr_arbiter_ar_n_65 : STD_LOGIC;
  signal addr_arbiter_ar_n_66 : STD_LOGIC;
  signal addr_arbiter_ar_n_68 : STD_LOGIC;
  signal addr_arbiter_ar_n_71 : STD_LOGIC;
  signal addr_arbiter_aw_n_4 : STD_LOGIC;
  signal addr_arbiter_aw_n_66 : STD_LOGIC;
  signal addr_arbiter_aw_n_67 : STD_LOGIC;
  signal addr_arbiter_aw_n_68 : STD_LOGIC;
  signal addr_arbiter_aw_n_69 : STD_LOGIC;
  signal addr_arbiter_aw_n_70 : STD_LOGIC;
  signal addr_arbiter_aw_n_74 : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal f_hot2enc_return : STD_LOGIC;
  signal f_hot2enc_return_0 : STD_LOGIC;
  signal \^gen_arbiter.m_mesg_i_reg[64]\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal \^gen_arbiter.s_ready_i_reg[0]\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]_0\ : STD_LOGIC;
  signal \gen_axi.read_cs0__0\ : STD_LOGIC;
  signal \gen_axi.write_cs01_out\ : STD_LOGIC;
  signal \gen_axi.write_cs0__0\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_10\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_11\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_60\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_61\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_62\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_63\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_64\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_65\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_66\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_67\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_68\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_69\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_70\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_71\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_72\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_103\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_104\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_105\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_106\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_80\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_82\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_97\ : STD_LOGIC;
  signal \gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.any_pop__1_4\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/chosen\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_10\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_13\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_15\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/need_arbitration\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/need_arbitration_1\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/need_arbitration_2\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/need_arbitration_3\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/p_2_in\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/p_2_in_11\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/p_2_in_14\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/p_2_in_16\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select_6\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select_7\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select_8\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in\ : STD_LOGIC;
  signal grant_hot0 : STD_LOGIC;
  signal grant_hot0_9 : STD_LOGIC;
  signal \m_aready1__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \m_aready1__0_5\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \m_aready__1\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal \^m_payload_i_reg[2]\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[35]\ : STD_LOGIC;
  signal \^m_payload_i_reg[35]_0\ : STD_LOGIC;
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_17 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_19 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_rvalid_qual__1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal m_select_enc : STD_LOGIC;
  signal m_select_enc_12 : STD_LOGIC;
  signal m_select_enc_18 : STD_LOGIC;
  signal \^m_valid_i_reg\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal mi_arready : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mi_awready : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mi_bready_1 : STD_LOGIC;
  signal mi_rready_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_cmd_pop_1__1\ : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 8 to 8 );
  signal reset : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sa_wm_awvalid__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal splitter_aw_mi_n_0 : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ss_aa_awvalid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ss_wr_awready_0 : STD_LOGIC;
  signal ss_wr_awready_1 : STD_LOGIC;
  signal st_aa_arvalid_qual : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_aa_awvalid_qual : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_rid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal st_mr_rlast : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \w_cmd_pop_1__0\ : STD_LOGIC;
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 8 to 8 );
  signal wm_mr_wvalid_1 : STD_LOGIC;
  signal \wrouter_aw_fifo/areset_d1\ : STD_LOGIC;
begin
  \gen_arbiter.m_mesg_i_reg[64]\(59 downto 0) <= \^gen_arbiter.m_mesg_i_reg[64]\(59 downto 0);
  \gen_arbiter.s_ready_i_reg[0]\ <= \^gen_arbiter.s_ready_i_reg[0]\;
  \gen_arbiter.s_ready_i_reg[0]_0\ <= \^gen_arbiter.s_ready_i_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[1]\ <= \^gen_arbiter.s_ready_i_reg[1]\;
  \gen_arbiter.s_ready_i_reg[1]_0\ <= \^gen_arbiter.s_ready_i_reg[1]_0\;
  \m_payload_i_reg[2]\ <= \^m_payload_i_reg[2]\;
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  \m_payload_i_reg[35]\ <= \^m_payload_i_reg[35]\;
  \m_payload_i_reg[35]_0\ <= \^m_payload_i_reg[35]_0\;
  m_valid_i_reg <= \^m_valid_i_reg\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_bvalid(1 downto 0) <= \^s_axi_bvalid\(1 downto 0);
  s_axi_rlast(1 downto 0) <= \^s_axi_rlast\(1 downto 0);
addr_arbiter_ar: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter
     port map (
      D(1) => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\,
      D(0) => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\,
      SR(0) => reset,
      aa_mi_artarget_hot(0) => aa_mi_artarget_hot(1),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      f_hot2enc_return => f_hot2enc_return,
      \gen_arbiter.last_rr_hot_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_8\,
      \gen_arbiter.m_mesg_i_reg[0]_0\ => addr_arbiter_ar_n_65,
      \gen_arbiter.m_mesg_i_reg[1]_0\ => addr_arbiter_ar_n_4,
      \gen_arbiter.m_mesg_i_reg[39]_0\ => addr_arbiter_ar_n_68,
      \gen_arbiter.m_mesg_i_reg[64]_0\(59 downto 0) => \^gen_arbiter.m_mesg_i_reg[64]\(59 downto 0),
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_ar_n_71,
      \gen_arbiter.qual_reg_reg[0]_0\ => addr_arbiter_ar_n_66,
      \gen_arbiter.s_ready_i_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[0]\,
      \gen_arbiter.s_ready_i_reg[1]_0\ => \^gen_arbiter.s_ready_i_reg[1]\,
      \gen_axi.read_cs0__0\ => \gen_axi.read_cs0__0\,
      grant_hot0 => grant_hot0,
      mi_arready(0) => mi_arready(1),
      p_11_in => p_11_in,
      p_16_in(1 downto 0) => p_16_in(1 downto 0),
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(0) => r_issuing_cnt(8),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_aruser(1 downto 0) => s_axi_aruser(1 downto 0),
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      st_aa_arvalid_qual(1 downto 0) => st_aa_arvalid_qual(1 downto 0)
    );
addr_arbiter_aw: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_addr_arbiter_0
     port map (
      D(1) => addr_arbiter_aw_n_68,
      D(0) => addr_arbiter_aw_n_69,
      \FSM_onehot_state_reg[3]\ => addr_arbiter_aw_n_70,
      Q(59 downto 0) => Q(59 downto 0),
      SR(0) => reset,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(1),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      aresetn_d => aresetn_d,
      f_hot2enc_return => f_hot2enc_return_0,
      \gen_arbiter.grant_hot_reg[1]_0\ => splitter_aw_mi_n_0,
      \gen_arbiter.last_rr_hot_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_6\,
      \gen_arbiter.m_mesg_i_reg[0]_0\ => addr_arbiter_aw_n_66,
      \gen_arbiter.m_mesg_i_reg[1]_0\ => addr_arbiter_aw_n_4,
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_aw_n_74,
      \gen_arbiter.qual_reg_reg[0]_0\ => addr_arbiter_aw_n_67,
      \gen_arbiter.qual_reg_reg[1]_0\(1) => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\,
      \gen_arbiter.qual_reg_reg[1]_0\(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      \gen_axi.s_axi_bid_i_reg[1]\ => \gen_decerr_slave.decerr_slave_inst_n_11\,
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      grant_hot0 => grant_hot0_9,
      \m_aready__1\ => \m_aready__1\,
      m_ready_d(1 downto 0) => m_ready_d_19(1 downto 0),
      m_ready_d_0(0) => m_ready_d(0),
      m_ready_d_1(0) => m_ready_d_17(0),
      mi_awready(0) => mi_awready(1),
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awuser(1 downto 0) => s_axi_awuser(1 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(1),
      ss_aa_awready(1 downto 0) => ss_aa_awready(1 downto 0),
      ss_aa_awvalid(1 downto 0) => ss_aa_awvalid(1 downto 0),
      st_aa_awvalid_qual(1 downto 0) => st_aa_awvalid_qual(1 downto 0),
      \storage_data1_reg[0]\(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      \storage_data1_reg[0]\(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      \w_cmd_pop_1__0\ => \w_cmd_pop_1__0\,
      w_issuing_cnt(0) => w_issuing_cnt(8)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_decerr_slave
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[0]_0\ => \gen_decerr_slave.decerr_slave_inst_n_11\,
      SR(0) => reset,
      aa_mi_artarget_hot(0) => aa_mi_artarget_hot(1),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_axi.read_cnt_reg[7]_0\(7 downto 0) => \^gen_arbiter.m_mesg_i_reg[64]\(41 downto 34),
      \gen_axi.read_cs0__0\ => \gen_axi.read_cs0__0\,
      \gen_axi.s_axi_bid_i_reg[0]_0\ => addr_arbiter_aw_n_66,
      \gen_axi.s_axi_bid_i_reg[1]_0\ => addr_arbiter_aw_n_4,
      \gen_axi.s_axi_rid_i_reg[0]_0\ => addr_arbiter_ar_n_65,
      \gen_axi.s_axi_rid_i_reg[1]_0\ => addr_arbiter_ar_n_4,
      \gen_axi.s_axi_rlast_i_reg_0\ => addr_arbiter_ar_n_68,
      \gen_axi.s_axi_wready_i_reg_0\ => \gen_decerr_slave.decerr_slave_inst_n_10\,
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      m_select_enc => m_select_enc,
      mi_arready(0) => mi_arready(1),
      mi_awready(0) => mi_awready(1),
      mi_bready_1 => mi_bready_1,
      mi_rready_1 => mi_rready_1,
      p_10_in => p_10_in,
      p_11_in => p_11_in,
      p_13_in => p_13_in,
      p_16_in(1 downto 0) => p_16_in(1 downto 0),
      p_17_in => p_17_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(1),
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\gen_master_slots[0].reg_slice_mi\: entity work.design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice
     port map (
      D(4 downto 0) => D(4 downto 0),
      Q(37) => st_mr_rmesg(2),
      Q(36 downto 35) => st_mr_rid(1 downto 0),
      Q(34) => st_mr_rlast(0),
      Q(33 downto 32) => st_mr_rmesg(1 downto 0),
      Q(31 downto 0) => st_mr_rmesg(34 downto 3),
      access_done => access_done,
      \access_done__0\ => \access_done__0\,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_60\,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1 downto 0),
      chosen_4(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_10\(1 downto 0),
      chosen_7(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_13\(1 downto 0),
      chosen_8(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_15\(1 downto 0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_63\,
      \chosen_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_66\,
      \chosen_reg[0]_1\ => \gen_master_slots[0].reg_slice_mi_n_69\,
      \chosen_reg[0]_2\ => \gen_master_slots[0].reg_slice_mi_n_72\,
      \chosen_reg[0]_3\ => \gen_master_slots[1].reg_slice_mi_n_80\,
      \chosen_reg[0]_4\(0) => \m_rvalid_qual__1\(1),
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1_4\,
      \gen_multi_thread.any_pop__1_1\ => \gen_multi_thread.any_pop__1\,
      \gen_multi_thread.resp_select\ => \gen_multi_thread.resp_select_8\,
      \gen_multi_thread.resp_select_5\ => \gen_multi_thread.resp_select_7\,
      \gen_multi_thread.resp_select_6\ => \gen_multi_thread.resp_select_6\,
      \gen_multi_thread.resp_select_9\ => \gen_multi_thread.resp_select\,
      \last_rr_hot_reg[0]\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1\,
      \last_rr_hot_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1\,
      \last_rr_hot_reg[0]_1\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1\,
      \last_rr_hot_reg[0]_2\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[36]\ => \gen_master_slots[0].reg_slice_mi_n_61\,
      \m_payload_i_reg[36]_0\ => \gen_master_slots[0].reg_slice_mi_n_62\,
      \m_payload_i_reg[36]_1\ => \gen_master_slots[0].reg_slice_mi_n_67\,
      \m_payload_i_reg[36]_2\ => \gen_master_slots[0].reg_slice_mi_n_68\,
      \m_payload_i_reg[3]\ => \gen_master_slots[0].reg_slice_mi_n_64\,
      \m_payload_i_reg[3]_0\ => \gen_master_slots[0].reg_slice_mi_n_65\,
      \m_payload_i_reg[3]_1\ => \gen_master_slots[0].reg_slice_mi_n_70\,
      \m_payload_i_reg[3]_2\ => \gen_master_slots[0].reg_slice_mi_n_71\,
      \m_payload_i_reg[4]\(4) => st_mr_bmesg(2),
      \m_payload_i_reg[4]\(3 downto 2) => st_mr_bid(1 downto 0),
      \m_payload_i_reg[4]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      m_valid_i_reg => \^m_valid_i_reg\,
      m_valid_i_reg_0 => \^m_valid_i_reg_0\,
      need_arbitration => \gen_multi_thread.arbiter_resp_inst/need_arbitration_3\,
      need_arbitration_0 => \gen_multi_thread.arbiter_resp_inst/need_arbitration_2\,
      need_arbitration_2 => \gen_multi_thread.arbiter_resp_inst/need_arbitration_1\,
      need_arbitration_3 => \gen_multi_thread.arbiter_resp_inst/need_arbitration\,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in\,
      p_2_in_10 => \gen_multi_thread.arbiter_resp_inst/p_2_in_11\,
      p_2_in_11 => \gen_multi_thread.arbiter_resp_inst/p_2_in_14\,
      p_2_in_12 => \gen_multi_thread.arbiter_resp_inst/p_2_in_16\,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bvalid(1 downto 0) => \^s_axi_bvalid\(1 downto 0),
      \s_axi_bvalid[1]\(0) => st_mr_bvalid(1),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      \s_axi_rvalid[1]\(0) => st_mr_rvalid(1),
      s_ready_i_reg => M_AXI_RREADY(0),
      s_ready_i_reg_0 => \gen_master_slots[1].reg_slice_mi_n_5\,
      st_mr_bid(0) => st_mr_bid(3),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      st_mr_rid(0) => st_mr_rid(3),
      st_mr_rlast(0) => st_mr_rlast(1),
      st_mr_rvalid(0) => st_mr_rvalid(0)
    );
\gen_master_slots[1].gen_mi_write.wdata_mux_w\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_20_wdata_mux__parameterized0\
     port map (
      D(1) => addr_arbiter_aw_n_68,
      D(0) => addr_arbiter_aw_n_69,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      SR(0) => reset,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(1),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \m_aready1__0\(0) => \m_aready1__0_5\(1),
      \m_aready1__0_0\(0) => \m_aready1__0\(1),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d_19(0),
      m_select_enc => m_select_enc,
      m_select_enc_1 => m_select_enc_12,
      m_select_enc_2 => m_select_enc_18,
      p_10_in => p_10_in,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(1),
      \storage_data1_reg[0]\ => addr_arbiter_aw_n_70,
      \storage_data1_reg[0]_0\ => \gen_decerr_slave.decerr_slave_inst_n_10\,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\gen_master_slots[1].r_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_71,
      Q => r_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].reg_slice_mi\: entity work.design_1_xbar_0_axi_register_slice_v2_1_19_axi_register_slice_1
     port map (
      Q(37) => st_mr_rmesg(2),
      Q(36 downto 35) => st_mr_rid(1 downto 0),
      Q(34) => st_mr_rlast(0),
      Q(33 downto 32) => st_mr_rmesg(1 downto 0),
      Q(31 downto 0) => st_mr_rmesg(34 downto 3),
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_5\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_60\,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1),
      chosen_3(0) => \gen_multi_thread.arbiter_resp_inst/chosen_10\(1),
      chosen_4(0) => \gen_multi_thread.arbiter_resp_inst/chosen_13\(1),
      chosen_5(0) => \gen_multi_thread.arbiter_resp_inst/chosen_15\(1),
      \chosen_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_103\,
      \chosen_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_104\,
      \chosen_reg[1]_1\ => \gen_master_slots[1].reg_slice_mi_n_105\,
      \chosen_reg[1]_2\ => \gen_master_slots[1].reg_slice_mi_n_106\,
      \chosen_reg[1]_3\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1\,
      \chosen_reg[1]_4\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1\,
      \chosen_reg[1]_5\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1\,
      \chosen_reg[1]_6\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1\,
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => \gen_master_slots[1].reg_slice_mi_n_8\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => \gen_master_slots[1].reg_slice_mi_n_6\,
      \gen_multi_thread.resp_select\ => \gen_multi_thread.resp_select_8\,
      \gen_multi_thread.resp_select_0\ => \gen_multi_thread.resp_select_7\,
      \gen_multi_thread.resp_select_1\ => \gen_multi_thread.resp_select_6\,
      \gen_multi_thread.resp_select_2\ => \gen_multi_thread.resp_select\,
      \m_payload_i_reg[2]\ => \^m_payload_i_reg[2]\,
      \m_payload_i_reg[2]_0\ => \^m_payload_i_reg[2]_0\,
      \m_payload_i_reg[35]\ => \^m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_0\ => \^m_payload_i_reg[35]_0\,
      \m_payload_i_reg[36]\(0) => st_mr_rid(3),
      \m_payload_i_reg[3]\(0) => st_mr_bid(3),
      m_valid_i_reg(0) => st_mr_bvalid(1),
      m_valid_i_reg_0(0) => st_mr_rvalid(1),
      m_valid_i_reg_1 => \gen_master_slots[1].reg_slice_mi_n_80\,
      m_valid_i_reg_2 => \gen_master_slots[1].reg_slice_mi_n_82\,
      m_valid_i_reg_3 => \gen_master_slots[1].reg_slice_mi_n_97\,
      m_valid_i_reg_4(0) => \m_rvalid_qual__1\(1),
      mi_bready_1 => mi_bready_1,
      mi_rready_1 => mi_rready_1,
      need_arbitration => \gen_multi_thread.arbiter_resp_inst/need_arbitration_3\,
      need_arbitration_10 => \gen_multi_thread.arbiter_resp_inst/need_arbitration_1\,
      need_arbitration_11 => \gen_multi_thread.arbiter_resp_inst/need_arbitration\,
      need_arbitration_9 => \gen_multi_thread.arbiter_resp_inst/need_arbitration_2\,
      p_0_in => p_0_in,
      p_11_in => p_11_in,
      p_13_in => p_13_in,
      p_16_in(1 downto 0) => p_16_in(1 downto 0),
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in\,
      p_2_in_6 => \gen_multi_thread.arbiter_resp_inst/p_2_in_11\,
      p_2_in_7 => \gen_multi_thread.arbiter_resp_inst/p_2_in_14\,
      p_2_in_8 => \gen_multi_thread.arbiter_resp_inst/p_2_in_16\,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(0) => r_issuing_cnt(8),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => s_axi_buser(1 downto 0),
      \s_axi_buser[1]\(4) => st_mr_bmesg(2),
      \s_axi_buser[1]\(3 downto 2) => st_mr_bid(1 downto 0),
      \s_axi_buser[1]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rlast(1 downto 0) => \^s_axi_rlast\(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => s_axi_ruser(1 downto 0),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      st_mr_rlast(0) => st_mr_rlast(1),
      st_mr_rvalid(0) => st_mr_rvalid(0),
      \w_cmd_pop_1__0\ => \w_cmd_pop_1__0\,
      w_issuing_cnt(0) => w_issuing_cnt(8)
    );
\gen_master_slots[1].w_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_74,
      Q => w_issuing_cnt(8),
      R => reset
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor
     port map (
      D(0) => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\,
      SR(0) => reset,
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1 downto 0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_63\,
      \chosen_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_103\,
      f_hot2enc_return => f_hot2enc_return,
      \gen_arbiter.any_grant_reg\ => addr_arbiter_ar_n_66,
      \gen_arbiter.any_grant_reg_0\ => \gen_master_slots[1].reg_slice_mi_n_8\,
      \gen_arbiter.last_rr_hot_reg[1]\ => \^m_valid_i_reg\,
      \gen_arbiter.last_rr_hot_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_82\,
      \gen_multi_thread.accept_cnt_reg[1]_0\(0) => st_aa_arvalid_qual(0),
      \gen_multi_thread.active_cnt_reg[0]_0\ => \^m_payload_i_reg[35]\,
      \gen_multi_thread.active_id_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[0]\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1_4\,
      grant_hot0 => grant_hot0,
      \last_rr_hot_reg[0]\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1\,
      \last_rr_hot_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_62\,
      \last_rr_hot_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_61\,
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in\,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(0) => r_issuing_cnt(8),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      s_axi_rready(0) => s_axi_rready(0),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(1)
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized0\
     port map (
      SR(0) => reset,
      access_done => access_done,
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_10\(1 downto 0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_66\,
      \chosen_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_104\,
      f_hot2enc_return => f_hot2enc_return_0,
      \gen_arbiter.any_grant_reg\ => addr_arbiter_aw_n_67,
      \gen_arbiter.any_grant_reg_0\ => \gen_master_slots[1].reg_slice_mi_n_6\,
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[0]_0\,
      \gen_multi_thread.active_cnt_reg[0]_0\ => \^m_payload_i_reg[2]\,
      grant_hot0 => grant_hot0_9,
      \last_rr_hot_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1\,
      \last_rr_hot_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_65\,
      \last_rr_hot_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_64\,
      m_ready_d(0) => m_ready_d(0),
      \m_ready_d_reg[0]\(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in_11\,
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      \s_axi_bready[0]\(0) => st_aa_awvalid_qual(0),
      s_axi_bvalid(0) => \^s_axi_bvalid\(0),
      st_aa_awvalid_qual(0) => st_aa_awvalid_qual(1),
      \w_cmd_pop_1__0\ => \w_cmd_pop_1__0\,
      w_issuing_cnt(0) => w_issuing_cnt(8)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_splitter
     port map (
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.s_ready_i_reg[0]\ => \^gen_arbiter.s_ready_i_reg[0]_0\,
      m_ready_d(1 downto 0) => m_ready_d(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      ss_aa_awready(0) => ss_aa_awready(0),
      ss_aa_awvalid(0) => ss_aa_awvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router
     port map (
      SR(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      \m_aready1__0\(0) => \m_aready1__0_5\(1),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(1),
      m_select_enc => m_select_enc_12,
      m_select_enc_0 => m_select_enc,
      p_10_in => p_10_in,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      \storage_data1[0]_i_4\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\gen_slave_slots[1].gen_si_read.si_transactor_ar\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized1\
     port map (
      D(0) => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\,
      SR(0) => reset,
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_13\(1 downto 0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_69\,
      \chosen_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_105\,
      \gen_arbiter.last_rr_hot_reg[1]\ => \^m_valid_i_reg_0\,
      \gen_arbiter.last_rr_hot_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_97\,
      \gen_multi_thread.active_cnt_reg[0]_0\ => \^m_payload_i_reg[35]_0\,
      \gen_multi_thread.active_id_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[1]\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      \last_rr_hot_reg[0]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1\,
      \last_rr_hot_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_68\,
      \last_rr_hot_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_67\,
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in_14\,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(0) => r_issuing_cnt(8),
      s_axi_arid(0) => s_axi_arid(1),
      s_axi_arvalid(0) => s_axi_arvalid(1),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(1)
    );
\gen_slave_slots[1].gen_si_write.si_transactor_aw\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_20_si_transactor__parameterized2\
     port map (
      SR(0) => reset,
      \access_done__0\ => \access_done__0\,
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_15\(1 downto 0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_72\,
      \chosen_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_106\,
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[1]_0\,
      \gen_multi_thread.active_cnt_reg[0]_0\ => \^m_payload_i_reg[2]_0\,
      \last_rr_hot_reg[0]\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1\,
      \last_rr_hot_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_71\,
      \last_rr_hot_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_70\,
      m_ready_d(0) => m_ready_d_17(0),
      \m_ready_d_reg[0]\(0) => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\,
      p_2_in => \gen_multi_thread.arbiter_resp_inst/p_2_in_16\,
      s_axi_awid(0) => s_axi_awid(1),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_bready(0) => s_axi_bready(1),
      s_axi_bvalid(0) => \^s_axi_bvalid\(1),
      st_aa_awvalid_qual(0) => st_aa_awvalid_qual(1),
      \w_cmd_pop_1__0\ => \w_cmd_pop_1__0\,
      w_issuing_cnt(0) => w_issuing_cnt(8)
    );
\gen_slave_slots[1].gen_si_write.splitter_aw_si\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_splitter_2
     port map (
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.s_ready_i_reg[1]\ => \^gen_arbiter.s_ready_i_reg[1]_0\,
      m_ready_d(1 downto 0) => m_ready_d_17(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      ss_aa_awready(0) => ss_aa_awready(1),
      ss_aa_awvalid(0) => ss_aa_awvalid(1),
      ss_wr_awready_1 => ss_wr_awready_1
    );
\gen_slave_slots[1].gen_si_write.wdata_router_w\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_wdata_router_3
     port map (
      SR(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \m_aready1__0\(0) => \m_aready1__0\(1),
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d_17(1),
      m_select_enc => m_select_enc_18,
      m_select_enc_0 => m_select_enc,
      p_10_in => p_10_in,
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_wlast(0) => s_axi_wlast(1),
      s_axi_wready(0) => s_axi_wready(1),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      \storage_data1_reg[0]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\
    );
splitter_aw_mi: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_splitter_4
     port map (
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(1),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_ready_d(1 downto 0) => m_ready_d_19(1 downto 0),
      \m_ready_d_reg[0]_0\ => splitter_aw_mi_n_0,
      mi_awready(0) => mi_awready(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 0;
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 3;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 8;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 3;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 8;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000000100000000000000000000000000000001";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "axi_crossbar_v2_1_20_axi_crossbar";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "1'b1";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000001";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "2'b11";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar : entity is "2'b11";
end design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_wuser\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wlast\(1 downto 0) <= s_axi_wlast(1 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wuser\(0) <= s_axi_wuser(0);
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arvalid(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awvalid(0) <= \<const0>\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast(0) <= \^s_axi_wlast\(0);
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \^s_axi_wuser\(0);
  m_axi_wvalid(0) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \^s_axi_bid\(2);
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \^s_axi_rid\(2);
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_crossbar
     port map (
      D(4) => m_axi_buser(0),
      D(3 downto 2) => m_axi_bid(1 downto 0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      M_AXI_RREADY(0) => m_axi_rready(0),
      Q(59) => m_axi_awuser(0),
      Q(58 downto 55) => m_axi_awqos(3 downto 0),
      Q(54 downto 51) => m_axi_awcache(3 downto 0),
      Q(50 downto 49) => m_axi_awburst(1 downto 0),
      Q(48 downto 46) => m_axi_awprot(2 downto 0),
      Q(45) => m_axi_awlock(0),
      Q(44 downto 42) => m_axi_awsize(2 downto 0),
      Q(41 downto 34) => m_axi_awlen(7 downto 0),
      Q(33 downto 2) => m_axi_awaddr(31 downto 0),
      Q(1 downto 0) => m_axi_awid(1 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \gen_arbiter.m_mesg_i_reg[64]\(59) => m_axi_aruser(0),
      \gen_arbiter.m_mesg_i_reg[64]\(58 downto 55) => m_axi_arqos(3 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(54 downto 51) => m_axi_arcache(3 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(50 downto 49) => m_axi_arburst(1 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(48 downto 46) => m_axi_arprot(2 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(45) => m_axi_arlock(0),
      \gen_arbiter.m_mesg_i_reg[64]\(44 downto 42) => m_axi_arsize(2 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(41 downto 34) => m_axi_arlen(7 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(33 downto 2) => m_axi_araddr(31 downto 0),
      \gen_arbiter.m_mesg_i_reg[64]\(1 downto 0) => m_axi_arid(1 downto 0),
      \gen_arbiter.s_ready_i_reg[0]\ => s_axi_arready(0),
      \gen_arbiter.s_ready_i_reg[0]_0\ => s_axi_awready(0),
      \gen_arbiter.s_ready_i_reg[1]\ => s_axi_arready(1),
      \gen_arbiter.s_ready_i_reg[1]_0\ => s_axi_awready(1),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[2]\ => \^s_axi_bid\(0),
      \m_payload_i_reg[2]_0\ => \^s_axi_bid\(2),
      \m_payload_i_reg[35]\ => \^s_axi_rid\(0),
      \m_payload_i_reg[35]_0\ => \^s_axi_rid\(2),
      m_valid_i_reg => s_axi_rvalid(0),
      m_valid_i_reg_0 => s_axi_rvalid(1),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arid(1) => s_axi_arid(2),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_aruser(1 downto 0) => s_axi_aruser(1 downto 0),
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awid(1) => s_axi_awid(2),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awuser(1 downto 0) => s_axi_awuser(1 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => s_axi_buser(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => s_axi_ruser(1 downto 0),
      s_axi_wlast(1 downto 0) => \^s_axi_wlast\(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xbar_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xbar_0 : entity is "design_1_xbar_0,axi_crossbar_v2_1_20_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xbar_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xbar_0 : entity is "axi_crossbar_v2_1_20_axi_crossbar,Vivado 2019.1.3";
end design_1_xbar_0;

architecture STRUCTURE of design_1_xbar_0 is
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 0;
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is 3;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of inst : label is 8;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of inst : label is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is 3;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is 8;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is "64'b0000000000000000000000000000000100000000000000000000000000000001";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "1'b1";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000001";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "2'b11";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_CLK, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_buser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BUSER";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARUSER [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWUSER [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_buser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BUSER [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BUSER [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RUSER [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RUSER [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WUSER [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WUSER [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]";
begin
inst: entity work.design_1_xbar_0_axi_crossbar_v2_1_20_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(1 downto 0) => m_axi_arid(1 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => m_axi_aruser(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(1 downto 0) => m_axi_awid(1 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => m_axi_awuser(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_axi_bid(1 downto 0) => m_axi_bid(1 downto 0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => m_axi_buser(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rready(0) => m_axi_rready(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(1 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(1 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => m_axi_wuser(0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arready(1 downto 0) => s_axi_arready(1 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_aruser(1 downto 0) => s_axi_aruser(1 downto 0),
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awready(1 downto 0) => s_axi_awready(1 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awuser(1 downto 0) => s_axi_awuser(1 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => s_axi_buser(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => s_axi_ruser(1 downto 0),
      s_axi_rvalid(1 downto 0) => s_axi_rvalid(1 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(1 downto 0) => s_axi_wuser(1 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0)
    );
end STRUCTURE;
