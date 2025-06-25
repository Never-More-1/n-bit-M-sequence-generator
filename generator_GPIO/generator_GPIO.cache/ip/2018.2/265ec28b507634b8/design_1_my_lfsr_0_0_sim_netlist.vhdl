-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Jun 18 14:31:29 2025
-- Host        : Anexy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_lfsr_0_0_sim_netlist.vhdl
-- Design      : design_1_my_lfsr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR16 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_Qout_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    imp_GO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_SEED_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR16 is
  signal \FSM_onehot_state_next_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_next_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_next_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal sreg : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \sreg[0]_i_2_n_0\ : STD_LOGIC;
  signal state_current : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of state_current : signal is "yes";
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^up_qout_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_current_reg[0]\ : label is "s3:010,s1:001,s2:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_current_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_current_reg[1]\ : label is "s3:010,s1:001,s2:100";
  attribute KEEP of \FSM_onehot_state_current_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_current_reg[2]\ : label is "s3:010,s1:001,s2:100";
  attribute KEEP of \FSM_onehot_state_current_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_state_next_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_state_next_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_state_next_reg[2]\ : label is "LD";
begin
  \out\(1 downto 0) <= \^out\(1 downto 0);
  \up_Qout_reg[15]\(15 downto 0) <= \^up_qout_reg[15]\(15 downto 0);
\FSM_onehot_state_current_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_next__0\(0),
      Q => state_current(0),
      R => '0'
    );
\FSM_onehot_state_current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_next__0\(1),
      Q => \^out\(0),
      R => '0'
    );
\FSM_onehot_state_current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_next__0\(2),
      Q => \^out\(1),
      R => '0'
    );
\FSM_onehot_state_next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_next_reg[0]_i_1_n_0\,
      G => \FSM_onehot_state_next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \state_next__0\(0)
    );
\FSM_onehot_state_next_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => Q(0),
      I1 => \^out\(1),
      I2 => imp_GO(0),
      I3 => \^out\(0),
      O => \FSM_onehot_state_next_reg[0]_i_1_n_0\
    );
\FSM_onehot_state_next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_next_reg[1]_i_1_n_0\,
      G => \FSM_onehot_state_next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \state_next__0\(1)
    );
\FSM_onehot_state_next_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_current(0),
      I1 => Q(0),
      O => \FSM_onehot_state_next_reg[1]_i_1_n_0\
    );
\FSM_onehot_state_next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_next_reg[2]_i_1_n_0\,
      G => \FSM_onehot_state_next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \state_next__0\(2)
    );
\FSM_onehot_state_next_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF88F888"
    )
        port map (
      I0 => \^out\(0),
      I1 => imp_GO(0),
      I2 => \^out\(1),
      I3 => Q(0),
      I4 => state_current(0),
      O => \FSM_onehot_state_next_reg[2]_i_1_n_0\
    );
\FSM_onehot_state_next_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE30BA"
    )
        port map (
      I0 => \^out\(1),
      I1 => imp_GO(0),
      I2 => \^out\(0),
      I3 => Q(0),
      I4 => state_current(0),
      O => \FSM_onehot_state_next_reg[2]_i_2_n_0\
    );
\sreg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88F8FF888888888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(15),
      I1 => \^out\(1),
      I2 => \sreg[0]_i_2_n_0\,
      I3 => \^up_qout_reg[15]\(13),
      I4 => \^up_qout_reg[15]\(14),
      I5 => \^out\(0),
      O => sreg(0)
    );
\sreg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^up_qout_reg[15]\(15),
      I1 => \^up_qout_reg[15]\(0),
      I2 => \^up_qout_reg[15]\(11),
      I3 => \^up_qout_reg[15]\(12),
      O => \sreg[0]_i_2_n_0\
    );
\sreg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(5),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(6),
      I3 => \^out\(0),
      O => sreg(10)
    );
\sreg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(4),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(5),
      I3 => \^out\(0),
      O => sreg(11)
    );
\sreg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(3),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(4),
      I3 => \^out\(0),
      O => sreg(12)
    );
\sreg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(2),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(3),
      I3 => \^out\(0),
      O => sreg(13)
    );
\sreg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(1),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(2),
      I3 => \^out\(0),
      O => sreg(14)
    );
\sreg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(0),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(1),
      I3 => \^out\(0),
      O => sreg(15)
    );
\sreg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(14),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(15),
      I3 => \^out\(0),
      O => sreg(1)
    );
