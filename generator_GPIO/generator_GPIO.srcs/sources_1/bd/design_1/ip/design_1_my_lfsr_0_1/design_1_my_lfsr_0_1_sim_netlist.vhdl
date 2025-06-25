-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Jun 19 14:09:37 2025
-- Host        : Anexy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/fors2/generator_GPIO/generator_GPIO.srcs/sources_1/bd/design_1/ip/design_1_my_lfsr_0_1/design_1_my_lfsr_0_1_sim_netlist.vhdl
-- Design      : design_1_my_lfsr_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_lfsr_0_1_LFSR9 is
  port (
    \up_Qout_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \up_INIT_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_SEED_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_lfsr_0_1_LFSR9 : entity is "LFSR9";
end design_1_my_lfsr_0_1_LFSR9;

architecture STRUCTURE of design_1_my_lfsr_0_1_LFSR9 is
  signal ImpGo : STD_LOGIC;
  signal ImpGo0 : STD_LOGIC;
  signal Q0 : STD_LOGIC;
  signal Q1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \sreg[0]_i_1_n_0\ : STD_LOGIC;
  signal t : STD_LOGIC;
  signal t_i_1_n_0 : STD_LOGIC;
  signal \^up_qout_reg[8]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sreg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sreg[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sreg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sreg[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sreg[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sreg[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sreg[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sreg[8]_i_1\ : label is "soft_lutpair5";
begin
  \up_Qout_reg[8]\(8 downto 0) <= \^up_qout_reg[8]\(8 downto 0);
ImpGo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q0,
      I1 => Q1,
      O => ImpGo0
    );
ImpGo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ImpGo0,
      Q => ImpGo,
      R => '0'
    );
Q0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => Q0,
      R => '0'
    );
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q0,
      Q => Q1,
      R => '0'
    );
\sreg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \up_INIT_reg[0]\(0),
      I1 => ImpGo,
      I2 => t,
      O => \sreg[0]_i_1_n_0\
    );
\sreg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC33C"
    )
        port map (
      I0 => \up_SEED_reg[8]\(8),
      I1 => \^up_qout_reg[8]\(5),
      I2 => \^up_qout_reg[8]\(0),
      I3 => \^up_qout_reg[8]\(6),
      I4 => \up_INIT_reg[0]\(0),
      O => p_1_in(8)
    );
\sreg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(7),
      I1 => \^up_qout_reg[8]\(8),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(7)
    );
\sreg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(6),
      I1 => \^up_qout_reg[8]\(7),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(6)
    );
\sreg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(5),
      I1 => \^up_qout_reg[8]\(6),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(5)
    );
\sreg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(4),
      I1 => \^up_qout_reg[8]\(5),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(4)
    );
\sreg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(3),
      I1 => \^up_qout_reg[8]\(4),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(3)
    );
\sreg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(2),
      I1 => \^up_qout_reg[8]\(3),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(2)
    );
\sreg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(1),
      I1 => \^up_qout_reg[8]\(2),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(1)
    );
\sreg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \up_SEED_reg[8]\(0),
      I1 => \^up_qout_reg[8]\(1),
      I2 => \up_INIT_reg[0]\(0),
      O => p_1_in(0)
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^up_qout_reg[8]\(8),
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^up_qout_reg[8]\(7),
      R => '0'
    );
\sreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^up_qout_reg[8]\(6),
      R => '0'
    );
\sreg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^up_qout_reg[8]\(5),
      R => '0'
    );
\sreg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^up_qout_reg[8]\(4),
      R => '0'
    );
\sreg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^up_qout_reg[8]\(3),
      R => '0'
    );
\sreg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^up_qout_reg[8]\(2),
      R => '0'
    );
\sreg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^up_qout_reg[8]\(1),
      R => '0'
    );
\sreg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \sreg[0]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^up_qout_reg[8]\(0),
      R => '0'
    );
t_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => ImpGo,
      I1 => \up_INIT_reg[0]\(0),
      I2 => t,
      O => t_i_1_n_0
    );
