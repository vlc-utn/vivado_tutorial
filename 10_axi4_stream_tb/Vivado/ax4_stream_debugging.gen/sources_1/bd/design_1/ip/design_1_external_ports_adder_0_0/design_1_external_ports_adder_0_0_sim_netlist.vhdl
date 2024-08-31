-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Aug 31 12:10:13 2024
-- Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/10_axi4_stream_tb/Vivado/ax4_stream_debugging.gen/sources_1/bd/design_1/ip/design_1_external_ports_adder_0_0/design_1_external_ports_adder_0_0_sim_netlist.vhdl
-- Design      : design_1_external_ports_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync : entity is "external_ports_adder_four_reset_sync";
end design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync;

architecture STRUCTURE of design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync is
  signal reset_in : STD_LOGIC;
  signal reset_out_i_1_n_0 : STD_LOGIC;
  signal reset_pipe : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of reset_out_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of reset_pipe_i_1 : label is "soft_lutpair7";
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
entity design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge is
  port (
    Delay_out1 : out STD_LOGIC;
    in_rising : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    Delay7_out1 : in STD_LOGIC;
    Delay9_out1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge : entity is "external_ports_adder_four_src_rising_edge";
end design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge;

architecture STRUCTURE of design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge is
  signal \^delay_out1\ : STD_LOGIC;
  signal \^in_rising\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Delay_out1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Tapped_Delay2_out1[3]_i_1\ : label is "soft_lutpair0";
begin
  Delay_out1 <= \^delay_out1\;
  in_rising <= \^in_rising\;
Delay_out1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Delay7_out1,
      I1 => Delay9_out1,
      O => \^in_rising\
    );
Delay_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \^in_rising\,
      Q => \^delay_out1\,
      R => reset_out
    );
\Tapped_Delay2_out1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^delay_out1\,
      I1 => Delay7_out1,
      I2 => Delay9_out1,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder is
  port (
    ready : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    first_in : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    last_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder : entity is "external_ports_adder_four_src_four_value_adder";
end design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder;

architecture STRUCTURE of design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder is
  signal Add_out1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Add_out1__2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_n_1\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_n_2\ : STD_LOGIC;
  signal \Add_out1__2_carry__0_n_3\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_1_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_2_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_3_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_4_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_5_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_6_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_7_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_8_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_i_9_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_n_0\ : STD_LOGIC;
  signal \Add_out1__2_carry_n_1\ : STD_LOGIC;
  signal \Add_out1__2_carry_n_2\ : STD_LOGIC;
  signal \Add_out1__2_carry_n_3\ : STD_LOGIC;
  signal \Bitwise_OR_out1__0\ : STD_LOGIC;
  signal Delay11_out1 : STD_LOGIC;
  signal Delay1_out1 : STD_LOGIC;
  signal \Delay1_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Delay1_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Delay1_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \Delay1_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal Delay3_out1 : STD_LOGIC;
  signal Delay4_out1 : STD_LOGIC;
  signal Delay5_out1 : STD_LOGIC;
  signal Delay6_out1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Delay7_out1 : STD_LOGIC;
  signal Delay8_out1 : STD_LOGIC;
  signal Delay9_out1 : STD_LOGIC;
  signal Delay_out1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Delay_out1_0 : STD_LOGIC;
  signal Tapped_Delay1_out1_1 : STD_LOGIC;
  signal Tapped_Delay1_out1_2 : STD_LOGIC;
  signal \Tapped_Delay1_out1_reg_n_0_[0]\ : STD_LOGIC;
  signal \Tapped_Delay1_out1_reg_n_0_[3]\ : STD_LOGIC;
  signal Tapped_Delay2_out1_1 : STD_LOGIC;
  signal Tapped_Delay2_out1_2 : STD_LOGIC;
  signal \Tapped_Delay2_out1_reg_n_0_[0]\ : STD_LOGIC;
  signal \Tapped_Delay2_out1_reg_n_0_[3]\ : STD_LOGIC;
  signal \Tapped_Delay_out1_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Tapped_Delay_out1_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Tapped_Delay_out1_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Unit_Delay_out1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_rising : STD_LOGIC;
  signal out_rising : STD_LOGIC;
  signal \p_1_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ready\ : STD_LOGIC;
  signal \NLW_Add_out1__2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Add_out1__2_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \Add_out1__2_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Add_out1__2_carry__0_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Add_out1__2_carry__0_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Add_out1__2_carry__0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Add_out1__2_carry__0_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair6";
begin
  ready <= \^ready\;
\Add_out1__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Add_out1__2_carry_n_0\,
      CO(2) => \Add_out1__2_carry_n_1\,
      CO(1) => \Add_out1__2_carry_n_2\,
      CO(0) => \Add_out1__2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \Add_out1__2_carry_i_1_n_0\,
      DI(2) => \Add_out1__2_carry_i_2_n_0\,
      DI(1) => \Add_out1__2_carry_i_3_n_0\,
      DI(0) => \Tapped_Delay_out1_reg[0]\(0),
      O(3 downto 0) => Add_out1(3 downto 0),
      S(3) => \Add_out1__2_carry_i_4_n_0\,
      S(2) => \Add_out1__2_carry_i_5_n_0\,
      S(1) => \Add_out1__2_carry_i_6_n_0\,
      S(0) => \Add_out1__2_carry_i_7_n_0\
    );