\sreg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(13),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(14),
      I3 => \^out\(0),
      O => sreg(2)
    );
\sreg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(12),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(13),
      I3 => \^out\(0),
      O => sreg(3)
    );
\sreg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(11),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(12),
      I3 => \^out\(0),
      O => sreg(4)
    );
\sreg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(10),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(11),
      I3 => \^out\(0),
      O => sreg(5)
    );
\sreg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(9),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(10),
      I3 => \^out\(0),
      O => sreg(6)
    );
\sreg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(8),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(9),
      I3 => \^out\(0),
      O => sreg(7)
    );
\sreg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(7),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(8),
      I3 => \^out\(0),
      O => sreg(8)
    );
\sreg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \up_SEED_reg[15]\(6),
      I1 => \^out\(1),
      I2 => \^up_qout_reg[15]\(7),
      I3 => \^out\(0),
      O => sreg(9)
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(0),
      Q => \^up_qout_reg[15]\(15),
      R => '0'
    );
\sreg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(10),
      Q => \^up_qout_reg[15]\(5),
      R => '0'
    );
\sreg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(11),
      Q => \^up_qout_reg[15]\(4),
      R => '0'
    );
\sreg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(12),
      Q => \^up_qout_reg[15]\(3),
      R => '0'
    );
\sreg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(13),
      Q => \^up_qout_reg[15]\(2),
      R => '0'
    );
\sreg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(14),
      Q => \^up_qout_reg[15]\(1),
      R => '0'
    );
\sreg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(15),
      Q => \^up_qout_reg[15]\(0),
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(1),
      Q => \^up_qout_reg[15]\(14),
      R => '0'
    );
\sreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(2),
      Q => \^up_qout_reg[15]\(13),
      R => '0'
    );
\sreg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(3),
      Q => \^up_qout_reg[15]\(12),
      R => '0'
    );
\sreg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(4),
      Q => \^up_qout_reg[15]\(11),
      R => '0'
    );
\sreg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(5),
      Q => \^up_qout_reg[15]\(10),
      R => '0'
    );
\sreg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(6),
      Q => \^up_qout_reg[15]\(9),
      R => '0'
    );
\sreg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(7),
      Q => \^up_qout_reg[15]\(8),
      R => '0'
    );
\sreg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(8),
      Q => \^up_qout_reg[15]\(7),
      R => '0'
    );