t_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => t_i_1_n_0,
      Q => t,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_lfsr_0_1_up_axi is
  port (
    up_axi_arready_int_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    up_wreq_s : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    up_rreq_s : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_INIT_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    up_resetn_reg_inv : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_INIT_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_GO_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_SEED_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_Qout_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \up_GO_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_INIT_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    up_rack : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    up_wack : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_lfsr_0_1_up_axi : entity is "up_axi";
end design_1_my_lfsr_0_1_up_axi;

architecture STRUCTURE of design_1_my_lfsr_0_1_up_axi is
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \up_GO[31]_i_2_n_0\ : STD_LOGIC;
  signal \^up_init_reg[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_axi_arready_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal \^up_axi_arready_int_reg_0\ : STD_LOGIC;
  signal up_axi_awready_int_i_2_n_0 : STD_LOGIC;
  signal up_axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal \up_axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal up_axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_wready_int_i_1_n_0 : STD_LOGIC;
  signal up_rack_d : STD_LOGIC;
  signal up_rack_s : STD_LOGIC;
  signal up_raddr_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \up_rcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \up_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal up_rdata_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \up_rdata_d[13]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[17]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[20]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[22]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[24]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[29]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[8]_i_1_n_0\ : STD_LOGIC;
  signal up_rdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rreq_int_i_1_n_0 : STD_LOGIC;
  signal \^up_rreq_s\ : STD_LOGIC;
  signal up_rsel_i_1_n_0 : STD_LOGIC;
  signal up_rsel_reg_n_0 : STD_LOGIC;
  signal up_wack_d : STD_LOGIC;
  signal up_wack_s : STD_LOGIC;
  signal up_waddr_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \up_wcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[3]\ : STD_LOGIC;
  signal up_wreq_int_i_1_n_0 : STD_LOGIC;
  signal \^up_wreq_s\ : STD_LOGIC;
  signal up_wsel_i_1_n_0 : STD_LOGIC;
  signal up_wsel_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_INIT[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up_SEED[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of up_axi_awready_int_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of up_axi_wready_int_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_rcount[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rcount[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_wcount[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \up_wcount[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of up_wreq_int_i_1 : label is "soft_lutpair3";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  \up_INIT_reg[31]\(31 downto 0) <= \^up_init_reg[31]\(31 downto 0);
  up_axi_arready_int_reg_0 <= \^up_axi_arready_int_reg_0\;
  up_rreq_s <= \^up_rreq_s\;
  up_wreq_s <= \^up_wreq_s\;
\up_GO[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => up_waddr_s(0),
      I1 => \up_GO[31]_i_2_n_0\,
      I2 => up_waddr_s(5),
      I3 => up_waddr_s(2),
      I4 => up_waddr_s(1),
      O => \up_GO_reg[0]\(0)
    );
\up_GO[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => up_waddr_s(3),
      I1 => up_waddr_s(4),
      I2 => up_waddr_s(6),
      I3 => up_waddr_s(7),
      I4 => \^up_wreq_s\,
      O => \up_GO[31]_i_2_n_0\
    );
\up_INIT[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \up_GO[31]_i_2_n_0\,
      I1 => up_waddr_s(5),
      I2 => up_waddr_s(2),
      I3 => up_waddr_s(1),
      I4 => up_waddr_s(0),
      O => \up_INIT_reg[0]\(0)
    );
\up_SEED[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => up_waddr_s(2),
      I1 => up_waddr_s(5),
      I2 => up_waddr_s(0),
      I3 => up_waddr_s(1),
      I4 => \up_GO[31]_i_2_n_0\,
      O => E(0)
    );
up_axi_arready_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => up_axi_arready_int_i_2_n_0,
      I2 => p_0_in6_in,
      I3 => up_rack,
      O => up_axi_arready_int_i_1_n_0
    );
up_axi_arready_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      O => up_axi_arready_int_i_2_n_0
    );
up_axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_arready_int_i_1_n_0,
      Q => \^s_axi_arready\,
      R => \^up_axi_arready_int_reg_0\
    );
up_axi_awready_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^up_axi_arready_int_reg_0\
    );
up_axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => up_wack_s,
      O => up_axi_awready_int_i_2_n_0
    );
up_axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_awready_int_i_2_n_0,
      Q => \^s_axi_awready\,
      R => \^up_axi_arready_int_reg_0\
    );
up_axi_bvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_wack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => up_axi_bvalid_int_i_1_n_0
    );
up_axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\up_axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(0),
      Q => s_axi_rdata(0),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(10),
      Q => s_axi_rdata(10),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(11),
      Q => s_axi_rdata(11),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(12),
      Q => s_axi_rdata(12),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(13),
      Q => s_axi_rdata(13),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(14),
      Q => s_axi_rdata(14),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(15),
      Q => s_axi_rdata(15),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(16),
      Q => s_axi_rdata(16),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(17),
      Q => s_axi_rdata(17),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(18),
      Q => s_axi_rdata(18),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(19),
      Q => s_axi_rdata(19),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(1),
      Q => s_axi_rdata(1),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(20),
      Q => s_axi_rdata(20),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(21),
      Q => s_axi_rdata(21),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(22),
      Q => s_axi_rdata(22),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(23),
      Q => s_axi_rdata(23),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(24),
      Q => s_axi_rdata(24),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(25),
      Q => s_axi_rdata(25),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(26),
      Q => s_axi_rdata(26),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(27),
      Q => s_axi_rdata(27),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(28),
      Q => s_axi_rdata(28),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(29),
      Q => s_axi_rdata(29),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(2),
      Q => s_axi_rdata(2),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(30),
      Q => s_axi_rdata(30),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(31),
      Q => s_axi_rdata(31),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(3),
      Q => s_axi_rdata(3),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(4),
      Q => s_axi_rdata(4),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(5),
      Q => s_axi_rdata(5),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(6),
      Q => s_axi_rdata(6),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(7),
      Q => s_axi_rdata(7),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(8),
      Q => s_axi_rdata(8),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(9),
      Q => s_axi_rdata(9),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
up_axi_rvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_rack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => up_axi_rvalid_int_i_1_n_0
    );
up_axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_rvalid_int_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
up_axi_wready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => up_wack_s,
      O => up_axi_wready_int_i_1_n_0
    );
up_axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_wready_int_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \^up_axi_arready_int_reg_0\
    );
up_rack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0A0A0A0A0A0A0"
    )
        port map (
      I0 => up_rack,
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rack_s
    );
up_rack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rack_s,
      Q => up_rack_d,
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_rsel_reg_n_0,
      O => p_1_in
    );
\up_raddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(0),
      Q => up_raddr_int(0),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(1),
      Q => up_raddr_int(1),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(2),
      Q => up_raddr_int(2),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(3),
      Q => up_raddr_int(3),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(4),
      Q => up_raddr_int(4),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(5),
      Q => up_raddr_int(5),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(6),
      Q => up_raddr_int(6),
      R => \^up_axi_arready_int_reg_0\
    );
\up_raddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(7),
      Q => up_raddr_int(7),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[0]\,
      I1 => p_0_in6_in,
      I2 => up_rack,
      O => \up_rcount[0]_i_1_n_0\
    );
\up_rcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => up_rack,
      O => \up_rcount[1]_i_1_n_0\
    );
\up_rcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007080"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[2]\,
      I4 => up_rack,
      O => \up_rcount[2]_i_1_n_0\
    );
\up_rcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[3]_i_1_n_0\
    );
\up_rcount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => up_axi_arready_int_i_2_n_0,
      I1 => \^up_rreq_s\,
      I2 => p_0_in6_in,
      O => \up_rcount[4]_i_1_n_0\
    );
\up_rcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF7FFFFFFF"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[4]_i_2_n_0\
    );
\up_rcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[0]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[0]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_rcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[1]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[1]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_rcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[2]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[2]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_rcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[3]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[3]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_rcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[4]_i_2_n_0\,
      Q => p_0_in6_in,
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF910091"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => up_raddr_int(1),
      I2 => \up_SEED_reg[31]\(0),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[0]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(0)
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(0),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(0),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(0),
      O => \up_rdata[0]_i_2_n_0\
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[10]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(10)
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(10),
      I1 => \up_GO_reg[31]\(10),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(10),
      O => \up_rdata[10]_i_2_n_0\
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[11]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(11)
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(11),
      I1 => \up_GO_reg[31]\(11),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(11),
      I5 => up_raddr_int(0),
      O => \up_rdata[11]_i_2_n_0\
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[12]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(12)
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(12),
      I1 => \up_GO_reg[31]\(12),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(12),
      O => \up_rdata[12]_i_2_n_0\
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[13]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(13)
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(13),
      I1 => \up_GO_reg[31]\(13),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(13),
      I5 => up_raddr_int(0),
      O => \up_rdata[13]_i_2_n_0\
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[14]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(14),
      I1 => \up_GO_reg[31]\(14),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(14),
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[15]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(15)
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(15),
      I1 => \up_GO_reg[31]\(15),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(15),
      I5 => up_raddr_int(0),
      O => \up_rdata[15]_i_2_n_0\
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[16]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(16)
    );