\Add_out1__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Add_out1__2_carry_n_0\,
      CO(3) => \NLW_Add_out1__2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \Add_out1__2_carry__0_n_1\,
      CO(1) => \Add_out1__2_carry__0_n_2\,
      CO(0) => \Add_out1__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Add_out1__2_carry__0_i_1_n_0\,
      DI(1) => \Add_out1__2_carry__0_i_2_n_0\,
      DI(0) => \Add_out1__2_carry__0_i_3_n_0\,
      O(3 downto 0) => Add_out1(7 downto 4),
      S(3) => \Add_out1__2_carry__0_i_4_n_0\,
      S(2) => \Add_out1__2_carry__0_i_5_n_0\,
      S(1) => \Add_out1__2_carry__0_i_6_n_0\,
      S(0) => \Add_out1__2_carry__0_i_7_n_0\
    );
\Add_out1__2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(4),
      I1 => Unit_Delay_out1(4),
      I2 => \Tapped_Delay_out1_reg[1]\(4),
      I3 => \Tapped_Delay_out1_reg[0]\(5),
      I4 => \Add_out1__2_carry__0_i_8_n_0\,
      O => \Add_out1__2_carry__0_i_1_n_0\
    );
\Add_out1__2_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(7),
      I1 => \Tapped_Delay_out1_reg[1]\(7),
      I2 => \Tapped_Delay_out1_reg[0]\(7),
      I3 => Unit_Delay_out1(7),
      O => \Add_out1__2_carry__0_i_10_n_0\
    );
\Add_out1__2_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[1]\(5),
      I1 => Unit_Delay_out1(5),
      I2 => \Tapped_Delay_out1_reg[2]\(5),
      O => \Add_out1__2_carry__0_i_11_n_0\
    );
\Add_out1__2_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(4),
      I1 => Unit_Delay_out1(4),
      I2 => \Tapped_Delay_out1_reg[1]\(4),
      O => \Add_out1__2_carry__0_i_12_n_0\
    );
\Add_out1__2_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(6),
      I1 => Unit_Delay_out1(6),
      I2 => \Tapped_Delay_out1_reg[1]\(6),
      I3 => \Tapped_Delay_out1_reg[0]\(6),
      O => \Add_out1__2_carry__0_i_13_n_0\
    );
\Add_out1__2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(3),
      I1 => Unit_Delay_out1(3),
      I2 => \Tapped_Delay_out1_reg[1]\(3),
      I3 => \Tapped_Delay_out1_reg[0]\(4),
      I4 => \Add_out1__2_carry__0_i_9_n_0\,
      O => \Add_out1__2_carry__0_i_2_n_0\
    );
\Add_out1__2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(2),
      I1 => Unit_Delay_out1(2),
      I2 => \Tapped_Delay_out1_reg[1]\(2),
      I3 => \Tapped_Delay_out1_reg[0]\(3),
      I4 => \Add_out1__2_carry_i_9_n_0\,
      O => \Add_out1__2_carry__0_i_3_n_0\
    );