\sreg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(9),
      Q => \^up_qout_reg[15]\(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi is
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
    \up_SEED_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    up_resetn_reg_inv : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_INIT_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_GO_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_SEED_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_INIT_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_GO_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_Qout_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi is
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \up_INIT[31]_i_2_n_0\ : STD_LOGIC;
  signal \^up_seed_reg[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \up_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \up_INIT[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \up_SEED[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of up_axi_awready_int_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of up_axi_wready_int_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_rcount[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rcount[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_wcount[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up_wcount[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of up_wreq_int_i_1 : label is "soft_lutpair3";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  \up_SEED_reg[31]\(31 downto 0) <= \^up_seed_reg[31]\(31 downto 0);
  up_axi_arready_int_reg_0 <= \^up_axi_arready_int_reg_0\;
  up_rreq_s <= \^up_rreq_s\;
  up_wreq_s <= \^up_wreq_s\;
\up_GO[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => up_waddr_s(0),
      I1 => \up_INIT[31]_i_2_n_0\,
      I2 => up_waddr_s(5),
      I3 => up_waddr_s(2),
      I4 => up_waddr_s(1),
      O => \up_GO_reg[0]\(0)
    );
\up_INIT[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \up_INIT[31]_i_2_n_0\,
      I1 => up_waddr_s(5),
      I2 => up_waddr_s(2),
      I3 => up_waddr_s(1),
      I4 => up_waddr_s(0),
      O => \up_INIT_reg[0]\(0)
    );
\up_INIT[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => up_waddr_s(3),
      I1 => up_waddr_s(4),
      I2 => up_waddr_s(6),
      I3 => up_waddr_s(7),
      I4 => \^up_wreq_s\,
      O => \up_INIT[31]_i_2_n_0\
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
      I4 => \up_INIT[31]_i_2_n_0\,
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
\up_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \up_rdata[31]_i_5_n_0\,
      I1 => \up_SEED_reg[31]_0\(0),
      I2 => \up_rdata[0]_i_2_n_0\,
      I3 => \up_rdata[0]_i_3_n_0\,
      O => D(0)
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2003000320000003"
    )
        port map (
      I0 => \up_state_reg[1]\(0),
      I1 => \up_rdata[31]_i_6_n_0\,
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(0),
      I4 => up_raddr_int(2),
      I5 => \up_INIT_reg[31]\(0),
      O => \up_rdata[0]_i_2_n_0\
    );
\up_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A000000C000"
    )
        port map (
      I0 => \up_GO_reg[31]\(0),
      I1 => \up_Qout_reg[15]\(0),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[0]_i_3_n_0\
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[10]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(10),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(10),
      O => D(10)
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(10),
      I2 => \up_SEED_reg[31]_0\(10),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[10]_i_2_n_0\
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(11),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(11),
      I4 => \up_rdata[11]_i_2_n_0\,
      O => D(11)
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(11),
      I1 => \up_INIT_reg[31]\(11),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[11]_i_2_n_0\
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[12]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(12),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(12),
      O => D(12)
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(12),
      I2 => \up_SEED_reg[31]_0\(12),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[12]_i_2_n_0\
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(13),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(13),
      I4 => \up_rdata[13]_i_2_n_0\,
      O => D(13)
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(13),
      I1 => \up_INIT_reg[31]\(13),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[13]_i_2_n_0\
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[14]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(14),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(14),
      O => D(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(14),
      I2 => \up_SEED_reg[31]_0\(14),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(15),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(15),
      I4 => \up_rdata[15]_i_2_n_0\,
      O => D(15)
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(15),
      I1 => \up_INIT_reg[31]\(15),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[15]_i_2_n_0\
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(16),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(16),
      I4 => \up_SEED_reg[31]_0\(16),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(16)
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(17),
      I2 => \up_GO_reg[31]\(17),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(17),
      O => D(17)
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(18),
      I2 => \up_GO_reg[31]\(18),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(18),
      O => D(18)
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(19),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(19),
      I4 => \up_SEED_reg[31]_0\(19),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(19)
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[1]_i_2_n_0\,
      I1 => \up_rdata[31]_i_4_n_0\,
      I2 => \up_GO_reg[31]\(1),
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_SEED_reg[31]_0\(1),
      O => D(1)
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000000C0A0C0A0"
    )
        port map (
      I0 => \up_INIT_reg[31]\(1),
      I1 => \up_Qout_reg[15]\(1),
      I2 => \up_rdata[1]_i_3_n_0\,
      I3 => up_raddr_int(1),
      I4 => \up_state_reg[1]\(1),
      I5 => up_raddr_int(0),
      O => \up_rdata[1]_i_2_n_0\
    );
\up_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => up_raddr_int(2),
      I1 => up_raddr_int(4),
      I2 => up_raddr_int(3),
      I3 => up_raddr_int(5),
      I4 => up_raddr_int(6),
      I5 => up_raddr_int(7),
      O => \up_rdata[1]_i_3_n_0\
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(20),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(20),
      I4 => \up_SEED_reg[31]_0\(20),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(20)
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(21),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(21),
      I4 => \up_SEED_reg[31]_0\(21),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(21)
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(22),
      I2 => \up_GO_reg[31]\(22),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(22),
      O => D(22)
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(23),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(23),
      I4 => \up_SEED_reg[31]_0\(23),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(23)
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(24),
      I2 => \up_GO_reg[31]\(24),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(24),
      O => D(24)
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(25),
      I2 => \up_GO_reg[31]\(25),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(25),
      O => D(25)
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(26),
      I2 => \up_GO_reg[31]\(26),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(26),
      O => D(26)
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(27),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(27),
      I4 => \up_SEED_reg[31]_0\(27),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(27)
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(28),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(28),
      I4 => \up_SEED_reg[31]_0\(28),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(28)
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(29),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(29),
      I4 => \up_SEED_reg[31]_0\(29),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(29)
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(2),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(2),
      I4 => \up_rdata[2]_i_2_n_0\,
      O => D(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(2),
      I1 => \up_INIT_reg[31]\(2),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FF88A0A0FF88"
    )
        port map (
      I0 => \up_rdata[30]_i_2_n_0\,
      I1 => \up_INIT_reg[31]\(30),
      I2 => \up_GO_reg[31]\(30),
      I3 => \up_rdata[30]_i_3_n_0\,
      I4 => up_raddr_int(0),
      I5 => \up_SEED_reg[31]_0\(30),
      O => D(30)
    );
\up_rdata[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_rdata[31]_i_6_n_0\,
      I1 => up_raddr_int(2),
      I2 => up_raddr_int(1),
      O => \up_rdata[30]_i_2_n_0\
    );
\up_rdata[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_rdata[31]_i_6_n_0\,
      I1 => up_raddr_int(1),
      I2 => up_raddr_int(2),
      O => \up_rdata[30]_i_3_n_0\
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
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \up_rdata[31]_i_3_n_0\,
      I1 => \up_INIT_reg[31]\(31),
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_GO_reg[31]\(31),
      I4 => \up_SEED_reg[31]_0\(31),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => D(31)
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => up_raddr_int(1),
      I1 => up_raddr_int(2),
      I2 => \up_rdata[31]_i_6_n_0\,
      I3 => up_raddr_int(0),
      O => \up_rdata[31]_i_3_n_0\
    );
\up_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => up_raddr_int(1),
      I1 => up_raddr_int(2),
      I2 => \up_rdata[31]_i_6_n_0\,
      I3 => up_raddr_int(0),
      O => \up_rdata[31]_i_4_n_0\
    );
\up_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => up_raddr_int(2),
      I1 => up_raddr_int(1),
      I2 => \up_rdata[31]_i_6_n_0\,
      I3 => up_raddr_int(0),
      O => \up_rdata[31]_i_5_n_0\
    );
\up_rdata[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => up_raddr_int(7),
      I1 => up_raddr_int(6),
      I2 => up_raddr_int(5),
      I3 => up_raddr_int(3),
      I4 => up_raddr_int(4),
      O => \up_rdata[31]_i_6_n_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(3),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(3),
      I4 => \up_rdata[3]_i_2_n_0\,
      O => D(3)
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(3),
      I1 => \up_INIT_reg[31]\(3),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[3]_i_2_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[4]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(4),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(4),
      O => D(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(4),
      I2 => \up_SEED_reg[31]_0\(4),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(5),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(5),
      I4 => \up_rdata[5]_i_2_n_0\,
      O => D(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(5),
      I1 => \up_INIT_reg[31]\(5),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[6]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(6),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(6),
      O => D(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(6),
      I2 => \up_SEED_reg[31]_0\(6),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(7),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(7),
      I4 => \up_rdata[7]_i_2_n_0\,
      O => D(7)
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(7),
      I1 => \up_INIT_reg[31]\(7),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
      I5 => up_raddr_int(0),
      O => \up_rdata[7]_i_2_n_0\
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \up_rdata[8]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_INIT_reg[31]\(8),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_GO_reg[31]\(8),
      O => D(8)
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000F50000"
    )
        port map (
      I0 => up_raddr_int(0),
      I1 => \up_Qout_reg[15]\(8),
      I2 => \up_SEED_reg[31]_0\(8),
      I3 => \up_rdata[31]_i_6_n_0\,
      I4 => up_raddr_int(1),
      I5 => up_raddr_int(2),
      O => \up_rdata[8]_i_2_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_GO_reg[31]\(9),
      I2 => \up_rdata[31]_i_5_n_0\,
      I3 => \up_SEED_reg[31]_0\(9),
      I4 => \up_rdata[9]_i_2_n_0\,
      O => D(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \up_Qout_reg[15]\(9),
      I1 => \up_INIT_reg[31]\(9),
      I2 => up_raddr_int(1),
      I3 => up_raddr_int(2),
      I4 => \up_rdata[31]_i_6_n_0\,
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
      I4 => \up_INIT[31]_i_2_n_0\,
      I5 => \^up_seed_reg[31]\(0),
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
      Q => \^up_seed_reg[31]\(0),
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
      Q => \^up_seed_reg[31]\(10),
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
      Q => \^up_seed_reg[31]\(11),
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
      Q => \^up_seed_reg[31]\(12),
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
      Q => \^up_seed_reg[31]\(13),
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
      Q => \^up_seed_reg[31]\(14),
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
      Q => \^up_seed_reg[31]\(15),
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
      Q => \^up_seed_reg[31]\(16),
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
      Q => \^up_seed_reg[31]\(17),
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
      Q => \^up_seed_reg[31]\(18),
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
      Q => \^up_seed_reg[31]\(19),
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
      Q => \^up_seed_reg[31]\(1),
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
      Q => \^up_seed_reg[31]\(20),
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
      Q => \^up_seed_reg[31]\(21),
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
      Q => \^up_seed_reg[31]\(22),
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
      Q => \^up_seed_reg[31]\(23),
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
      Q => \^up_seed_reg[31]\(24),
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
      Q => \^up_seed_reg[31]\(25),
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
      Q => \^up_seed_reg[31]\(26),
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
      Q => \^up_seed_reg[31]\(27),
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
      Q => \^up_seed_reg[31]\(28),
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
      Q => \^up_seed_reg[31]\(29),
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
      Q => \^up_seed_reg[31]\(2),
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
      Q => \^up_seed_reg[31]\(30),
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
      Q => \^up_seed_reg[31]\(31),
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
      Q => \^up_seed_reg[31]\(3),
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
      Q => \^up_seed_reg[31]\(4),
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
      Q => \^up_seed_reg[31]\(5),
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
      Q => \^up_seed_reg[31]\(6),
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
      Q => \^up_seed_reg[31]\(7),
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
      Q => \^up_seed_reg[31]\(8),
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
      Q => \^up_seed_reg[31]\(9),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0 is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0 is
  signal Q0_i_1_n_0 : STD_LOGIC;
  signal Q0_i_2_n_0 : STD_LOGIC;
  signal Q0_i_3_n_0 : STD_LOGIC;
  signal Q0_i_4_n_0 : STD_LOGIC;
  signal Q0_i_5_n_0 : STD_LOGIC;
  signal Q0_i_6_n_0 : STD_LOGIC;
  signal Q0_i_7_n_0 : STD_LOGIC;
  signal Q0_i_8_n_0 : STD_LOGIC;
  signal Q0_i_9_n_0 : STD_LOGIC;
  signal Q0_reg_n_0 : STD_LOGIC;
  signal Q1 : STD_LOGIC;
  signal i_up_axi_n_0 : STD_LOGIC;
  signal i_up_axi_n_105 : STD_LOGIC;
  signal i_up_axi_n_106 : STD_LOGIC;
  signal i_up_axi_n_107 : STD_LOGIC;
  signal i_up_axi_n_108 : STD_LOGIC;
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
  signal imp_GO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \imp_GO[0]_i_1_n_0\ : STD_LOGIC;
  signal lfsr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sreg : STD_LOGIC_VECTOR ( 0 to 15 );
  signal up_GO : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_INIT : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal up_INIT_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal up_Qout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal up_SEED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rack : STD_LOGIC;
  signal up_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_resetn_reg_inv_n_0 : STD_LOGIC;
  signal up_rreq_s : STD_LOGIC;
  signal up_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_wack : STD_LOGIC;
  signal up_wdata_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal up_wreq_s : STD_LOGIC;
begin
Q0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q0_i_2_n_0,
      I1 => Q0_i_3_n_0,
      I2 => Q0_i_4_n_0,
      I3 => Q0_i_5_n_0,
      O => Q0_i_1_n_0
    );
Q0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => up_GO(12),
      I1 => up_GO(13),
      I2 => up_GO(14),
      I3 => up_GO(15),
      I4 => Q0_i_6_n_0,
      O => Q0_i_2_n_0
    );
Q0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => up_GO(2),
      I1 => up_GO(3),
      I2 => up_GO(0),
      I3 => up_GO(1),
      I4 => Q0_i_7_n_0,
      O => Q0_i_3_n_0
    );
Q0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => up_GO(27),
      I1 => up_GO(26),
      I2 => up_GO(25),
      I3 => up_GO(24),
      I4 => Q0_i_8_n_0,
      O => Q0_i_4_n_0
    );
Q0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => up_GO(19),
      I1 => up_GO(18),
      I2 => up_GO(17),
      I3 => up_GO(16),
      I4 => Q0_i_9_n_0,
      O => Q0_i_5_n_0
    );
Q0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => up_GO(11),
      I1 => up_GO(10),
      I2 => up_GO(9),
      I3 => up_GO(8),
      O => Q0_i_6_n_0
    );
Q0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => up_GO(7),
      I1 => up_GO(6),
      I2 => up_GO(5),
      I3 => up_GO(4),
      O => Q0_i_7_n_0
    );
Q0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_GO(28),
      I1 => up_GO(29),
      I2 => up_GO(31),
      I3 => up_GO(30),
      O => Q0_i_8_n_0
    );
Q0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_GO(20),
      I1 => up_GO(21),
      I2 => up_GO(22),
      I3 => up_GO(23),
      O => Q0_i_9_n_0
    );
Q0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q0_i_1_n_0,
      Q => Q0_reg_n_0,
      R => '0'
    );
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q0_reg_n_0,
      Q => Q1,
      R => '0'
    );