\up_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(16),
      I1 => \up_GO_reg[31]\(16),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(16),
      I5 => up_raddr_int(0),
      O => \up_rdata[16]_i_2_n_0\
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[17]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(17)
    );
\up_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(17),
      I1 => \up_GO_reg[31]\(17),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(17),
      O => \up_rdata[17]_i_2_n_0\
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[18]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(18)
    );
\up_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(18),
      I1 => \up_GO_reg[31]\(18),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(18),
      O => \up_rdata[18]_i_2_n_0\
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[19]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(19)
    );
\up_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(19),
      I1 => \up_GO_reg[31]\(19),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(19),
      I5 => up_raddr_int(0),
      O => \up_rdata[19]_i_2_n_0\
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_SEED_reg[31]\(1),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[1]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(1)
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(1),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(1),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(1),
      O => \up_rdata[1]_i_2_n_0\
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[20]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(20)
    );
\up_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(20),
      I1 => \up_GO_reg[31]\(20),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(20),
      I5 => up_raddr_int(0),
      O => \up_rdata[20]_i_2_n_0\
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[21]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(21)
    );
\up_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(21),
      I1 => \up_GO_reg[31]\(21),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(21),
      I5 => up_raddr_int(0),
      O => \up_rdata[21]_i_2_n_0\
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[22]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(22)
    );
\up_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(22),
      I1 => \up_GO_reg[31]\(22),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(22),
      O => \up_rdata[22]_i_2_n_0\
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[23]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(23)
    );
\up_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(23),
      I1 => \up_GO_reg[31]\(23),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(23),
      I5 => up_raddr_int(0),
      O => \up_rdata[23]_i_2_n_0\
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[24]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(24)
    );
\up_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(24),
      I1 => \up_GO_reg[31]\(24),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(24),
      O => \up_rdata[24]_i_2_n_0\
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[25]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(25)
    );
\up_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(25),
      I1 => \up_GO_reg[31]\(25),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(25),
      O => \up_rdata[25]_i_2_n_0\
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[26]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(26)
    );
\up_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(26),
      I1 => \up_GO_reg[31]\(26),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(26),
      O => \up_rdata[26]_i_2_n_0\
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(27)
    );
\up_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(27),
      I1 => \up_GO_reg[31]\(27),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(27),
      I5 => up_raddr_int(0),
      O => \up_rdata[27]_i_2_n_0\
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[28]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(28)
    );
\up_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(28),
      I1 => \up_GO_reg[31]\(28),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(28),
      I5 => up_raddr_int(0),
      O => \up_rdata[28]_i_2_n_0\
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[29]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(29)
    );
\up_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(29),
      I1 => \up_GO_reg[31]\(29),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(29),
      I5 => up_raddr_int(0),
      O => \up_rdata[29]_i_2_n_0\
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_SEED_reg[31]\(2),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[2]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(2),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(2),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(2),
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(30)
    );
\up_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FA000C00FA0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(30),
      I1 => \up_GO_reg[31]\(30),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]\(30),
      O => \up_rdata[30]_i_2_n_0\
    );
\up_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^up_rreq_s\,
      O => SR(0)
    );
\up_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(31)
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(31),
      I1 => \up_GO_reg[31]\(31),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(31),
      I5 => up_raddr_int(0),
      O => \up_rdata[31]_i_3_n_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_SEED_reg[31]\(3),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[3]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(3)
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(3),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(3),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(3),
      O => \up_rdata[3]_i_2_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB000B0"
    )
        port map (
      I0 => \up_SEED_reg[31]\(4),
      I1 => up_raddr_int(0),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[4]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(4),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(4),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(4),
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_SEED_reg[31]\(5),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[5]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(5),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(5),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(5),
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB000B0"
    )
        port map (
      I0 => \up_SEED_reg[31]\(6),
      I1 => up_raddr_int(0),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[6]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(6),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(6),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(6),
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_SEED_reg[31]\(7),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[7]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(7)
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(7),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(7),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(7),
      O => \up_rdata[7]_i_2_n_0\
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB000B0"
    )
        port map (
      I0 => \up_SEED_reg[31]\(8),
      I1 => up_raddr_int(0),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[8]_i_2_n_0\,
      I5 => \up_rdata[8]_i_3_n_0\,
      O => D(8)
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \up_Qout_reg[8]\(8),
      I1 => up_raddr_int(1),
      I2 => \up_GO_reg[31]\(8),
      I3 => up_raddr_int(0),
      I4 => \up_INIT_reg[31]_0\(8),
      O => \up_rdata[8]_i_2_n_0\
    );
\up_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => up_raddr_int(7),
      I1 => up_raddr_int(4),
      I2 => up_raddr_int(3),
      I3 => up_raddr_int(6),
      I4 => up_raddr_int(5),
      O => \up_rdata[8]_i_3_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \up_rdata[9]_i_2_n_0\,
      I1 => up_raddr_int(5),
      I2 => up_raddr_int(6),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      I5 => up_raddr_int(7),
      O => D(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC000C000A000A0"
    )
        port map (
      I0 => \up_INIT_reg[31]_0\(9),
      I1 => \up_GO_reg[31]\(9),
      I2 => up_raddr_int(2),
      I3 => up_raddr_int(1),
      I4 => \up_SEED_reg[31]\(9),
      I5 => up_raddr_int(0),
      O => \up_rdata[9]_i_2_n_0\
    );
\up_rdata_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(0)
    );
\up_rdata_d[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(10),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(10)
    );
\up_rdata_d[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(11),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(11)
    );
\up_rdata_d[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(12),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(12)
    );
\up_rdata_d[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(13),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[13]_i_1_n_0\
    );
\up_rdata_d[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(14),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(14)
    );
\up_rdata_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(15),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(15)
    );
\up_rdata_d[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(16),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(16)
    );
\up_rdata_d[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(17),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[17]_i_1_n_0\
    );
\up_rdata_d[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(18),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(18)
    );
\up_rdata_d[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(19),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(19)
    );
\up_rdata_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[1]_i_1_n_0\
    );
\up_rdata_d[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(20),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[20]_i_1_n_0\
    );
\up_rdata_d[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(21),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(21)
    );
\up_rdata_d[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(22),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[22]_i_1_n_0\
    );
\up_rdata_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(23),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(23)
    );
