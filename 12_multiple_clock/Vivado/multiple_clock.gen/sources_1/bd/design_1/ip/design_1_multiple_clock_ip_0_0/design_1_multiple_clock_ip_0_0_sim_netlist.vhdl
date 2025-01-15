-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Sep 14 12:51:11 2024
-- Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/12_multiple_clock/Vivado/multiple_clock.gen/sources_1/bd/design_1/ip/design_1_multiple_clock_ip_0_0/design_1_multiple_clock_ip_0_0_sim_netlist.vhdl
-- Design      : design_1_multiple_clock_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0_multiple_clock_ip_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_multiple_clock_ip_0_0_multiple_clock_ip_reset_sync : entity is "multiple_clock_ip_reset_sync";
end design_1_multiple_clock_ip_0_0_multiple_clock_ip_reset_sync;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0_multiple_clock_ip_reset_sync is
  signal reset_in : STD_LOGIC;
  signal reset_out_i_1_n_0 : STD_LOGIC;
  signal reset_pipe : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of reset_out_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of reset_pipe_i_1 : label is "soft_lutpair4";
begin
reset_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_pipe,
      I1 => IPCORE_RESETN,
      O => reset_out_i_1_n_0
    );
reset_out_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_out_i_1_n_0,
      Q => reset_out,
      R => '0'
    );
reset_pipe_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IPCORE_RESETN,
      O => reset_in
    );
reset_pipe_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_in,
      Q => reset_pipe,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock_tc is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock_tc : entity is "multiple_clock_ip_src_multiple_clock_tc";
end design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock_tc;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock_tc is
  signal \comp_0_tmp__0\ : STD_LOGIC;
  signal count8 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of comp_0_tmp : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count8[2]_i_1\ : label is "soft_lutpair0";
begin
comp_0_tmp: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => count8(1),
      I1 => count8(2),
      I2 => count8(0),
      O => \comp_0_tmp__0\
    );
\count8[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count8(0),
      O => p_0_in(0)
    );
\count8[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count8(0),
      I1 => count8(1),
      O => p_0_in(1)
    );
\count8[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count8(0),
      I1 => count8(1),
      I2 => count8(2),
      O => p_0_in(2)
    );
\count8_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => p_0_in(0),
      Q => count8(0),
      S => reset_out
    );
\count8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => p_0_in(1),
      Q => count8(1),
      R => reset_out
    );
\count8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => p_0_in(2),
      Q => count8(2),
      R => reset_out
    );
phase_0_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \comp_0_tmp__0\,
      Q => E(0),
      R => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock is
  port (
    out_rsvd : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    in_rsvd : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock : entity is "multiple_clock_ip_src_multiple_clock";
end design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock is
  signal Delay2_out1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Delay3_out1 : STD_LOGIC;
  signal Serializer1D_contl_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Serializer1D_contl_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Serializer1D_contl_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Serializer1D_contl_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal Serializer1D_data_next : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \Serializer1D_data_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal phase_0 : STD_LOGIC;
  signal serializer_PostProcessed : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Serializer1D_contl_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Serializer1D_contl_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Serializer1D_contl_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Serializer1D_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Serializer1D_data[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Serializer1D_data[2]_i_1\ : label is "soft_lutpair3";
begin
Delay1_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay3_out1,
      Q => valid_out,
      R => reset_out
    );
\Delay2_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(0),
      Q => Delay2_out1(0),
      R => reset_out
    );
\Delay2_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(1),
      Q => Delay2_out1(1),
      R => reset_out
    );
\Delay2_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(2),
      Q => Delay2_out1(2),
      R => reset_out
    );
\Delay2_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(3),
      Q => Delay2_out1(3),
      R => reset_out
    );
\Delay2_out1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(4),
      Q => Delay2_out1(4),
      R => reset_out
    );
\Delay2_out1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(5),
      Q => Delay2_out1(5),
      R => reset_out
    );
\Delay2_out1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(6),
      Q => Delay2_out1(6),
      R => reset_out
    );
\Delay2_out1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => in_rsvd(7),
      Q => Delay2_out1(7),
      R => reset_out
    );
Delay3_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => phase_0,
      D => valid_in,
      Q => Delay3_out1,
      R => reset_out
    );
Delay_out1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(0),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => \Serializer1D_data_reg_n_0_[0]\,
      O => serializer_PostProcessed
    );
Delay_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => serializer_PostProcessed,
      Q => out_rsvd,
      R => reset_out
    );
\Serializer1D_contl_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Serializer1D_contl_cnt(0),
      O => \Serializer1D_contl_cnt[0]_i_1_n_0\
    );
\Serializer1D_contl_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Serializer1D_contl_cnt(0),
      I1 => Serializer1D_contl_cnt(1),
      O => \Serializer1D_contl_cnt[1]_i_1_n_0\
    );