\Add_out1__2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9556566AA9959556"
    )
        port map (
      I0 => \Add_out1__2_carry__0_i_10_n_0\,
      I1 => \Tapped_Delay_out1_reg[2]\(6),
      I2 => Unit_Delay_out1(6),
      I3 => \Tapped_Delay_out1_reg[1]\(6),
      I4 => \Tapped_Delay_out1_reg[0]\(6),
      I5 => \Add_out1__2_carry__0_i_11_n_0\,
      O => \Add_out1__2_carry__0_i_4_n_0\
    );
\Add_out1__2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177E7EE8E8818117"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[0]\(5),
      I1 => \Add_out1__2_carry__0_i_12_n_0\,
      I2 => \Tapped_Delay_out1_reg[1]\(5),
      I3 => Unit_Delay_out1(5),
      I4 => \Tapped_Delay_out1_reg[2]\(5),
      I5 => \Add_out1__2_carry__0_i_13_n_0\,
      O => \Add_out1__2_carry__0_i_5_n_0\
    );
\Add_out1__2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \Add_out1__2_carry__0_i_2_n_0\,
      I1 => \Tapped_Delay_out1_reg[2]\(4),
      I2 => Unit_Delay_out1(4),
      I3 => \Tapped_Delay_out1_reg[1]\(4),
      I4 => \Tapped_Delay_out1_reg[0]\(5),
      I5 => \Add_out1__2_carry__0_i_8_n_0\,
      O => \Add_out1__2_carry__0_i_6_n_0\
    );
\Add_out1__2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \Add_out1__2_carry__0_i_3_n_0\,
      I1 => \Tapped_Delay_out1_reg[2]\(3),
      I2 => Unit_Delay_out1(3),
      I3 => \Tapped_Delay_out1_reg[1]\(3),
      I4 => \Tapped_Delay_out1_reg[0]\(4),
      I5 => \Add_out1__2_carry__0_i_9_n_0\,
      O => \Add_out1__2_carry__0_i_7_n_0\
    );
\Add_out1__2_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(5),
      I1 => Unit_Delay_out1(5),
      I2 => \Tapped_Delay_out1_reg[1]\(5),
      O => \Add_out1__2_carry__0_i_8_n_0\
    );
\Add_out1__2_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(4),
      I1 => Unit_Delay_out1(4),
      I2 => \Tapped_Delay_out1_reg[1]\(4),
      O => \Add_out1__2_carry__0_i_9_n_0\
    );
\Add_out1__2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[0]\(2),
      I1 => \Add_out1__2_carry_i_8_n_0\,
      I2 => \Tapped_Delay_out1_reg[1]\(1),
      I3 => Unit_Delay_out1(1),
      I4 => \Tapped_Delay_out1_reg[2]\(1),
      O => \Add_out1__2_carry_i_1_n_0\
    );
\Add_out1__2_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(1),
      I1 => Unit_Delay_out1(1),
      I2 => \Tapped_Delay_out1_reg[1]\(1),
      I3 => \Add_out1__2_carry_i_8_n_0\,
      I4 => \Tapped_Delay_out1_reg[0]\(2),
      O => \Add_out1__2_carry_i_2_n_0\
    );
\Add_out1__2_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[1]\(1),
      I1 => Unit_Delay_out1(1),
      I2 => \Tapped_Delay_out1_reg[2]\(1),
      I3 => \Tapped_Delay_out1_reg[0]\(1),
      O => \Add_out1__2_carry_i_3_n_0\
    );
\Add_out1__2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \Add_out1__2_carry_i_1_n_0\,
      I1 => \Tapped_Delay_out1_reg[2]\(2),
      I2 => Unit_Delay_out1(2),
      I3 => \Tapped_Delay_out1_reg[1]\(2),
      I4 => \Tapped_Delay_out1_reg[0]\(3),
      I5 => \Add_out1__2_carry_i_9_n_0\,
      O => \Add_out1__2_carry_i_4_n_0\
    );