\up_rdata_d[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(24),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[24]_i_1_n_0\
    );
\up_rdata_d[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(25),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(25)
    );
\up_rdata_d[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(26),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(26)
    );
\up_rdata_d[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(27),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(27)
    );
\up_rdata_d[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(28),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(28)
    );
\up_rdata_d[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(29),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(2)
    );
\up_rdata_d[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(30),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(30)
    );
\up_rdata_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(31),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(31)
    );
\up_rdata_d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(3)
    );
\up_rdata_d[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[4]_i_1_n_0\
    );
\up_rdata_d[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(5)
    );
\up_rdata_d[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[6]_i_1_n_0\
    );
\up_rdata_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(7),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(7)
    );
\up_rdata_d[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(8),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[8]_i_1_n_0\
    );
\up_rdata_d[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(9),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(9)
    );
\up_rdata_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(0),
      Q => up_rdata_d(0),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(10),
      Q => up_rdata_d(10),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(11),
      Q => up_rdata_d(11),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(12),
      Q => up_rdata_d(12),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[13]_i_1_n_0\,
      Q => up_rdata_d(13),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(14),
      Q => up_rdata_d(14),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(15),
      Q => up_rdata_d(15),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(16),
      Q => up_rdata_d(16),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[17]_i_1_n_0\,
      Q => up_rdata_d(17),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(18),
      Q => up_rdata_d(18),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(19),
      Q => up_rdata_d(19),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[1]_i_1_n_0\,
      Q => up_rdata_d(1),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[20]_i_1_n_0\,
      Q => up_rdata_d(20),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(21),
      Q => up_rdata_d(21),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[22]_i_1_n_0\,
      Q => up_rdata_d(22),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(23),
      Q => up_rdata_d(23),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[24]_i_1_n_0\,
      Q => up_rdata_d(24),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(25),
      Q => up_rdata_d(25),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(26),
      Q => up_rdata_d(26),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(27),
      Q => up_rdata_d(27),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(28),
      Q => up_rdata_d(28),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[29]_i_1_n_0\,
      Q => up_rdata_d(29),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(2),
      Q => up_rdata_d(2),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(30),
      Q => up_rdata_d(30),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(31),
      Q => up_rdata_d(31),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(3),
      Q => up_rdata_d(3),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[4]_i_1_n_0\,
      Q => up_rdata_d(4),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(5),
      Q => up_rdata_d(5),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[6]_i_1_n_0\,
      Q => up_rdata_d(6),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(7),
      Q => up_rdata_d(7),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[8]_i_1_n_0\,
      Q => up_rdata_d(8),
      R => \^up_axi_arready_int_reg_0\
    );
\up_rdata_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(9),
      Q => up_rdata_d(9),
      R => \^up_axi_arready_int_reg_0\
    );
up_resetn_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => up_waddr_s(0),
      I1 => up_waddr_s(1),
      I2 => up_waddr_s(2),
      I3 => up_waddr_s(5),
      I4 => \up_GO[31]_i_2_n_0\,
      I5 => \^up_init_reg[31]\(0),
      O => up_resetn_reg_inv
    );
up_rreq_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_aresetn,
      I2 => up_rsel_reg_n_0,
      O => up_rreq_int_i_1_n_0
    );
up_rreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq_int_i_1_n_0,
      Q => \^up_rreq_s\,
      R => '0'
    );
up_rsel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FAA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => up_rsel_reg_n_0,
      O => up_rsel_i_1_n_0
    );
up_rsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rsel_i_1_n_0,
      Q => up_rsel_reg_n_0,
      R => \^up_axi_arready_int_reg_0\
    );
up_wack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => up_wack,
      I5 => p_0_in7_in,
      O => up_wack_s
    );
up_wack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wack_s,
      Q => up_wack_d,
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(0),
      Q => up_waddr_s(0),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(1),
      Q => up_waddr_s(1),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(2),
      Q => up_waddr_s(2),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(3),
      Q => up_waddr_s(3),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(4),
      Q => up_waddr_s(4),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(5),
      Q => up_waddr_s(5),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(6),
      Q => up_waddr_s(6),
      R => \^up_axi_arready_int_reg_0\
    );
\up_waddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(7),
      Q => up_waddr_s(7),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => up_wack,
      I1 => p_0_in7_in,
      I2 => \up_wcount_reg_n_0_[0]\,
      O => \up_wcount[0]_i_1_n_0\
    );
\up_wcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => up_wack,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => \up_wcount_reg_n_0_[1]\,
      O => \up_wcount[1]_i_1_n_0\
    );
\up_wcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => up_wack,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => \up_wcount_reg_n_0_[1]\,
      I4 => \up_wcount_reg_n_0_[2]\,
      O => \up_wcount[2]_i_1_n_0\
    );
\up_wcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => up_wack,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => \up_wcount_reg_n_0_[1]\,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => \up_wcount_reg_n_0_[3]\,
      O => \up_wcount[3]_i_1_n_0\
    );
\up_wcount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^up_wreq_s\,
      I1 => p_0_in7_in,
      I2 => up_wack_s,
      O => \up_wcount[4]_i_1_n_0\
    );
\up_wcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFFFFFFFFFF"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => up_wack,
      I5 => p_0_in7_in,
      O => \up_wcount[4]_i_2_n_0\
    );
\up_wcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[0]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[0]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_wcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[1]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[1]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_wcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[2]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[2]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_wcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[3]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[3]\,
      R => \^up_axi_arready_int_reg_0\
    );
\up_wcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[4]_i_2_n_0\,
      Q => p_0_in7_in,
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_wsel_reg_n_0,
      O => p_5_in
    );