i_up_axi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi
     port map (
      D(31 downto 0) => p_1_in(31 downto 0),
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
      \up_INIT_reg[31]\(31 downto 1) => up_INIT(31 downto 1),
      \up_INIT_reg[31]\(0) => up_INIT_0(0),
      \up_Qout_reg[15]\(15 downto 0) => up_Qout(15 downto 0),
      \up_SEED_reg[31]\(31) => i_up_axi_n_41,
      \up_SEED_reg[31]\(30) => i_up_axi_n_42,
      \up_SEED_reg[31]\(29) => i_up_axi_n_43,
      \up_SEED_reg[31]\(28) => i_up_axi_n_44,
      \up_SEED_reg[31]\(27) => i_up_axi_n_45,
      \up_SEED_reg[31]\(26) => i_up_axi_n_46,
      \up_SEED_reg[31]\(25) => i_up_axi_n_47,
      \up_SEED_reg[31]\(24) => i_up_axi_n_48,
      \up_SEED_reg[31]\(23) => i_up_axi_n_49,
      \up_SEED_reg[31]\(22) => i_up_axi_n_50,
      \up_SEED_reg[31]\(21) => i_up_axi_n_51,
      \up_SEED_reg[31]\(20) => i_up_axi_n_52,
      \up_SEED_reg[31]\(19) => i_up_axi_n_53,
      \up_SEED_reg[31]\(18) => i_up_axi_n_54,
      \up_SEED_reg[31]\(17) => i_up_axi_n_55,
      \up_SEED_reg[31]\(16) => i_up_axi_n_56,
      \up_SEED_reg[31]\(15) => i_up_axi_n_57,
      \up_SEED_reg[31]\(14) => i_up_axi_n_58,
      \up_SEED_reg[31]\(13) => i_up_axi_n_59,
      \up_SEED_reg[31]\(12) => i_up_axi_n_60,
      \up_SEED_reg[31]\(11) => i_up_axi_n_61,
      \up_SEED_reg[31]\(10) => i_up_axi_n_62,
      \up_SEED_reg[31]\(9) => i_up_axi_n_63,
      \up_SEED_reg[31]\(8) => i_up_axi_n_64,
      \up_SEED_reg[31]\(7) => i_up_axi_n_65,
      \up_SEED_reg[31]\(6) => i_up_axi_n_66,
      \up_SEED_reg[31]\(5) => i_up_axi_n_67,
      \up_SEED_reg[31]\(4) => i_up_axi_n_68,
      \up_SEED_reg[31]\(3) => i_up_axi_n_69,
      \up_SEED_reg[31]\(2) => i_up_axi_n_70,
      \up_SEED_reg[31]\(1) => i_up_axi_n_71,
      \up_SEED_reg[31]\(0) => up_wdata_s(0),
      \up_SEED_reg[31]_0\(31 downto 0) => up_SEED(31 downto 0),
      up_axi_arready_int_reg_0 => i_up_axi_n_0,
      up_rack => up_rack,
      up_resetn_reg_inv => i_up_axi_n_105,
      up_rreq_s => up_rreq_s,
      \up_state_reg[1]\(1 downto 0) => up_state(1 downto 0),
      up_wack => up_wack,
      up_wreq_s => up_wreq_s
    );