\Add_out1__2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[0]\(2),
      I1 => \Add_out1__2_carry_i_8_n_0\,
      I2 => \Tapped_Delay_out1_reg[2]\(1),
      I3 => Unit_Delay_out1(1),
      I4 => \Tapped_Delay_out1_reg[1]\(1),
      I5 => \Tapped_Delay_out1_reg[0]\(1),
      O => \Add_out1__2_carry_i_5_n_0\
    );
\Add_out1__2_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \Add_out1__2_carry_i_3_n_0\,
      I1 => \Tapped_Delay_out1_reg[2]\(0),
      I2 => \Tapped_Delay_out1_reg[1]\(0),
      I3 => Unit_Delay_out1(0),
      O => \Add_out1__2_carry_i_6_n_0\
    );
\Add_out1__2_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[1]\(0),
      I1 => \Tapped_Delay_out1_reg[2]\(0),
      I2 => Unit_Delay_out1(0),
      I3 => \Tapped_Delay_out1_reg[0]\(0),
      O => \Add_out1__2_carry_i_7_n_0\
    );
\Add_out1__2_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(2),
      I1 => Unit_Delay_out1(2),
      I2 => \Tapped_Delay_out1_reg[1]\(2),
      O => \Add_out1__2_carry_i_8_n_0\
    );
\Add_out1__2_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Tapped_Delay_out1_reg[2]\(3),
      I1 => Unit_Delay_out1(3),
      I2 => \Tapped_Delay_out1_reg[1]\(3),
      O => \Add_out1__2_carry_i_9_n_0\
    );
Bitwise_OR_out1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Tapped_Delay1_out1_2,
      I1 => \Tapped_Delay1_out1_reg_n_0_[3]\,
      I2 => Tapped_Delay1_out1_1,
      I3 => \Tapped_Delay1_out1_reg_n_0_[0]\,
      O => \Bitwise_OR_out1__0\
    );
Delay11_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay5_out1,
      Q => Delay11_out1,
      R => reset_out
    );
\Delay1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \p_1_out__0\(0),
      Q => \Delay1_reg_reg_n_0_[0]\,
      R => reset_out
    );
\Delay1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Delay1_reg_reg_n_0_[0]\,
      Q => \Delay1_reg_reg_n_0_[1]\,
      R => reset_out
    );
\Delay1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Delay1_reg_reg_n_0_[1]\,
      Q => \Delay1_reg_reg_n_0_[2]\,
      R => reset_out
    );
\Delay1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Delay1_reg_reg_n_0_[2]\,
      Q => \Delay1_reg_reg_n_0_[3]\,
      R => reset_out
    );
\Delay1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Delay1_reg_reg_n_0_[3]\,
      Q => Delay1_out1,
      R => reset_out
    );
Delay2_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay_out1_0,
      Q => valid_out,
      R => reset_out
    );
Delay3_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay11_out1,
      Q => Delay3_out1,
      R => reset_out
    );
Delay4_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Bitwise_OR_out1__0\,
      Q => Delay4_out1,
      R => reset_out
    );
Delay5_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => last_in,
      Q => Delay5_out1,
      R => reset_out
    );
\Delay6_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(0),
      Q => Delay6_out1(0),
      R => reset_out
    );
\Delay6_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(1),
      Q => Delay6_out1(1),
      R => reset_out
    );
\Delay6_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(2),
      Q => Delay6_out1(2),
      R => reset_out
    );
\Delay6_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(3),
      Q => Delay6_out1(3),
      R => reset_out
    );
\Delay6_out1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(4),
      Q => Delay6_out1(4),
      R => reset_out
    );
\Delay6_out1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(5),
      Q => Delay6_out1(5),
      R => reset_out
    );
\Delay6_out1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(6),
      Q => Delay6_out1(6),
      R => reset_out
    );
\Delay6_out1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => data_in(7),
      Q => Delay6_out1(7),
      R => reset_out
    );
Delay7_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => valid_in,
      Q => Delay7_out1,
      R => reset_out
    );
Delay8_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => first_in,
      Q => Delay8_out1,
      R => reset_out
    );
Delay9_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \^ready\,
      Q => Delay9_out1,
      R => reset_out
    );
\Delay_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(0),
      Q => Delay_out1(0),
      R => reset_out
    );