\up_wdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(0),
      Q => \^up_init_reg[31]\(0),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(10),
      Q => \^up_init_reg[31]\(10),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(11),
      Q => \^up_init_reg[31]\(11),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(12),
      Q => \^up_init_reg[31]\(12),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(13),
      Q => \^up_init_reg[31]\(13),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(14),
      Q => \^up_init_reg[31]\(14),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(15),
      Q => \^up_init_reg[31]\(15),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(16),
      Q => \^up_init_reg[31]\(16),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(17),
      Q => \^up_init_reg[31]\(17),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(18),
      Q => \^up_init_reg[31]\(18),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(19),
      Q => \^up_init_reg[31]\(19),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(1),
      Q => \^up_init_reg[31]\(1),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(20),
      Q => \^up_init_reg[31]\(20),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(21),
      Q => \^up_init_reg[31]\(21),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(22),
      Q => \^up_init_reg[31]\(22),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(23),
      Q => \^up_init_reg[31]\(23),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(24),
      Q => \^up_init_reg[31]\(24),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(25),
      Q => \^up_init_reg[31]\(25),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(26),
      Q => \^up_init_reg[31]\(26),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(27),
      Q => \^up_init_reg[31]\(27),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(28),
      Q => \^up_init_reg[31]\(28),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(29),
      Q => \^up_init_reg[31]\(29),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(2),
      Q => \^up_init_reg[31]\(2),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(30),
      Q => \^up_init_reg[31]\(30),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(31),
      Q => \^up_init_reg[31]\(31),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(3),
      Q => \^up_init_reg[31]\(3),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(4),
      Q => \^up_init_reg[31]\(4),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(5),
      Q => \^up_init_reg[31]\(5),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(6),
      Q => \^up_init_reg[31]\(6),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(7),
      Q => \^up_init_reg[31]\(7),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(8),
      Q => \^up_init_reg[31]\(8),
      R => \^up_axi_arready_int_reg_0\
    );
\up_wdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(9),
      Q => \^up_init_reg[31]\(9),
      R => \^up_axi_arready_int_reg_0\
    );
up_wreq_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_aresetn,
      I3 => up_wsel_reg_n_0,
      O => up_wreq_int_i_1_n_0
    );
up_wreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq_int_i_1_n_0,
      Q => \^up_wreq_s\,
      R => '0'
    );
up_wsel_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8888"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      I4 => up_wsel_reg_n_0,
      O => up_wsel_i_1_n_0
    );
up_wsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wsel_i_1_n_0,
      Q => up_wsel_reg_n_0,
      R => \^up_axi_arready_int_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_lfsr_0_1_my_lfsr_v1_0 is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_lfsr_0_1_my_lfsr_v1_0 : entity is "my_lfsr_v1_0";
end design_1_my_lfsr_0_1_my_lfsr_v1_0;

architecture STRUCTURE of design_1_my_lfsr_0_1_my_lfsr_v1_0 is
  signal i_up_axi_n_0 : STD_LOGIC;
  signal i_up_axi_n_10 : STD_LOGIC;
  signal i_up_axi_n_105 : STD_LOGIC;
  signal i_up_axi_n_106 : STD_LOGIC;
  signal i_up_axi_n_107 : STD_LOGIC;
  signal i_up_axi_n_108 : STD_LOGIC;
  signal i_up_axi_n_11 : STD_LOGIC;
  signal i_up_axi_n_12 : STD_LOGIC;
  signal i_up_axi_n_13 : STD_LOGIC;
  signal i_up_axi_n_14 : STD_LOGIC;
  signal i_up_axi_n_15 : STD_LOGIC;
  signal i_up_axi_n_16 : STD_LOGIC;
  signal i_up_axi_n_17 : STD_LOGIC;
  signal i_up_axi_n_18 : STD_LOGIC;
  signal i_up_axi_n_19 : STD_LOGIC;
  signal i_up_axi_n_20 : STD_LOGIC;
  signal i_up_axi_n_21 : STD_LOGIC;
  signal i_up_axi_n_22 : STD_LOGIC;
  signal i_up_axi_n_23 : STD_LOGIC;
  signal i_up_axi_n_24 : STD_LOGIC;
  signal i_up_axi_n_25 : STD_LOGIC;
  signal i_up_axi_n_26 : STD_LOGIC;
  signal i_up_axi_n_27 : STD_LOGIC;
  signal i_up_axi_n_28 : STD_LOGIC;
  signal i_up_axi_n_29 : STD_LOGIC;
  signal i_up_axi_n_30 : STD_LOGIC;
  signal i_up_axi_n_31 : STD_LOGIC;
  signal i_up_axi_n_32 : STD_LOGIC;
  signal i_up_axi_n_33 : STD_LOGIC;
  signal i_up_axi_n_34 : STD_LOGIC;
  signal i_up_axi_n_35 : STD_LOGIC;
  signal i_up_axi_n_36 : STD_LOGIC;
  signal i_up_axi_n_37 : STD_LOGIC;
  signal i_up_axi_n_38 : STD_LOGIC;
  signal i_up_axi_n_39 : STD_LOGIC;
  signal i_up_axi_n_40 : STD_LOGIC;
  signal i_up_axi_n_41 : STD_LOGIC;
  signal i_up_axi_n_42 : STD_LOGIC;
  signal i_up_axi_n_43 : STD_LOGIC;
  signal i_up_axi_n_44 : STD_LOGIC;
  signal i_up_axi_n_45 : STD_LOGIC;
  signal i_up_axi_n_46 : STD_LOGIC;
  signal i_up_axi_n_47 : STD_LOGIC;
  signal i_up_axi_n_48 : STD_LOGIC;
  signal i_up_axi_n_49 : STD_LOGIC;
  signal i_up_axi_n_50 : STD_LOGIC;
  signal i_up_axi_n_51 : STD_LOGIC;
  signal i_up_axi_n_52 : STD_LOGIC;
  signal i_up_axi_n_53 : STD_LOGIC;
  signal i_up_axi_n_54 : STD_LOGIC;
  signal i_up_axi_n_55 : STD_LOGIC;
  signal i_up_axi_n_56 : STD_LOGIC;
  signal i_up_axi_n_57 : STD_LOGIC;
  signal i_up_axi_n_58 : STD_LOGIC;
  signal i_up_axi_n_59 : STD_LOGIC;
  signal i_up_axi_n_60 : STD_LOGIC;
  signal i_up_axi_n_61 : STD_LOGIC;
  signal i_up_axi_n_62 : STD_LOGIC;
  signal i_up_axi_n_63 : STD_LOGIC;
  signal i_up_axi_n_64 : STD_LOGIC;
  signal i_up_axi_n_65 : STD_LOGIC;
  signal i_up_axi_n_66 : STD_LOGIC;
  signal i_up_axi_n_67 : STD_LOGIC;
  signal i_up_axi_n_68 : STD_LOGIC;
  signal i_up_axi_n_69 : STD_LOGIC;
  signal i_up_axi_n_70 : STD_LOGIC;
  signal i_up_axi_n_71 : STD_LOGIC;
  signal i_up_axi_n_8 : STD_LOGIC;
  signal i_up_axi_n_9 : STD_LOGIC;
  signal sreg : STD_LOGIC_VECTOR ( 0 to 8 );
  signal up_GO : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_INIT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \up_INIT_reg_n_0_[10]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[11]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[12]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[13]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[14]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[15]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[16]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[17]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[18]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[19]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[20]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[21]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[22]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[23]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[24]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[25]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[26]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[27]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[28]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[29]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[30]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[31]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[3]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[4]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[5]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[6]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[7]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[8]\ : STD_LOGIC;
  signal \up_INIT_reg_n_0_[9]\ : STD_LOGIC;
  signal up_Qout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal up_SEED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rack : STD_LOGIC;
  signal up_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_resetn_reg_inv_n_0 : STD_LOGIC;
  signal up_rreq_s : STD_LOGIC;
  signal up_wack : STD_LOGIC;
  signal up_wdata_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal up_wreq_s : STD_LOGIC;