\imp_GO[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q0_reg_n_0,
      I1 => Q1,
      O => \imp_GO[0]_i_1_n_0\
    );
\imp_GO_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \imp_GO[0]_i_1_n_0\,
      Q => imp_GO(0),
      R => '0'
    );
my_lfsr16: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR16
     port map (
      Q(0) => up_INIT_0(0),
      imp_GO(0) => imp_GO(0),
      \out\(1) => lfsr_state(0),
      \out\(0) => lfsr_state(1),
      s_axi_aclk => s_axi_aclk,
      \up_Qout_reg[15]\(15) => sreg(0),
      \up_Qout_reg[15]\(14) => sreg(1),
      \up_Qout_reg[15]\(13) => sreg(2),
      \up_Qout_reg[15]\(12) => sreg(3),
      \up_Qout_reg[15]\(11) => sreg(4),
      \up_Qout_reg[15]\(10) => sreg(5),
      \up_Qout_reg[15]\(9) => sreg(6),
      \up_Qout_reg[15]\(8) => sreg(7),
      \up_Qout_reg[15]\(7) => sreg(8),
      \up_Qout_reg[15]\(6) => sreg(9),
      \up_Qout_reg[15]\(5) => sreg(10),
      \up_Qout_reg[15]\(4) => sreg(11),
      \up_Qout_reg[15]\(3) => sreg(12),
      \up_Qout_reg[15]\(2) => sreg(13),
      \up_Qout_reg[15]\(1) => sreg(14),
      \up_Qout_reg[15]\(0) => sreg(15),
      \up_SEED_reg[15]\(15 downto 0) => up_SEED(15 downto 0)
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
      Q => up_INIT_0(0),
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
      Q => up_INIT(10),
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
      Q => up_INIT(11),
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
      Q => up_INIT(12),
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
      Q => up_INIT(13),
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
      Q => up_INIT(14),
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
      Q => up_INIT(15),
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
      Q => up_INIT(16),
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
      Q => up_INIT(17),
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
      Q => up_INIT(18),
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
      Q => up_INIT(19),
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
      Q => up_INIT(1),
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
      Q => up_INIT(20),
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
      Q => up_INIT(21),
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
      Q => up_INIT(22),
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
      Q => up_INIT(23),
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
      Q => up_INIT(24),
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
      Q => up_INIT(25),
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
      Q => up_INIT(26),
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
      Q => up_INIT(27),
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
      Q => up_INIT(28),
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
      Q => up_INIT(29),
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
      Q => up_INIT(2),
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
      Q => up_INIT(30),
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
      Q => up_INIT(31),
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
      Q => up_INIT(3),
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
      Q => up_INIT(4),
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
      Q => up_INIT(5),
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
      Q => up_INIT(6),
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
      Q => up_INIT(7),
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
      Q => up_INIT(8),
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
      Q => up_INIT(9),
      R => up_resetn_reg_inv_n_0
    );