\Serializer1D_contl_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Serializer1D_contl_cnt(2),
      I1 => Serializer1D_contl_cnt(0),
      I2 => Serializer1D_contl_cnt(1),
      O => \Serializer1D_contl_cnt[2]_i_1_n_0\
    );
\Serializer1D_contl_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Serializer1D_contl_cnt[0]_i_1_n_0\,
      Q => Serializer1D_contl_cnt(0),
      R => reset_out
    );
\Serializer1D_contl_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Serializer1D_contl_cnt[1]_i_1_n_0\,
      Q => Serializer1D_contl_cnt(1),
      R => reset_out
    );
\Serializer1D_contl_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Serializer1D_contl_cnt[2]_i_1_n_0\,
      Q => Serializer1D_contl_cnt(2),
      R => reset_out
    );
\Serializer1D_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(1),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(0),
      O => Serializer1D_data_next(0)
    );
\Serializer1D_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(2),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(1),
      O => Serializer1D_data_next(1)
    );
\Serializer1D_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(3),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(2),
      O => Serializer1D_data_next(2)
    );
\Serializer1D_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(4),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(3),
      O => Serializer1D_data_next(3)
    );
\Serializer1D_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(5),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(4),
      O => Serializer1D_data_next(4)
    );
\Serializer1D_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => Delay2_out1(6),
      I1 => Serializer1D_contl_cnt(2),
      I2 => Serializer1D_contl_cnt(0),
      I3 => Serializer1D_contl_cnt(1),
      I4 => p_0_in_0(5),
      O => Serializer1D_data_next(5)
    );
\Serializer1D_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(0),
      Q => \Serializer1D_data_reg_n_0_[0]\,
      R => reset_out
    );
\Serializer1D_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(1),
      Q => p_0_in_0(0),
      R => reset_out
    );
\Serializer1D_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(2),
      Q => p_0_in_0(1),
      R => reset_out
    );
\Serializer1D_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(3),
      Q => p_0_in_0(2),
      R => reset_out
    );
\Serializer1D_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(4),
      Q => p_0_in_0(3),
      R => reset_out
    );
\Serializer1D_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Serializer1D_data_next(5),
      Q => p_0_in_0(4),
      R => reset_out
    );
\Serializer1D_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay2_out1(7),
      Q => p_0_in_0(5),
      R => reset_out
    );
u_multiple_clock_tc: entity work.design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock_tc
     port map (
      E(0) => phase_0,
      IPCORE_CLK => IPCORE_CLK,
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0_multiple_clock_ip_dut is
  port (
    out_rsvd : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    in_rsvd : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_multiple_clock_ip_0_0_multiple_clock_ip_dut : entity is "multiple_clock_ip_dut";
end design_1_multiple_clock_ip_0_0_multiple_clock_ip_dut;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0_multiple_clock_ip_dut is
begin
u_multiple_clock_ip_src_multiple_clock: entity work.design_1_multiple_clock_ip_0_0_multiple_clock_ip_src_multiple_clock
     port map (
      IPCORE_CLK => IPCORE_CLK,
      in_rsvd(7 downto 0) => in_rsvd(7 downto 0),
      out_rsvd => out_rsvd,
      reset_out => reset_out,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0_multiple_clock_ip is
  port (
    out_rsvd : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    in_rsvd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_multiple_clock_ip_0_0_multiple_clock_ip : entity is "multiple_clock_ip";
end design_1_multiple_clock_ip_0_0_multiple_clock_ip;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0_multiple_clock_ip is
  signal reset_out : STD_LOGIC;
begin
u_multiple_clock_ip_dut_inst: entity work.design_1_multiple_clock_ip_0_0_multiple_clock_ip_dut
     port map (
      IPCORE_CLK => IPCORE_CLK,
      in_rsvd(7 downto 0) => in_rsvd(7 downto 0),
      out_rsvd => out_rsvd,
      reset_out => reset_out,
      valid_in => valid_in,
      valid_out => valid_out
    );
u_multiple_clock_ip_reset_sync_inst: entity work.design_1_multiple_clock_ip_0_0_multiple_clock_ip_reset_sync
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_multiple_clock_ip_0_0 is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    in_rsvd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    out_rsvd : out STD_LOGIC;
    valid_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_multiple_clock_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_multiple_clock_ip_0_0 : entity is "design_1_multiple_clock_ip_0_0,multiple_clock_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_multiple_clock_ip_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_multiple_clock_ip_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_multiple_clock_ip_0_0 : entity is "multiple_clock_ip,Vivado 2023.2";
end design_1_multiple_clock_ip_0_0;

architecture STRUCTURE of design_1_multiple_clock_ip_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_multiple_clock_ip_0_0_multiple_clock_ip
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      in_rsvd(7 downto 0) => in_rsvd(7 downto 0),
      out_rsvd => out_rsvd,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