begin
i_up_axi: entity work.design_1_my_lfsr_0_1_up_axi
     port map (
      D(31) => i_up_axi_n_9,
      D(30) => i_up_axi_n_10,
      D(29) => i_up_axi_n_11,
      D(28) => i_up_axi_n_12,
      D(27) => i_up_axi_n_13,
      D(26) => i_up_axi_n_14,
      D(25) => i_up_axi_n_15,
      D(24) => i_up_axi_n_16,
      D(23) => i_up_axi_n_17,
      D(22) => i_up_axi_n_18,
      D(21) => i_up_axi_n_19,
      D(20) => i_up_axi_n_20,
      D(19) => i_up_axi_n_21,
      D(18) => i_up_axi_n_22,
      D(17) => i_up_axi_n_23,
      D(16) => i_up_axi_n_24,
      D(15) => i_up_axi_n_25,
      D(14) => i_up_axi_n_26,
      D(13) => i_up_axi_n_27,
      D(12) => i_up_axi_n_28,
      D(11) => i_up_axi_n_29,
      D(10) => i_up_axi_n_30,
      D(9) => i_up_axi_n_31,
      D(8) => i_up_axi_n_32,
      D(7) => i_up_axi_n_33,
      D(6) => i_up_axi_n_34,
      D(5) => i_up_axi_n_35,
      D(4) => i_up_axi_n_36,
      D(3) => i_up_axi_n_37,
      D(2) => i_up_axi_n_38,
      D(1) => i_up_axi_n_39,
      D(0) => i_up_axi_n_40,
      E(0) => i_up_axi_n_106,
      Q(31 downto 0) => up_rdata(31 downto 0),
      SR(0) => i_up_axi_n_8,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \up_GO_reg[0]\(0) => i_up_axi_n_108,
      \up_GO_reg[31]\(31 downto 0) => up_GO(31 downto 0),
      \up_INIT_reg[0]\(0) => i_up_axi_n_107,
      \up_INIT_reg[31]\(31) => i_up_axi_n_41,
      \up_INIT_reg[31]\(30) => i_up_axi_n_42,
      \up_INIT_reg[31]\(29) => i_up_axi_n_43,
      \up_INIT_reg[31]\(28) => i_up_axi_n_44,
      \up_INIT_reg[31]\(27) => i_up_axi_n_45,
      \up_INIT_reg[31]\(26) => i_up_axi_n_46,
      \up_INIT_reg[31]\(25) => i_up_axi_n_47,
      \up_INIT_reg[31]\(24) => i_up_axi_n_48,
      \up_INIT_reg[31]\(23) => i_up_axi_n_49,
      \up_INIT_reg[31]\(22) => i_up_axi_n_50,
      \up_INIT_reg[31]\(21) => i_up_axi_n_51,
      \up_INIT_reg[31]\(20) => i_up_axi_n_52,
      \up_INIT_reg[31]\(19) => i_up_axi_n_53,
      \up_INIT_reg[31]\(18) => i_up_axi_n_54,
      \up_INIT_reg[31]\(17) => i_up_axi_n_55,
      \up_INIT_reg[31]\(16) => i_up_axi_n_56,
      \up_INIT_reg[31]\(15) => i_up_axi_n_57,
      \up_INIT_reg[31]\(14) => i_up_axi_n_58,
      \up_INIT_reg[31]\(13) => i_up_axi_n_59,
      \up_INIT_reg[31]\(12) => i_up_axi_n_60,
      \up_INIT_reg[31]\(11) => i_up_axi_n_61,
      \up_INIT_reg[31]\(10) => i_up_axi_n_62,
      \up_INIT_reg[31]\(9) => i_up_axi_n_63,
      \up_INIT_reg[31]\(8) => i_up_axi_n_64,
      \up_INIT_reg[31]\(7) => i_up_axi_n_65,
      \up_INIT_reg[31]\(6) => i_up_axi_n_66,
      \up_INIT_reg[31]\(5) => i_up_axi_n_67,
      \up_INIT_reg[31]\(4) => i_up_axi_n_68,
      \up_INIT_reg[31]\(3) => i_up_axi_n_69,
      \up_INIT_reg[31]\(2) => i_up_axi_n_70,
      \up_INIT_reg[31]\(1) => i_up_axi_n_71,
      \up_INIT_reg[31]\(0) => up_wdata_s(0),
      \up_INIT_reg[31]_0\(31) => \up_INIT_reg_n_0_[31]\,
      \up_INIT_reg[31]_0\(30) => \up_INIT_reg_n_0_[30]\,
      \up_INIT_reg[31]_0\(29) => \up_INIT_reg_n_0_[29]\,
      \up_INIT_reg[31]_0\(28) => \up_INIT_reg_n_0_[28]\,
      \up_INIT_reg[31]_0\(27) => \up_INIT_reg_n_0_[27]\,
      \up_INIT_reg[31]_0\(26) => \up_INIT_reg_n_0_[26]\,
      \up_INIT_reg[31]_0\(25) => \up_INIT_reg_n_0_[25]\,
      \up_INIT_reg[31]_0\(24) => \up_INIT_reg_n_0_[24]\,
      \up_INIT_reg[31]_0\(23) => \up_INIT_reg_n_0_[23]\,
      \up_INIT_reg[31]_0\(22) => \up_INIT_reg_n_0_[22]\,
      \up_INIT_reg[31]_0\(21) => \up_INIT_reg_n_0_[21]\,
      \up_INIT_reg[31]_0\(20) => \up_INIT_reg_n_0_[20]\,
      \up_INIT_reg[31]_0\(19) => \up_INIT_reg_n_0_[19]\,
      \up_INIT_reg[31]_0\(18) => \up_INIT_reg_n_0_[18]\,
      \up_INIT_reg[31]_0\(17) => \up_INIT_reg_n_0_[17]\,
      \up_INIT_reg[31]_0\(16) => \up_INIT_reg_n_0_[16]\,
      \up_INIT_reg[31]_0\(15) => \up_INIT_reg_n_0_[15]\,
      \up_INIT_reg[31]_0\(14) => \up_INIT_reg_n_0_[14]\,
      \up_INIT_reg[31]_0\(13) => \up_INIT_reg_n_0_[13]\,
      \up_INIT_reg[31]_0\(12) => \up_INIT_reg_n_0_[12]\,
      \up_INIT_reg[31]_0\(11) => \up_INIT_reg_n_0_[11]\,
      \up_INIT_reg[31]_0\(10) => \up_INIT_reg_n_0_[10]\,
      \up_INIT_reg[31]_0\(9) => \up_INIT_reg_n_0_[9]\,
      \up_INIT_reg[31]_0\(8) => \up_INIT_reg_n_0_[8]\,
      \up_INIT_reg[31]_0\(7) => \up_INIT_reg_n_0_[7]\,
      \up_INIT_reg[31]_0\(6) => \up_INIT_reg_n_0_[6]\,
      \up_INIT_reg[31]_0\(5) => \up_INIT_reg_n_0_[5]\,
      \up_INIT_reg[31]_0\(4) => \up_INIT_reg_n_0_[4]\,
      \up_INIT_reg[31]_0\(3) => \up_INIT_reg_n_0_[3]\,
      \up_INIT_reg[31]_0\(2) => \up_INIT_reg_n_0_[2]\,
      \up_INIT_reg[31]_0\(1) => \up_INIT_reg_n_0_[1]\,
      \up_INIT_reg[31]_0\(0) => up_INIT(0),
      \up_Qout_reg[8]\(8 downto 0) => up_Qout(8 downto 0),
      \up_SEED_reg[31]\(31 downto 0) => up_SEED(31 downto 0),
      up_axi_arready_int_reg_0 => i_up_axi_n_0,
      up_rack => up_rack,
      up_resetn_reg_inv => i_up_axi_n_105,
      up_rreq_s => up_rreq_s,
      up_wack => up_wack,
      up_wreq_s => up_wreq_s
    );