\Delay_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(1),
      Q => Delay_out1(1),
      R => reset_out
    );
\Delay_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(2),
      Q => Delay_out1(2),
      R => reset_out
    );
\Delay_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(3),
      Q => Delay_out1(3),
      R => reset_out
    );
\Delay_out1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(4),
      Q => Delay_out1(4),
      R => reset_out
    );
\Delay_out1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(5),
      Q => Delay_out1(5),
      R => reset_out
    );
\Delay_out1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(6),
      Q => Delay_out1(6),
      R => reset_out
    );
\Delay_out1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Add_out1(7),
      Q => Delay_out1(7),
      R => reset_out
    );
\Tapped_Delay1_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Tapped_Delay1_out1_1,
      Q => \Tapped_Delay1_out1_reg_n_0_[0]\,
      R => reset_out
    );
\Tapped_Delay1_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Tapped_Delay1_out1_2,
      Q => Tapped_Delay1_out1_1,
      R => reset_out
    );
\Tapped_Delay1_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay1_out1_reg_n_0_[3]\,
      Q => Tapped_Delay1_out1_2,
      R => reset_out
    );
\Tapped_Delay1_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Delay8_out1,
      Q => \Tapped_Delay1_out1_reg_n_0_[3]\,
      R => reset_out
    );
\Tapped_Delay2_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Tapped_Delay2_out1_1,
      Q => \Tapped_Delay2_out1_reg_n_0_[0]\,
      R => reset_out
    );
\Tapped_Delay2_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Tapped_Delay2_out1_2,
      Q => Tapped_Delay2_out1_1,
      R => reset_out
    );
\Tapped_Delay2_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay2_out1_reg_n_0_[3]\,
      Q => Tapped_Delay2_out1_2,
      R => reset_out
    );
\Tapped_Delay2_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => out_rising,
      Q => \Tapped_Delay2_out1_reg_n_0_[3]\,
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(0),
      Q => \Tapped_Delay_out1_reg[0]\(0),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(1),
      Q => \Tapped_Delay_out1_reg[0]\(1),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(2),
      Q => \Tapped_Delay_out1_reg[0]\(2),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(3),
      Q => \Tapped_Delay_out1_reg[0]\(3),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(4),
      Q => \Tapped_Delay_out1_reg[0]\(4),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(5),
      Q => \Tapped_Delay_out1_reg[0]\(5),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(6),
      Q => \Tapped_Delay_out1_reg[0]\(6),
      R => reset_out
    );
\Tapped_Delay_out1_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[1]\(7),
      Q => \Tapped_Delay_out1_reg[0]\(7),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(0),
      Q => \Tapped_Delay_out1_reg[1]\(0),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(1),
      Q => \Tapped_Delay_out1_reg[1]\(1),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(2),
      Q => \Tapped_Delay_out1_reg[1]\(2),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(3),
      Q => \Tapped_Delay_out1_reg[1]\(3),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(4),
      Q => \Tapped_Delay_out1_reg[1]\(4),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(5),
      Q => \Tapped_Delay_out1_reg[1]\(5),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(6),
      Q => \Tapped_Delay_out1_reg[1]\(6),
      R => reset_out
    );
\Tapped_Delay_out1_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => \Tapped_Delay_out1_reg[2]\(7),
      Q => \Tapped_Delay_out1_reg[1]\(7),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(0),
      Q => \Tapped_Delay_out1_reg[2]\(0),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(1),
      Q => \Tapped_Delay_out1_reg[2]\(1),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(2),
      Q => \Tapped_Delay_out1_reg[2]\(2),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(3),
      Q => \Tapped_Delay_out1_reg[2]\(3),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(4),
      Q => \Tapped_Delay_out1_reg[2]\(4),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(5),
      Q => \Tapped_Delay_out1_reg[2]\(5),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(6),
      Q => \Tapped_Delay_out1_reg[2]\(6),
      R => reset_out
    );
\Tapped_Delay_out1_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => Unit_Delay_out1(7),
      Q => \Tapped_Delay_out1_reg[2]\(7),
      R => reset_out
    );
\Unit_Delay_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(0),
      Q => Unit_Delay_out1(0),
      R => reset_out
    );