\up_Qout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(15),
      Q => up_Qout(0),
      R => '0'
    );
\up_Qout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(5),
      Q => up_Qout(10),
      R => '0'
    );
\up_Qout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(4),
      Q => up_Qout(11),
      R => '0'
    );
\up_Qout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(3),
      Q => up_Qout(12),
      R => '0'
    );
\up_Qout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(2),
      Q => up_Qout(13),
      R => '0'
    );
\up_Qout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(1),
      Q => up_Qout(14),
      R => '0'
    );
\up_Qout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(0),
      Q => up_Qout(15),
      R => '0'
    );
\up_Qout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(14),
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
      D => sreg(13),
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
      D => sreg(12),
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
      D => sreg(11),
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
      D => sreg(10),
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
      D => sreg(9),
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
      D => sreg(8),
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
      D => sreg(7),
      Q => up_Qout(8),
      R => '0'
    );
\up_Qout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sreg(6),
      Q => up_Qout(9),
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
      D => p_1_in(0),
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
      D => p_1_in(10),
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
      D => p_1_in(11),
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
      D => p_1_in(12),
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
      D => p_1_in(13),
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
      D => p_1_in(14),
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
      D => p_1_in(15),
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
      D => p_1_in(16),
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
      D => p_1_in(17),
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
      D => p_1_in(18),
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
      D => p_1_in(19),
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
      D => p_1_in(1),
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
      D => p_1_in(20),
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
      D => p_1_in(21),
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
      D => p_1_in(22),
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
      D => p_1_in(23),
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
      D => p_1_in(24),
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
      D => p_1_in(25),
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
      D => p_1_in(26),
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
      D => p_1_in(27),
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
      D => p_1_in(28),
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
      D => p_1_in(29),
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
      D => p_1_in(2),
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
      D => p_1_in(30),
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
      D => p_1_in(31),
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
      D => p_1_in(3),
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
      D => p_1_in(4),
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
      D => p_1_in(5),
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
      D => p_1_in(6),
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
      D => p_1_in(7),
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
      D => p_1_in(8),
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
      D => p_1_in(9),
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
\up_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => lfsr_state(0),
      Q => up_state(0),
      R => '0'
    );
\up_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => lfsr_state(1),
      Q => up_state(1),
      R => '0'
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_my_lfsr_0_0,my_lfsr_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_lfsr_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0
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