my_lfsr9: entity work.design_1_my_lfsr_0_1_LFSR9
     port map (
      Q(0) => up_GO(0),
      s_axi_aclk => s_axi_aclk,
      \up_INIT_reg[0]\(0) => up_INIT(0),
      \up_Qout_reg[8]\(8) => sreg(0),
      \up_Qout_reg[8]\(7) => sreg(1),
      \up_Qout_reg[8]\(6) => sreg(2),
      \up_Qout_reg[8]\(5) => sreg(3),
      \up_Qout_reg[8]\(4) => sreg(4),
      \up_Qout_reg[8]\(3) => sreg(5),
      \up_Qout_reg[8]\(2) => sreg(6),
      \up_Qout_reg[8]\(1) => sreg(7),
      \up_Qout_reg[8]\(0) => sreg(8),
      \up_SEED_reg[8]\(8 downto 0) => up_SEED(8 downto 0)
    );
\up_GO_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => up_wdata_s(0),
      Q => up_GO(0),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_62,
      Q => up_GO(10),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_61,
      Q => up_GO(11),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_60,
      Q => up_GO(12),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_59,
      Q => up_GO(13),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_58,
      Q => up_GO(14),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_57,
      Q => up_GO(15),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_56,
      Q => up_GO(16),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_55,
      Q => up_GO(17),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_54,
      Q => up_GO(18),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_53,
      Q => up_GO(19),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_71,
      Q => up_GO(1),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_52,
      Q => up_GO(20),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_51,
      Q => up_GO(21),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_50,
      Q => up_GO(22),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_49,
      Q => up_GO(23),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_48,
      Q => up_GO(24),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_47,
      Q => up_GO(25),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_46,
      Q => up_GO(26),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_45,
      Q => up_GO(27),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_44,
      Q => up_GO(28),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_43,
      Q => up_GO(29),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_70,
      Q => up_GO(2),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_42,
      Q => up_GO(30),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_41,
      Q => up_GO(31),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_69,
      Q => up_GO(3),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_68,
      Q => up_GO(4),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_67,
      Q => up_GO(5),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_66,
      Q => up_GO(6),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_65,
      Q => up_GO(7),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_64,
      Q => up_GO(8),
      R => up_resetn_reg_inv_n_0
    );
\up_GO_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_108,
      D => i_up_axi_n_63,
      Q => up_GO(9),
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => up_wdata_s(0),
      Q => up_INIT(0),
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_62,
      Q => \up_INIT_reg_n_0_[10]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_61,
      Q => \up_INIT_reg_n_0_[11]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_60,
      Q => \up_INIT_reg_n_0_[12]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_59,
      Q => \up_INIT_reg_n_0_[13]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_58,
      Q => \up_INIT_reg_n_0_[14]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_57,
      Q => \up_INIT_reg_n_0_[15]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_56,
      Q => \up_INIT_reg_n_0_[16]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_55,
      Q => \up_INIT_reg_n_0_[17]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_54,
      Q => \up_INIT_reg_n_0_[18]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_53,
      Q => \up_INIT_reg_n_0_[19]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_71,
      Q => \up_INIT_reg_n_0_[1]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_52,
      Q => \up_INIT_reg_n_0_[20]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_51,
      Q => \up_INIT_reg_n_0_[21]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_50,
      Q => \up_INIT_reg_n_0_[22]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_49,
      Q => \up_INIT_reg_n_0_[23]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_48,
      Q => \up_INIT_reg_n_0_[24]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_47,
      Q => \up_INIT_reg_n_0_[25]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_46,
      Q => \up_INIT_reg_n_0_[26]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_45,
      Q => \up_INIT_reg_n_0_[27]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_44,
      Q => \up_INIT_reg_n_0_[28]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_43,
      Q => \up_INIT_reg_n_0_[29]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_70,
      Q => \up_INIT_reg_n_0_[2]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_42,
      Q => \up_INIT_reg_n_0_[30]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_41,
      Q => \up_INIT_reg_n_0_[31]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_69,
      Q => \up_INIT_reg_n_0_[3]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_68,
      Q => \up_INIT_reg_n_0_[4]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_67,
      Q => \up_INIT_reg_n_0_[5]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_66,
      Q => \up_INIT_reg_n_0_[6]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_65,
      Q => \up_INIT_reg_n_0_[7]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_64,
      Q => \up_INIT_reg_n_0_[8]\,
      R => up_resetn_reg_inv_n_0
    );