\Unit_Delay_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(1),
      Q => Unit_Delay_out1(1),
      R => reset_out
    );
\Unit_Delay_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(2),
      Q => Unit_Delay_out1(2),
      R => reset_out
    );
\Unit_Delay_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(3),
      Q => Unit_Delay_out1(3),
      R => reset_out
    );
\Unit_Delay_out1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(4),
      Q => Unit_Delay_out1(4),
      R => reset_out
    );
\Unit_Delay_out1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(5),
      Q => Unit_Delay_out1(5),
      R => reset_out
    );
\Unit_Delay_out1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(6),
      Q => Unit_Delay_out1(6),
      R => reset_out
    );
\Unit_Delay_out1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => IPCORE_CLK,
      CE => in_rising,
      D => Delay6_out1(7),
      Q => Unit_Delay_out1(7),
      R => reset_out
    );
\data_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(0),
      I1 => Delay3_out1,
      O => data_out(0)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(1),
      I1 => Delay3_out1,
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(2),
      I1 => Delay3_out1,
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(3),
      I1 => Delay3_out1,
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(4),
      I1 => Delay3_out1,
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(5),
      I1 => Delay3_out1,
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(6),
      I1 => Delay3_out1,
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay_out1(7),
      I1 => Delay3_out1,
      O => data_out(7)
    );
p_1_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Tapped_Delay2_out1_2,
      I1 => \Tapped_Delay2_out1_reg_n_0_[3]\,
      I2 => Tapped_Delay2_out1_1,
      I3 => \Tapped_Delay2_out1_reg_n_0_[0]\,
      O => \p_1_out__0\(0)
    );
ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Delay1_out1,
      I1 => Delay4_out1,
      O => \^ready\
    );
u_rising_edge: entity work.design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge
     port map (
      D(0) => out_rising,
      Delay7_out1 => Delay7_out1,
      Delay9_out1 => Delay9_out1,
      Delay_out1 => Delay_out1_0,
      IPCORE_CLK => IPCORE_CLK,
      in_rising => in_rising,
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_external_ports_adder_0_0_external_ports_adder_four_dut is
  port (
    ready : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_out : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    first_in : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    last_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_external_ports_adder_0_0_external_ports_adder_four_dut : entity is "external_ports_adder_four_dut";
end design_1_external_ports_adder_0_0_external_ports_adder_four_dut;

architecture STRUCTURE of design_1_external_ports_adder_0_0_external_ports_adder_four_dut is
begin
u_external_ports_adder_four_src_four_value_adder: entity work.design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder
     port map (
      IPCORE_CLK => IPCORE_CLK,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      first_in => first_in,
      last_in => last_in,
      ready => ready,
      reset_out => reset_out,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_external_ports_adder_0_0_external_ports_adder_four is
  port (
    ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    first_in : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    last_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_external_ports_adder_0_0_external_ports_adder_four : entity is "external_ports_adder_four";
end design_1_external_ports_adder_0_0_external_ports_adder_four;

architecture STRUCTURE of design_1_external_ports_adder_0_0_external_ports_adder_four is
  signal reset_out : STD_LOGIC;
begin
u_external_ports_adder_four_dut_inst: entity work.design_1_external_ports_adder_0_0_external_ports_adder_four_dut
     port map (
      IPCORE_CLK => IPCORE_CLK,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      first_in => first_in,
      last_in => last_in,
      ready => ready,
      reset_out => reset_out,
      valid_in => valid_in,
      valid_out => valid_out
    );
u_external_ports_adder_four_reset_sync_inst: entity work.design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync
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
entity design_1_external_ports_adder_0_0 is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    last_in : in STD_LOGIC;
    first_in : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_external_ports_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_external_ports_adder_0_0 : entity is "design_1_external_ports_adder_0_0,external_ports_adder_four,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_external_ports_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_external_ports_adder_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_external_ports_adder_0_0 : entity is "external_ports_adder_four,Vivado 2023.2";
end design_1_external_ports_adder_0_0;

architecture STRUCTURE of design_1_external_ports_adder_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_external_ports_adder_0_0_external_ports_adder_four
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      first_in => first_in,
      last_in => last_in,
      ready => ready,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