\up_INIT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_107,
      D => i_up_axi_n_63,
      Q => \up_INIT_reg_n_0_[9]\,
      R => up_resetn_reg_inv_n_0
    );
\up_Qout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(8),
      Q => up_Qout(0),
      R => '0'
    );
\up_Qout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(7),
      Q => up_Qout(1),
      R => '0'
    );
\up_Qout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(6),
      Q => up_Qout(2),
      R => '0'
    );
\up_Qout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(5),
      Q => up_Qout(3),
      R => '0'
    );
\up_Qout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(4),
      Q => up_Qout(4),
      R => '0'
    );
\up_Qout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(3),
      Q => up_Qout(5),
      R => '0'
    );
\up_Qout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(2),
      Q => up_Qout(6),
      R => '0'
    );
\up_Qout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(1),
      Q => up_Qout(7),
      R => '0'
    );
\up_Qout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(0),
      Q => up_Qout(8),
      R => '0'
    );
\up_SEED_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => up_wdata_s(0),
      Q => up_SEED(0),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_62,
      Q => up_SEED(10),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_61,
      Q => up_SEED(11),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_60,
      Q => up_SEED(12),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_59,
      Q => up_SEED(13),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_58,
      Q => up_SEED(14),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_57,
      Q => up_SEED(15),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_56,
      Q => up_SEED(16),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_55,
      Q => up_SEED(17),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_54,
      Q => up_SEED(18),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_53,
      Q => up_SEED(19),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_71,
      Q => up_SEED(1),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_52,
      Q => up_SEED(20),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_51,
      Q => up_SEED(21),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_50,
      Q => up_SEED(22),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_49,
      Q => up_SEED(23),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_48,
      Q => up_SEED(24),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_47,
      Q => up_SEED(25),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_46,
      Q => up_SEED(26),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_45,
      Q => up_SEED(27),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_44,
      Q => up_SEED(28),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_43,
      Q => up_SEED(29),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_70,
      Q => up_SEED(2),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_42,
      Q => up_SEED(30),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_41,
      Q => up_SEED(31),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_69,
      Q => up_SEED(3),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_68,
      Q => up_SEED(4),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_67,
      Q => up_SEED(5),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_66,
      Q => up_SEED(6),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_65,
      Q => up_SEED(7),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_64,
      Q => up_SEED(8),
      R => up_resetn_reg_inv_n_0
    );
\up_SEED_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_106,
      D => i_up_axi_n_63,
      Q => up_SEED(9),
      R => up_resetn_reg_inv_n_0
    );
up_rack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq_s,
      Q => up_rack,
      R => i_up_axi_n_0
    );
\up_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_40,
      Q => up_rdata(0),
      R => i_up_axi_n_8
    );
\up_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_30,
      Q => up_rdata(10),
      R => i_up_axi_n_8
    );
\up_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_29,
      Q => up_rdata(11),
      R => i_up_axi_n_8
    );
\up_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_28,
      Q => up_rdata(12),
      R => i_up_axi_n_8
    );
\up_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_27,
      Q => up_rdata(13),
      R => i_up_axi_n_8
    );
\up_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_26,
      Q => up_rdata(14),
      R => i_up_axi_n_8
    );
\up_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_25,
      Q => up_rdata(15),
      R => i_up_axi_n_8
    );
\up_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_24,
      Q => up_rdata(16),
      R => i_up_axi_n_8
    );
\up_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_23,
      Q => up_rdata(17),
      R => i_up_axi_n_8
    );
\up_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_22,
      Q => up_rdata(18),
      R => i_up_axi_n_8
    );
\up_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_21,
      Q => up_rdata(19),
      R => i_up_axi_n_8
    );
\up_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_39,
      Q => up_rdata(1),
      R => i_up_axi_n_8
    );
\up_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_20,
      Q => up_rdata(20),
      R => i_up_axi_n_8
    );
\up_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_19,
      Q => up_rdata(21),
      R => i_up_axi_n_8
    );
\up_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_18,
      Q => up_rdata(22),
      R => i_up_axi_n_8
    );
\up_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_17,
      Q => up_rdata(23),
      R => i_up_axi_n_8
    );
\up_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_16,
      Q => up_rdata(24),
      R => i_up_axi_n_8
    );
\up_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_15,
      Q => up_rdata(25),
      R => i_up_axi_n_8
    );
\up_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_14,
      Q => up_rdata(26),
      R => i_up_axi_n_8
    );
\up_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_13,
      Q => up_rdata(27),
      R => i_up_axi_n_8
    );
\up_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_12,
      Q => up_rdata(28),
      R => i_up_axi_n_8
    );
\up_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_11,
      Q => up_rdata(29),
      R => i_up_axi_n_8
    );
\up_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_38,
      Q => up_rdata(2),
      R => i_up_axi_n_8
    );
\up_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_10,
      Q => up_rdata(30),
      R => i_up_axi_n_8
    );
\up_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_9,
      Q => up_rdata(31),
      R => i_up_axi_n_8
    );
\up_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_37,
      Q => up_rdata(3),
      R => i_up_axi_n_8
    );
\up_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_36,
      Q => up_rdata(4),
      R => i_up_axi_n_8
    );
\up_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_35,
      Q => up_rdata(5),
      R => i_up_axi_n_8
    );
\up_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_34,
      Q => up_rdata(6),
      R => i_up_axi_n_8
    );
\up_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_33,
      Q => up_rdata(7),
      R => i_up_axi_n_8
    );
\up_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_32,
      Q => up_rdata(8),
      R => i_up_axi_n_8
    );
\up_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_31,
      Q => up_rdata(9),
      R => i_up_axi_n_8
    );
up_resetn_reg_inv: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_105,
      Q => up_resetn_reg_inv_n_0,
      S => i_up_axi_n_0
    );
up_wack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq_s,
      Q => up_wack,
      R => i_up_axi_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_lfsr_0_1 is
  port (
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_my_lfsr_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_my_lfsr_0_1 : entity is "design_1_my_lfsr_0_1,my_lfsr_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_my_lfsr_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_my_lfsr_0_1 : entity is "my_lfsr_v1_0,Vivado 2018.2";
end design_1_my_lfsr_0_1;

architecture STRUCTURE of design_1_my_lfsr_0_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_CLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn:s_axi_RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_my_lfsr_0_1_my_lfsr_v1_0
     port map (
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(7 downto 0) => s_axi_araddr(9 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(9 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
