-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr  2 09:31:24 2024
-- Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/cotti/Desktop/The_end/Tutorial_HDL/06_simulink_coder/Vivado/06_simulink_coder.gen/sources_1/bd/design_1/ip/design_1_myip_0_0/design_1_myip_0_0_sim_netlist.vhdl
-- Design      : design_1_myip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_Cos_cordic_nw is
  port (
    \negate_reg_reg_reg[1]_0\ : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[4]\ : out STD_LOGIC;
    \slv_reg2_reg[5]\ : out STD_LOGIC;
    \x1_p_reg[0]_0\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \negate_reg_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \negate_reg_reg_reg[0]_1\ : in STD_LOGIC;
    \negate_reg_reg_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_Cos_cordic_nw : entity is "Cos_cordic_nw";
end design_1_myip_0_0_Cos_cordic_nw;

architecture STRUCTURE of design_1_myip_0_0_Cos_cordic_nw is
  signal \^b\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \negate_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \negate_reg_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \negate_reg_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^negate_reg_reg_reg[1]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^slv_reg2_reg[4]\ : STD_LOGIC;
  signal \^slv_reg2_reg[5]\ : STD_LOGIC;
  signal \z0_p[15]_i_10_n_0\ : STD_LOGIC;
begin
  B(2 downto 0) <= \^b\(2 downto 0);
  \negate_reg_reg_reg[1]_0\ <= \^negate_reg_reg_reg[1]_0\;
  \slv_reg2_reg[4]\ <= \^slv_reg2_reg[4]\;
  \slv_reg2_reg[5]\ <= \^slv_reg2_reg[5]\;
Add_add_temp_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^b\(0),
      O => \x1_p_reg[0]_0\
    );
Product_out1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^negate_reg_reg_reg[1]_0\,
      I1 => \^b\(0),
      O => \^b\(2)
    );
Product_out1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^b\(0),
      I1 => \^negate_reg_reg_reg[1]_0\,
      O => \^b\(1)
    );
\negate_reg_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F4F40"
    )
        port map (
      I0 => \negate_reg_reg_reg[0]_0\(6),
      I1 => \negate_reg_reg_reg[0]_2\,
      I2 => \negate_reg_reg_reg[0]_0\(8),
      I3 => \^slv_reg2_reg[5]\,
      I4 => \negate_reg_reg_reg[0]_0\(7),
      O => \negate_reg_reg[0]_i_2_n_0\
    );
\negate_reg_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3808CCCC"
    )
        port map (
      I0 => \^slv_reg2_reg[4]\,
      I1 => \negate_reg_reg_reg[0]_0\(8),
      I2 => \negate_reg_reg_reg[0]_0\(6),
      I3 => \negate_reg_reg_reg[0]_1\,
      I4 => \negate_reg_reg_reg[0]_0\(7),
      O => \negate_reg_reg[0]_i_3_n_0\
    );
\negate_reg_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \negate_reg_reg_reg[0]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\negate_reg_reg_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \negate_reg_reg[0]_i_2_n_0\,
      I1 => \negate_reg_reg[0]_i_3_n_0\,
      O => \negate_reg_reg_reg[0]_i_1_n_0\,
      S => \negate_reg_reg_reg[0]_0\(9)
    );
\negate_reg_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => \^negate_reg_reg_reg[1]_0\,
      R => '0'
    );
\x1_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '1',
      Q => \^b\(0),
      R => '0'
    );
\z0_p[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => \negate_reg_reg_reg[0]_0\(4),
      I1 => \negate_reg_reg_reg[0]_0\(2),
      I2 => \negate_reg_reg_reg[0]_0\(3),
      I3 => \negate_reg_reg_reg[0]_0\(5),
      O => \^slv_reg2_reg[4]\
    );
\z0_p[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \negate_reg_reg_reg[0]_0\(0),
      I1 => \negate_reg_reg_reg[0]_0\(1),
      O => \z0_p[15]_i_10_n_0\
    );
\z0_p[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA88800000000"
    )
        port map (
      I0 => \negate_reg_reg_reg[0]_0\(5),
      I1 => \negate_reg_reg_reg[0]_0\(3),
      I2 => \z0_p[15]_i_10_n_0\,
      I3 => \negate_reg_reg_reg[0]_0\(2),
      I4 => \negate_reg_reg_reg[0]_0\(4),
      I5 => \negate_reg_reg_reg[0]_0\(6),
      O => \^slv_reg2_reg[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_Sin_cordic_nw is
  port (
    \slv_reg2_reg[4]\ : out STD_LOGIC;
    \slv_reg2_reg[4]_0\ : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \z0_p_reg[15]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \z0_p_reg[14]_0\ : in STD_LOGIC;
    \z0_p_reg[15]_1\ : in STD_LOGIC;
    Product2_out1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Product2_out1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_Sin_cordic_nw : entity is "Sin_cordic_nw";
end design_1_myip_0_0_Sin_cordic_nw;

architecture STRUCTURE of design_1_myip_0_0_Sin_cordic_nw is
  signal Add_add_temp_i_16_n_2 : STD_LOGIC;
  signal Add_add_temp_i_16_n_3 : STD_LOGIC;
  signal Add_add_temp_i_17_n_0 : STD_LOGIC;
  signal Add_add_temp_i_17_n_1 : STD_LOGIC;
  signal Add_add_temp_i_17_n_2 : STD_LOGIC;
  signal Add_add_temp_i_17_n_3 : STD_LOGIC;
  signal Add_add_temp_i_18_n_0 : STD_LOGIC;
  signal Add_add_temp_i_18_n_1 : STD_LOGIC;
  signal Add_add_temp_i_18_n_2 : STD_LOGIC;
  signal Add_add_temp_i_18_n_3 : STD_LOGIC;
  signal Add_add_temp_i_19_n_0 : STD_LOGIC;
  signal Add_add_temp_i_19_n_1 : STD_LOGIC;
  signal Add_add_temp_i_19_n_2 : STD_LOGIC;
  signal Add_add_temp_i_19_n_3 : STD_LOGIC;
  signal Add_add_temp_i_20_n_0 : STD_LOGIC;
  signal Add_add_temp_i_21_n_0 : STD_LOGIC;
  signal Add_add_temp_i_22_n_0 : STD_LOGIC;
  signal Add_add_temp_i_23_n_0 : STD_LOGIC;
  signal Add_add_temp_i_24_n_0 : STD_LOGIC;
  signal Add_add_temp_i_25_n_0 : STD_LOGIC;
  signal Add_add_temp_i_26_n_0 : STD_LOGIC;
  signal Add_add_temp_i_27_n_0 : STD_LOGIC;
  signal Add_add_temp_i_28_n_0 : STD_LOGIC;
  signal Add_add_temp_i_29_n_0 : STD_LOGIC;
  signal Add_add_temp_i_30_n_0 : STD_LOGIC;
  signal Add_add_temp_i_32_n_0 : STD_LOGIC;
  signal Add_add_temp_i_33_n_0 : STD_LOGIC;
  signal Add_add_temp_i_34_n_0 : STD_LOGIC;
  signal Add_add_temp_i_35_n_0 : STD_LOGIC;
  signal corrected_theta : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal p_0_in0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \^slv_reg2_reg[4]\ : STD_LOGIC;
  signal \^slv_reg2_reg[4]_0\ : STD_LOGIC;
  signal y12_carry_i_1_n_0 : STD_LOGIC;
  signal y1_p : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \y1_p[15]_i_1_n_0\ : STD_LOGIC;
  signal y_p_negate_cast_1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal z0_p : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal \z0_p[14]_i_10_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_11_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_12_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_13_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_14_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_2_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_3_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_4_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_5_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_7_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_8_n_0\ : STD_LOGIC;
  signal \z0_p[14]_i_9_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_11_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_2_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_3_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_4_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_5_n_0\ : STD_LOGIC;
  signal \z0_p[15]_i_7_n_0\ : STD_LOGIC;
  signal NLW_Add_add_temp_i_16_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_Add_add_temp_i_16_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_y12_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_y12_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of Add_add_temp_i_16 : label is 35;
  attribute ADDER_THRESHOLD of Add_add_temp_i_17 : label is 35;
  attribute ADDER_THRESHOLD of Add_add_temp_i_18 : label is 35;
  attribute ADDER_THRESHOLD of Add_add_temp_i_19 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \z0_p[14]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \z0_p[14]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \z0_p[14]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z0_p[15]_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z0_p[15]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \z0_p[15]_i_9\ : label is "soft_lutpair1";
begin
  \slv_reg2_reg[4]\ <= \^slv_reg2_reg[4]\;
  \slv_reg2_reg[4]_0\ <= \^slv_reg2_reg[4]_0\;
Add_add_temp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(15),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(14)
    );
Add_add_temp_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(6),
      I1 => y1_p(6),
      I2 => Product2_out1_0,
      O => B(5)
    );
Add_add_temp_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(5),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(4)
    );
Add_add_temp_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(4),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(3)
    );
Add_add_temp_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(3),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(2)
    );
Add_add_temp_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(2),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(1)
    );
Add_add_temp_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(1),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(0)
    );
Add_add_temp_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => Add_add_temp_i_17_n_0,
      CO(3 downto 2) => NLW_Add_add_temp_i_16_CO_UNCONNECTED(3 downto 2),
      CO(1) => Add_add_temp_i_16_n_2,
      CO(0) => Add_add_temp_i_16_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_Add_add_temp_i_16_O_UNCONNECTED(3),
      O(2 downto 0) => y_p_negate_cast_1(15 downto 13),
      S(3) => '0',
      S(2) => Add_add_temp_i_20_n_0,
      S(1) => Add_add_temp_i_21_n_0,
      S(0) => Add_add_temp_i_22_n_0
    );
Add_add_temp_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => Add_add_temp_i_18_n_0,
      CO(3) => Add_add_temp_i_17_n_0,
      CO(2) => Add_add_temp_i_17_n_1,
      CO(1) => Add_add_temp_i_17_n_2,
      CO(0) => Add_add_temp_i_17_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_p_negate_cast_1(12 downto 9),
      S(3) => Add_add_temp_i_23_n_0,
      S(2) => Add_add_temp_i_24_n_0,
      S(1) => Add_add_temp_i_25_n_0,
      S(0) => Add_add_temp_i_26_n_0
    );
Add_add_temp_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => Add_add_temp_i_19_n_0,
      CO(3) => Add_add_temp_i_18_n_0,
      CO(2) => Add_add_temp_i_18_n_1,
      CO(1) => Add_add_temp_i_18_n_2,
      CO(0) => Add_add_temp_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_p_negate_cast_1(8 downto 5),
      S(3) => Add_add_temp_i_27_n_0,
      S(2) => Add_add_temp_i_28_n_0,
      S(1) => Add_add_temp_i_29_n_0,
      S(0) => Add_add_temp_i_30_n_0
    );
Add_add_temp_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Add_add_temp_i_19_n_0,
      CO(2) => Add_add_temp_i_19_n_1,
      CO(1) => Add_add_temp_i_19_n_2,
      CO(0) => Add_add_temp_i_19_n_3,
      CYINIT => Product2_out1,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_p_negate_cast_1(4 downto 1),
      S(3) => Add_add_temp_i_32_n_0,
      S(2) => Add_add_temp_i_33_n_0,
      S(1) => Add_add_temp_i_34_n_0,
      S(0) => Add_add_temp_i_35_n_0
    );
Add_add_temp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(14),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(13)
    );
Add_add_temp_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_20_n_0
    );
Add_add_temp_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_21_n_0
    );
Add_add_temp_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(6),
      O => Add_add_temp_i_22_n_0
    );
Add_add_temp_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_23_n_0
    );
Add_add_temp_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(6),
      O => Add_add_temp_i_24_n_0
    );
Add_add_temp_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(6),
      O => Add_add_temp_i_25_n_0
    );
Add_add_temp_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_26_n_0
    );
Add_add_temp_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(6),
      O => Add_add_temp_i_27_n_0
    );
Add_add_temp_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_28_n_0
    );
Add_add_temp_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(6),
      O => Add_add_temp_i_29_n_0
    );
Add_add_temp_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(13),
      I1 => y1_p(6),
      I2 => Product2_out1_0,
      O => B(12)
    );
Add_add_temp_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_30_n_0
    );
Add_add_temp_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_32_n_0
    );
Add_add_temp_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_33_n_0
    );
Add_add_temp_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_34_n_0
    );
Add_add_temp_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y1_p(15),
      O => Add_add_temp_i_35_n_0
    );
Add_add_temp_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(12),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(11)
    );
Add_add_temp_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(11),
      I1 => y1_p(6),
      I2 => Product2_out1_0,
      O => B(10)
    );
Add_add_temp_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(10),
      I1 => y1_p(6),
      I2 => Product2_out1_0,
      O => B(9)
    );
Add_add_temp_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(9),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(8)
    );
Add_add_temp_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(8),
      I1 => y1_p(6),
      I2 => Product2_out1_0,
      O => B(7)
    );
Add_add_temp_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => y_p_negate_cast_1(7),
      I1 => y1_p(15),
      I2 => Product2_out1_0,
      O => B(6)
    );
y12_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_y12_carry_CO_UNCONNECTED(3 downto 1),
      CO(0) => sel,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => z0_p(15),
      O(3 downto 2) => NLW_y12_carry_O_UNCONNECTED(3 downto 2),
      O(1) => p_0_in0,
      O(0) => NLW_y12_carry_O_UNCONNECTED(0),
      S(3 downto 1) => B"001",
      S(0) => y12_carry_i_1_n_0
    );
y12_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => z0_p(14),
      I1 => z0_p(15),
      O => y12_carry_i_1_n_0
    );
\y1_p[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => \y1_p[15]_i_1_n_0\
    );
\y1_p_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \y1_p[15]_i_1_n_0\,
      Q => y1_p(15),
      R => '0'
    );
\y1_p_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in0,
      Q => y1_p(6),
      R => '0'
    );
\z0_p[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \z0_p[14]_i_2_n_0\,
      I1 => \z0_p[14]_i_3_n_0\,
      I2 => \z0_p_reg[15]_0\(9),
      I3 => \z0_p[14]_i_4_n_0\,
      I4 => \z0_p_reg[15]_0\(8),
      I5 => \z0_p[14]_i_5_n_0\,
      O => corrected_theta(14)
    );
\z0_p[14]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(1),
      I2 => \z0_p_reg[15]_0\(2),
      I3 => \z0_p_reg[15]_0\(3),
      I4 => \z0_p_reg[15]_0\(5),
      O => \z0_p[14]_i_10_n_0\
    );
\z0_p[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(0),
      I4 => \z0_p_reg[15]_0\(3),
      I5 => \z0_p_reg[15]_0\(5),
      O => \z0_p[14]_i_11_n_0\
    );
\z0_p[14]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55556EEA"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(5),
      I1 => \z0_p_reg[15]_0\(3),
      I2 => \z0_p_reg[15]_0\(2),
      I3 => \z0_p_reg[15]_0\(1),
      I4 => \z0_p_reg[15]_0\(4),
      O => \z0_p[14]_i_12_n_0\
    );
\z0_p[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555566666"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(6),
      I1 => \z0_p_reg[15]_0\(4),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(2),
      I4 => \z0_p_reg[15]_0\(3),
      I5 => \z0_p_reg[15]_0\(5),
      O => \z0_p[14]_i_13_n_0\
    );
\z0_p[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001115FFFFFFFF"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(0),
      I4 => \z0_p_reg[15]_0\(3),
      I5 => \z0_p_reg[15]_0\(5),
      O => \z0_p[14]_i_14_n_0\
    );
\z0_p[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCBBBBFCCC8888"
    )
        port map (
      I0 => \z0_p_reg[14]_0\,
      I1 => \z0_p_reg[15]_0\(7),
      I2 => \z0_p[14]_i_7_n_0\,
      I3 => \z0_p_reg[15]_0\(5),
      I4 => \z0_p_reg[15]_0\(6),
      I5 => \z0_p[14]_i_8_n_0\,
      O => \z0_p[14]_i_2_n_0\
    );
\z0_p[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \z0_p[14]_i_9_n_0\,
      I1 => \z0_p_reg[15]_0\(7),
      I2 => \^slv_reg2_reg[4]\,
      I3 => \z0_p_reg[15]_0\(6),
      I4 => \z0_p[14]_i_10_n_0\,
      O => \z0_p[14]_i_3_n_0\
    );
\z0_p[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \z0_p[14]_i_11_n_0\,
      I1 => \z0_p_reg[15]_0\(7),
      I2 => \^slv_reg2_reg[4]_0\,
      I3 => \z0_p_reg[15]_0\(6),
      I4 => \z0_p[14]_i_12_n_0\,
      O => \z0_p[14]_i_4_n_0\
    );
\z0_p[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \z0_p[14]_i_13_n_0\,
      I1 => \z0_p_reg[15]_0\(7),
      I2 => \z0_p[14]_i_14_n_0\,
      I3 => \z0_p_reg[15]_0\(6),
      O => \z0_p[14]_i_5_n_0\
    );
\z0_p[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(3),
      I1 => \z0_p_reg[15]_0\(1),
      I2 => \z0_p_reg[15]_0\(0),
      I3 => \z0_p_reg[15]_0\(2),
      I4 => \z0_p_reg[15]_0\(4),
      O => \z0_p[14]_i_7_n_0\
    );
\z0_p[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557FFFFFFFFFFF"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(0),
      I4 => \z0_p_reg[15]_0\(3),
      I5 => \z0_p_reg[15]_0\(5),
      O => \z0_p[14]_i_8_n_0\
    );
\z0_p[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888899955555555"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(5),
      I1 => \z0_p_reg[15]_0\(3),
      I2 => \z0_p_reg[15]_0\(0),
      I3 => \z0_p_reg[15]_0\(1),
      I4 => \z0_p_reg[15]_0\(2),
      I5 => \z0_p_reg[15]_0\(4),
      O => \z0_p[14]_i_9_n_0\
    );
\z0_p[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(2),
      I1 => \z0_p_reg[15]_0\(3),
      O => \z0_p[15]_i_11_n_0\
    );
\z0_p[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \z0_p[15]_i_4_n_0\,
      I1 => \z0_p_reg[15]_0\(8),
      I2 => \z0_p[15]_i_5_n_0\,
      I3 => \z0_p_reg[15]_0\(6),
      I4 => \z0_p_reg[15]_0\(7),
      I5 => \z0_p_reg[15]_1\,
      O => \z0_p[15]_i_2_n_0\
    );
\z0_p[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88888BB88BB"
    )
        port map (
      I0 => \z0_p[15]_i_7_n_0\,
      I1 => \z0_p_reg[15]_0\(8),
      I2 => \^slv_reg2_reg[4]_0\,
      I3 => \z0_p_reg[15]_0\(7),
      I4 => \^slv_reg2_reg[4]\,
      I5 => \z0_p_reg[15]_0\(6),
      O => \z0_p[15]_i_3_n_0\
    );
\z0_p[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33B8"
    )
        port map (
      I0 => \z0_p[14]_i_11_n_0\,
      I1 => \z0_p_reg[15]_0\(7),
      I2 => \z0_p[14]_i_10_n_0\,
      I3 => \z0_p_reg[15]_0\(6),
      O => \z0_p[15]_i_4_n_0\
    );
\z0_p[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(3),
      I4 => \z0_p_reg[15]_0\(5),
      O => \z0_p[15]_i_5_n_0\
    );
\z0_p[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00BAFFBA00"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(5),
      I1 => \z0_p[15]_i_11_n_0\,
      I2 => \z0_p_reg[15]_0\(4),
      I3 => \z0_p_reg[15]_0\(7),
      I4 => \z0_p[14]_i_8_n_0\,
      I5 => \z0_p_reg[15]_0\(6),
      O => \z0_p[15]_i_7_n_0\
    );
\z0_p[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA888"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(0),
      I3 => \z0_p_reg[15]_0\(1),
      I4 => \z0_p_reg[15]_0\(3),
      I5 => \z0_p_reg[15]_0\(5),
      O => \^slv_reg2_reg[4]_0\
    );
\z0_p[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => \z0_p_reg[15]_0\(4),
      I1 => \z0_p_reg[15]_0\(2),
      I2 => \z0_p_reg[15]_0\(1),
      I3 => \z0_p_reg[15]_0\(3),
      I4 => \z0_p_reg[15]_0\(5),
      O => \^slv_reg2_reg[4]\
    );
\z0_p_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => corrected_theta(14),
      Q => z0_p(14),
      R => '0'
    );
\z0_p_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => corrected_theta(15),
      Q => z0_p(15),
      R => '0'
    );
\z0_p_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \z0_p[15]_i_2_n_0\,
      I1 => \z0_p[15]_i_3_n_0\,
      O => corrected_theta(15),
      S => \z0_p_reg[15]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_my_block is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Add_add_temp_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_my_block : entity is "my_block";
end design_1_myip_0_0_my_block;

architecture STRUCTURE of design_1_myip_0_0_my_block is
  signal Add1_add_temp_n_100 : STD_LOGIC;
  signal Add1_add_temp_n_101 : STD_LOGIC;
  signal Add1_add_temp_n_102 : STD_LOGIC;
  signal Add1_add_temp_n_103 : STD_LOGIC;
  signal Add1_add_temp_n_104 : STD_LOGIC;
  signal Add1_add_temp_n_105 : STD_LOGIC;
  signal Add1_add_temp_n_92 : STD_LOGIC;
  signal Add1_add_temp_n_93 : STD_LOGIC;
  signal Add1_add_temp_n_94 : STD_LOGIC;
  signal Add1_add_temp_n_95 : STD_LOGIC;
  signal Add1_add_temp_n_96 : STD_LOGIC;
  signal Add1_add_temp_n_97 : STD_LOGIC;
  signal Add1_add_temp_n_98 : STD_LOGIC;
  signal Add1_add_temp_n_99 : STD_LOGIC;
  signal Add_add_temp_n_100 : STD_LOGIC;
  signal Add_add_temp_n_101 : STD_LOGIC;
  signal Add_add_temp_n_102 : STD_LOGIC;
  signal Add_add_temp_n_103 : STD_LOGIC;
  signal Add_add_temp_n_104 : STD_LOGIC;
  signal Add_add_temp_n_105 : STD_LOGIC;
  signal Add_add_temp_n_92 : STD_LOGIC;
  signal Add_add_temp_n_93 : STD_LOGIC;
  signal Add_add_temp_n_94 : STD_LOGIC;
  signal Add_add_temp_n_95 : STD_LOGIC;
  signal Add_add_temp_n_96 : STD_LOGIC;
  signal Add_add_temp_n_97 : STD_LOGIC;
  signal Add_add_temp_n_98 : STD_LOGIC;
  signal Add_add_temp_n_99 : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal Product2_out1_n_100 : STD_LOGIC;
  signal Product2_out1_n_101 : STD_LOGIC;
  signal Product2_out1_n_102 : STD_LOGIC;
  signal Product2_out1_n_103 : STD_LOGIC;
  signal Product2_out1_n_104 : STD_LOGIC;
  signal Product2_out1_n_105 : STD_LOGIC;
  signal Product2_out1_n_74 : STD_LOGIC;
  signal Product2_out1_n_75 : STD_LOGIC;
  signal Product2_out1_n_76 : STD_LOGIC;
  signal Product2_out1_n_77 : STD_LOGIC;
  signal Product2_out1_n_78 : STD_LOGIC;
  signal Product2_out1_n_79 : STD_LOGIC;
  signal Product2_out1_n_80 : STD_LOGIC;
  signal Product2_out1_n_81 : STD_LOGIC;
  signal Product2_out1_n_82 : STD_LOGIC;
  signal Product2_out1_n_83 : STD_LOGIC;
  signal Product2_out1_n_84 : STD_LOGIC;
  signal Product2_out1_n_85 : STD_LOGIC;
  signal Product2_out1_n_86 : STD_LOGIC;
  signal Product2_out1_n_87 : STD_LOGIC;
  signal Product2_out1_n_88 : STD_LOGIC;
  signal Product2_out1_n_89 : STD_LOGIC;
  signal Product2_out1_n_90 : STD_LOGIC;
  signal Product2_out1_n_91 : STD_LOGIC;
  signal Product2_out1_n_92 : STD_LOGIC;
  signal Product2_out1_n_93 : STD_LOGIC;
  signal Product2_out1_n_94 : STD_LOGIC;
  signal Product2_out1_n_95 : STD_LOGIC;
  signal Product2_out1_n_96 : STD_LOGIC;
  signal Product2_out1_n_97 : STD_LOGIC;
  signal Product2_out1_n_98 : STD_LOGIC;
  signal Product2_out1_n_99 : STD_LOGIC;
  signal Product_out1_n_100 : STD_LOGIC;
  signal Product_out1_n_101 : STD_LOGIC;
  signal Product_out1_n_102 : STD_LOGIC;
  signal Product_out1_n_103 : STD_LOGIC;
  signal Product_out1_n_104 : STD_LOGIC;
  signal Product_out1_n_105 : STD_LOGIC;
  signal Product_out1_n_74 : STD_LOGIC;
  signal Product_out1_n_75 : STD_LOGIC;
  signal Product_out1_n_76 : STD_LOGIC;
  signal Product_out1_n_77 : STD_LOGIC;
  signal Product_out1_n_78 : STD_LOGIC;
  signal Product_out1_n_79 : STD_LOGIC;
  signal Product_out1_n_80 : STD_LOGIC;
  signal Product_out1_n_81 : STD_LOGIC;
  signal Product_out1_n_82 : STD_LOGIC;
  signal Product_out1_n_83 : STD_LOGIC;
  signal Product_out1_n_84 : STD_LOGIC;
  signal Product_out1_n_85 : STD_LOGIC;
  signal Product_out1_n_86 : STD_LOGIC;
  signal Product_out1_n_87 : STD_LOGIC;
  signal Product_out1_n_88 : STD_LOGIC;
  signal Product_out1_n_89 : STD_LOGIC;
  signal Product_out1_n_90 : STD_LOGIC;
  signal Product_out1_n_91 : STD_LOGIC;
  signal Product_out1_n_92 : STD_LOGIC;
  signal Product_out1_n_93 : STD_LOGIC;
  signal Product_out1_n_94 : STD_LOGIC;
  signal Product_out1_n_95 : STD_LOGIC;
  signal Product_out1_n_96 : STD_LOGIC;
  signal Product_out1_n_97 : STD_LOGIC;
  signal Product_out1_n_98 : STD_LOGIC;
  signal Product_out1_n_99 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal u_Trigonometric_Function1_inst_n_0 : STD_LOGIC;
  signal u_Trigonometric_Function1_inst_n_4 : STD_LOGIC;
  signal u_Trigonometric_Function1_inst_n_5 : STD_LOGIC;
  signal u_Trigonometric_Function1_inst_n_6 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_0 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_1 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_10 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_11 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_12 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_13 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_14 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_15 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_16 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_2 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_3 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_4 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_5 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_6 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_7 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_8 : STD_LOGIC;
  signal u_Trigonometric_Function_inst_n_9 : STD_LOGIC;
  signal x1_p : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Add1_add_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Add1_add_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Add1_add_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Add1_add_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Add1_add_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_Add1_add_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Add_add_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Add_add_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Add_add_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Add_add_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Add_add_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_Add_add_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Product2_out1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Product2_out1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Product2_out1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Product2_out1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Product2_out1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Product2_out1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Product_out1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Product_out1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Product_out1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Product_out1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Product_out1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Product_out1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Add1_add_temp : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Add_add_temp : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Product2_out1 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Product_out1 : label is "{SYNTH-11 {cell *THIS*}}";
begin
Add1_add_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Add_add_temp_0(15),
      A(28) => Add_add_temp_0(15),
      A(27) => Add_add_temp_0(15),
      A(26) => Add_add_temp_0(15),
      A(25) => Add_add_temp_0(15),
      A(24) => Add_add_temp_0(15),
      A(23) => Add_add_temp_0(15),
      A(22) => Add_add_temp_0(15),
      A(21) => Add_add_temp_0(15),
      A(20) => Add_add_temp_0(15),
      A(19) => Add_add_temp_0(15),
      A(18) => Add_add_temp_0(15),
      A(17) => Add_add_temp_0(15),
      A(16) => Add_add_temp_0(15),
      A(15 downto 0) => Add_add_temp_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Add1_add_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15) => B(15),
      B(14) => B(15),
      B(13) => B(13),
      B(12) => B(15),
      B(11) => B(13),
      B(10) => B(13),
      B(9) => B(15),
      B(8) => B(13),
      B(7) => B(15),
      B(6) => B(13),
      B(5) => B(15),
      B(4) => B(15),
      B(3) => B(15),
      B(2) => B(15),
      B(1) => B(15),
      B(0) => x1_p(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Add1_add_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => Product2_out1_n_76,
      C(46) => Product2_out1_n_76,
      C(45) => Product2_out1_n_76,
      C(44) => Product2_out1_n_76,
      C(43) => Product2_out1_n_76,
      C(42) => Product2_out1_n_76,
      C(41) => Product2_out1_n_76,
      C(40) => Product2_out1_n_76,
      C(39) => Product2_out1_n_76,
      C(38) => Product2_out1_n_76,
      C(37) => Product2_out1_n_76,
      C(36) => Product2_out1_n_76,
      C(35) => Product2_out1_n_76,
      C(34) => Product2_out1_n_76,
      C(33) => Product2_out1_n_76,
      C(32) => Product2_out1_n_76,
      C(31) => Product2_out1_n_76,
      C(30) => Product2_out1_n_76,
      C(29) => Product2_out1_n_76,
      C(28) => Product2_out1_n_77,
      C(27) => Product2_out1_n_78,
      C(26) => Product2_out1_n_79,
      C(25) => Product2_out1_n_80,
      C(24) => Product2_out1_n_81,
      C(23) => Product2_out1_n_82,
      C(22) => Product2_out1_n_83,
      C(21) => Product2_out1_n_84,
      C(20) => Product2_out1_n_85,
      C(19) => Product2_out1_n_86,
      C(18) => Product2_out1_n_87,
      C(17) => Product2_out1_n_88,
      C(16) => Product2_out1_n_89,
      C(15) => Product2_out1_n_90,
      C(14) => Product2_out1_n_91,
      C(13) => Product2_out1_n_92,
      C(12) => Product2_out1_n_93,
      C(11) => Product2_out1_n_94,
      C(10) => Product2_out1_n_95,
      C(9) => Product2_out1_n_96,
      C(8) => Product2_out1_n_97,
      C(7) => Product2_out1_n_98,
      C(6) => Product2_out1_n_99,
      C(5) => Product2_out1_n_100,
      C(4) => Product2_out1_n_101,
      C(3) => Product2_out1_n_102,
      C(2) => Product2_out1_n_103,
      C(1) => Product2_out1_n_104,
      C(0) => Product2_out1_n_105,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Add1_add_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Add1_add_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Add1_add_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_Add1_add_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_Add1_add_temp_P_UNCONNECTED(47 downto 30),
      P(29 downto 14) => data4(15 downto 0),
      P(13) => Add1_add_temp_n_92,
      P(12) => Add1_add_temp_n_93,
      P(11) => Add1_add_temp_n_94,
      P(10) => Add1_add_temp_n_95,
      P(9) => Add1_add_temp_n_96,
      P(8) => Add1_add_temp_n_97,
      P(7) => Add1_add_temp_n_98,
      P(6) => Add1_add_temp_n_99,
      P(5) => Add1_add_temp_n_100,
      P(4) => Add1_add_temp_n_101,
      P(3) => Add1_add_temp_n_102,
      P(2) => Add1_add_temp_n_103,
      P(1) => Add1_add_temp_n_104,
      P(0) => Add1_add_temp_n_105,
      PATTERNBDETECT => NLW_Add1_add_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Add1_add_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Add1_add_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Add1_add_temp_UNDERFLOW_UNCONNECTED
    );
Add_add_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Add_add_temp_0(15),
      A(28) => Add_add_temp_0(15),
      A(27) => Add_add_temp_0(15),
      A(26) => Add_add_temp_0(15),
      A(25) => Add_add_temp_0(15),
      A(24) => Add_add_temp_0(15),
      A(23) => Add_add_temp_0(15),
      A(22) => Add_add_temp_0(15),
      A(21) => Add_add_temp_0(15),
      A(20) => Add_add_temp_0(15),
      A(19) => Add_add_temp_0(15),
      A(18) => Add_add_temp_0(15),
      A(17) => Add_add_temp_0(15),
      A(16) => Add_add_temp_0(15),
      A(15 downto 0) => Add_add_temp_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Add_add_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => u_Trigonometric_Function_inst_n_2,
      B(16) => u_Trigonometric_Function_inst_n_2,
      B(15) => u_Trigonometric_Function_inst_n_2,
      B(14) => u_Trigonometric_Function_inst_n_3,
      B(13) => u_Trigonometric_Function_inst_n_4,
      B(12) => u_Trigonometric_Function_inst_n_5,
      B(11) => u_Trigonometric_Function_inst_n_6,
      B(10) => u_Trigonometric_Function_inst_n_7,
      B(9) => u_Trigonometric_Function_inst_n_8,
      B(8) => u_Trigonometric_Function_inst_n_9,
      B(7) => u_Trigonometric_Function_inst_n_10,
      B(6) => u_Trigonometric_Function_inst_n_11,
      B(5) => u_Trigonometric_Function_inst_n_12,
      B(4) => u_Trigonometric_Function_inst_n_13,
      B(3) => u_Trigonometric_Function_inst_n_14,
      B(2) => u_Trigonometric_Function_inst_n_15,
      B(1) => u_Trigonometric_Function_inst_n_16,
      B(0) => x1_p(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Add_add_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => Product_out1_n_76,
      C(46) => Product_out1_n_76,
      C(45) => Product_out1_n_76,
      C(44) => Product_out1_n_76,
      C(43) => Product_out1_n_76,
      C(42) => Product_out1_n_76,
      C(41) => Product_out1_n_76,
      C(40) => Product_out1_n_76,
      C(39) => Product_out1_n_76,
      C(38) => Product_out1_n_76,
      C(37) => Product_out1_n_76,
      C(36) => Product_out1_n_76,
      C(35) => Product_out1_n_76,
      C(34) => Product_out1_n_76,
      C(33) => Product_out1_n_76,
      C(32) => Product_out1_n_76,
      C(31) => Product_out1_n_76,
      C(30) => Product_out1_n_76,
      C(29) => Product_out1_n_76,
      C(28) => Product_out1_n_77,
      C(27) => Product_out1_n_78,
      C(26) => Product_out1_n_79,
      C(25) => Product_out1_n_80,
      C(24) => Product_out1_n_81,
      C(23) => Product_out1_n_82,
      C(22) => Product_out1_n_83,
      C(21) => Product_out1_n_84,
      C(20) => Product_out1_n_85,
      C(19) => Product_out1_n_86,
      C(18) => Product_out1_n_87,
      C(17) => Product_out1_n_88,
      C(16) => Product_out1_n_89,
      C(15) => Product_out1_n_90,
      C(14) => Product_out1_n_91,
      C(13) => Product_out1_n_92,
      C(12) => Product_out1_n_93,
      C(11) => Product_out1_n_94,
      C(10) => Product_out1_n_95,
      C(9) => Product_out1_n_96,
      C(8) => Product_out1_n_97,
      C(7) => Product_out1_n_98,
      C(6) => Product_out1_n_99,
      C(5) => Product_out1_n_100,
      C(4) => Product_out1_n_101,
      C(3) => Product_out1_n_102,
      C(2) => Product_out1_n_103,
      C(1) => Product_out1_n_104,
      C(0) => Product_out1_n_105,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Add_add_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Add_add_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Add_add_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_Add_add_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_Add_add_temp_P_UNCONNECTED(47 downto 30),
      P(29 downto 14) => data3(15 downto 0),
      P(13) => Add_add_temp_n_92,
      P(12) => Add_add_temp_n_93,
      P(11) => Add_add_temp_n_94,
      P(10) => Add_add_temp_n_95,
      P(9) => Add_add_temp_n_96,
      P(8) => Add_add_temp_n_97,
      P(7) => Add_add_temp_n_98,
      P(6) => Add_add_temp_n_99,
      P(5) => Add_add_temp_n_100,
      P(4) => Add_add_temp_n_101,
      P(3) => Add_add_temp_n_102,
      P(2) => Add_add_temp_n_103,
      P(1) => Add_add_temp_n_104,
      P(0) => Add_add_temp_n_105,
      PATTERNBDETECT => NLW_Add_add_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Add_add_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Add_add_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Add_add_temp_UNDERFLOW_UNCONNECTED
    );
Product2_out1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Q(15),
      A(28) => Q(15),
      A(27) => Q(15),
      A(26) => Q(15),
      A(25) => Q(15),
      A(24) => Q(15),
      A(23) => Q(15),
      A(22) => Q(15),
      A(21) => Q(15),
      A(20) => Q(15),
      A(19) => Q(15),
      A(18) => Q(15),
      A(17) => Q(15),
      A(16) => Q(15),
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Product2_out1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => u_Trigonometric_Function_inst_n_2,
      B(16) => u_Trigonometric_Function_inst_n_2,
      B(15) => u_Trigonometric_Function_inst_n_2,
      B(14) => u_Trigonometric_Function_inst_n_3,
      B(13) => u_Trigonometric_Function_inst_n_4,
      B(12) => u_Trigonometric_Function_inst_n_5,
      B(11) => u_Trigonometric_Function_inst_n_6,
      B(10) => u_Trigonometric_Function_inst_n_7,
      B(9) => u_Trigonometric_Function_inst_n_8,
      B(8) => u_Trigonometric_Function_inst_n_9,
      B(7) => u_Trigonometric_Function_inst_n_10,
      B(6) => u_Trigonometric_Function_inst_n_11,
      B(5) => u_Trigonometric_Function_inst_n_12,
      B(4) => u_Trigonometric_Function_inst_n_13,
      B(3) => u_Trigonometric_Function_inst_n_14,
      B(2) => u_Trigonometric_Function_inst_n_15,
      B(1) => u_Trigonometric_Function_inst_n_16,
      B(0) => x1_p(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Product2_out1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Product2_out1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Product2_out1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Product2_out1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Product2_out1_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Product2_out1_P_UNCONNECTED(47 downto 32),
      P(31) => Product2_out1_n_74,
      P(30) => Product2_out1_n_75,
      P(29) => Product2_out1_n_76,
      P(28) => Product2_out1_n_77,
      P(27) => Product2_out1_n_78,
      P(26) => Product2_out1_n_79,
      P(25) => Product2_out1_n_80,
      P(24) => Product2_out1_n_81,
      P(23) => Product2_out1_n_82,
      P(22) => Product2_out1_n_83,
      P(21) => Product2_out1_n_84,
      P(20) => Product2_out1_n_85,
      P(19) => Product2_out1_n_86,
      P(18) => Product2_out1_n_87,
      P(17) => Product2_out1_n_88,
      P(16) => Product2_out1_n_89,
      P(15) => Product2_out1_n_90,
      P(14) => Product2_out1_n_91,
      P(13) => Product2_out1_n_92,
      P(12) => Product2_out1_n_93,
      P(11) => Product2_out1_n_94,
      P(10) => Product2_out1_n_95,
      P(9) => Product2_out1_n_96,
      P(8) => Product2_out1_n_97,
      P(7) => Product2_out1_n_98,
      P(6) => Product2_out1_n_99,
      P(5) => Product2_out1_n_100,
      P(4) => Product2_out1_n_101,
      P(3) => Product2_out1_n_102,
      P(2) => Product2_out1_n_103,
      P(1) => Product2_out1_n_104,
      P(0) => Product2_out1_n_105,
      PATTERNBDETECT => NLW_Product2_out1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Product2_out1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Product2_out1_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Product2_out1_UNDERFLOW_UNCONNECTED
    );
Product_out1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Q(15),
      A(28) => Q(15),
      A(27) => Q(15),
      A(26) => Q(15),
      A(25) => Q(15),
      A(24) => Q(15),
      A(23) => Q(15),
      A(22) => Q(15),
      A(21) => Q(15),
      A(20) => Q(15),
      A(19) => Q(15),
      A(18) => Q(15),
      A(17) => Q(15),
      A(16) => Q(15),
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Product_out1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15) => B(15),
      B(14) => B(15),
      B(13) => B(13),
      B(12) => B(15),
      B(11) => B(13),
      B(10) => B(13),
      B(9) => B(15),
      B(8) => B(13),
      B(7) => B(15),
      B(6) => B(13),
      B(5) => B(15),
      B(4) => B(15),
      B(3) => B(15),
      B(2) => B(15),
      B(1) => B(15),
      B(0) => x1_p(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Product_out1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Product_out1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Product_out1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Product_out1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Product_out1_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Product_out1_P_UNCONNECTED(47 downto 32),
      P(31) => Product_out1_n_74,
      P(30) => Product_out1_n_75,
      P(29) => Product_out1_n_76,
      P(28) => Product_out1_n_77,
      P(27) => Product_out1_n_78,
      P(26) => Product_out1_n_79,
      P(25) => Product_out1_n_80,
      P(24) => Product_out1_n_81,
      P(23) => Product_out1_n_82,
      P(22) => Product_out1_n_83,
      P(21) => Product_out1_n_84,
      P(20) => Product_out1_n_85,
      P(19) => Product_out1_n_86,
      P(18) => Product_out1_n_87,
      P(17) => Product_out1_n_88,
      P(16) => Product_out1_n_89,
      P(15) => Product_out1_n_90,
      P(14) => Product_out1_n_91,
      P(13) => Product_out1_n_92,
      P(12) => Product_out1_n_93,
      P(11) => Product_out1_n_94,
      P(10) => Product_out1_n_95,
      P(9) => Product_out1_n_96,
      P(8) => Product_out1_n_97,
      P(7) => Product_out1_n_98,
      P(6) => Product_out1_n_99,
      P(5) => Product_out1_n_100,
      P(4) => Product_out1_n_101,
      P(3) => Product_out1_n_102,
      P(2) => Product_out1_n_103,
      P(1) => Product_out1_n_104,
      P(0) => Product_out1_n_105,
      PATTERNBDETECT => NLW_Product_out1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Product_out1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Product_out1_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Product_out1_UNDERFLOW_UNCONNECTED
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(0),
      I3 => sel0(0),
      I4 => data3(0),
      I5 => sel0(2),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(0),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(0),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[0]\,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[10]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(10),
      I3 => sel0(0),
      I4 => data3(10),
      I5 => sel0(2),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(10),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(10),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[10]\,
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[11]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(11),
      I3 => sel0(0),
      I4 => data3(11),
      I5 => sel0(2),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(11),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(11),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[11]\,
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[12]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(12),
      I3 => sel0(0),
      I4 => data3(12),
      I5 => sel0(2),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(12),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(12),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[12]\,
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(13),
      I3 => sel0(0),
      I4 => data3(13),
      I5 => sel0(2),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(13),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(13),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[13]\,
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(14),
      I1 => \axi_rdata_reg[15]\(14),
      I2 => sel0(1),
      I3 => Add_add_temp_0(14),
      I4 => sel0(0),
      I5 => Q(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(0),
      I1 => data4(14),
      I2 => sel0(1),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(15),
      I1 => \axi_rdata_reg[15]\(15),
      I2 => sel0(1),
      I3 => Add_add_temp_0(15),
      I4 => sel0(0),
      I5 => Q(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sel0(0),
      I1 => data4(15),
      I2 => sel0(1),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[1]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(1),
      I3 => sel0(0),
      I4 => data3(1),
      I5 => sel0(2),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(1),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(1),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[1]\,
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[2]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(2),
      I3 => sel0(0),
      I4 => data3(2),
      I5 => sel0(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(2),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(2),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[2]\,
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[3]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(3),
      I3 => sel0(0),
      I4 => data3(3),
      I5 => sel0(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(3),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(3),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[3]\,
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[4]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(4),
      I3 => sel0(0),
      I4 => data3(4),
      I5 => sel0(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(4),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(4),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[4]\,
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[5]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(5),
      I3 => sel0(0),
      I4 => data3(5),
      I5 => sel0(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(5),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(5),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[5]\,
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[6]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(6),
      I3 => sel0(0),
      I4 => data3(6),
      I5 => sel0(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(6),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(6),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[6]\,
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[7]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(7),
      I3 => sel0(0),
      I4 => data3(7),
      I5 => sel0(2),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(7),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(7),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[7]\,
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[8]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(8),
      I3 => sel0(0),
      I4 => data3(8),
      I5 => sel0(2),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(8),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(8),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[8]\,
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata_reg[9]\,
      I1 => sel0(1),
      I2 => \axi_rdata_reg[15]\(9),
      I3 => sel0(0),
      I4 => data3(9),
      I5 => sel0(2),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45405F5F45400A0A"
    )
        port map (
      I0 => sel0(2),
      I1 => data3(9),
      I2 => sel0(0),
      I3 => \axi_rdata_reg[15]\(9),
      I4 => sel0(1),
      I5 => \axi_rdata_reg[9]\,
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => D(0),
      S => data4(0)
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      O => D(10),
      S => data4(10)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      O => D(11),
      S => data4(11)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      O => D(12),
      S => data4(12)
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      O => D(13),
      S => data4(13)
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      O => D(14),
      S => sel0(2)
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      O => D(15),
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => D(1),
      S => data4(1)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => D(2),
      S => data4(2)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => D(3),
      S => data4(3)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => D(4),
      S => data4(4)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      O => D(5),
      S => data4(5)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      O => D(6),
      S => data4(6)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      O => D(7),
      S => data4(7)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      O => D(8),
      S => data4(8)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      O => D(9),
      S => data4(9)
    );
u_Trigonometric_Function1_inst: entity work.design_1_myip_0_0_Cos_cordic_nw
     port map (
      B(2) => B(15),
      B(1) => B(13),
      B(0) => x1_p(0),
      \negate_reg_reg_reg[0]_0\(9 downto 0) => \axi_rdata_reg[15]\(9 downto 0),
      \negate_reg_reg_reg[0]_1\ => u_Trigonometric_Function_inst_n_1,
      \negate_reg_reg_reg[0]_2\ => u_Trigonometric_Function_inst_n_0,
      \negate_reg_reg_reg[1]_0\ => u_Trigonometric_Function1_inst_n_0,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg2_reg[4]\ => u_Trigonometric_Function1_inst_n_4,
      \slv_reg2_reg[5]\ => u_Trigonometric_Function1_inst_n_5,
      \x1_p_reg[0]_0\ => u_Trigonometric_Function1_inst_n_6
    );
u_Trigonometric_Function_inst: entity work.design_1_myip_0_0_Sin_cordic_nw
     port map (
      B(14) => u_Trigonometric_Function_inst_n_2,
      B(13) => u_Trigonometric_Function_inst_n_3,
      B(12) => u_Trigonometric_Function_inst_n_4,
      B(11) => u_Trigonometric_Function_inst_n_5,
      B(10) => u_Trigonometric_Function_inst_n_6,
      B(9) => u_Trigonometric_Function_inst_n_7,
      B(8) => u_Trigonometric_Function_inst_n_8,
      B(7) => u_Trigonometric_Function_inst_n_9,
      B(6) => u_Trigonometric_Function_inst_n_10,
      B(5) => u_Trigonometric_Function_inst_n_11,
      B(4) => u_Trigonometric_Function_inst_n_12,
      B(3) => u_Trigonometric_Function_inst_n_13,
      B(2) => u_Trigonometric_Function_inst_n_14,
      B(1) => u_Trigonometric_Function_inst_n_15,
      B(0) => u_Trigonometric_Function_inst_n_16,
      Product2_out1 => u_Trigonometric_Function1_inst_n_6,
      Product2_out1_0 => u_Trigonometric_Function1_inst_n_0,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg2_reg[4]\ => u_Trigonometric_Function_inst_n_0,
      \slv_reg2_reg[4]_0\ => u_Trigonometric_Function_inst_n_1,
      \z0_p_reg[14]_0\ => u_Trigonometric_Function1_inst_n_4,
      \z0_p_reg[15]_0\(9 downto 0) => \axi_rdata_reg[15]\(9 downto 0),
      \z0_p_reg[15]_1\ => u_Trigonometric_Function1_inst_n_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_myip_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_myip_v1_0_S00_AXI : entity is "myip_v1_0_S00_AXI";
end design_1_myip_0_0_myip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_myip_0_0_myip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal moveFractionLengthUp_1 : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => sel0(0),
      I2 => slv_reg0(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => sel0(0),
      I2 => slv_reg0(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => sel0(0),
      I2 => slv_reg0(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => sel0(0),
      I2 => slv_reg0(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => sel0(0),
      I2 => slv_reg0(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => sel0(0),
      I2 => slv_reg1(16),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[16]\,
      I5 => sel0(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => sel0(0),
      I2 => slv_reg1(17),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[17]\,
      I5 => sel0(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => sel0(0),
      I2 => slv_reg1(18),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[18]\,
      I5 => sel0(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => sel0(0),
      I2 => slv_reg1(19),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[19]\,
      I5 => sel0(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => sel0(0),
      I2 => slv_reg0(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => sel0(0),
      I2 => slv_reg1(20),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[20]\,
      I5 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => sel0(0),
      I2 => slv_reg1(21),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[21]\,
      I5 => sel0(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => sel0(0),
      I2 => slv_reg1(22),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[22]\,
      I5 => sel0(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => sel0(0),
      I2 => slv_reg1(23),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[23]\,
      I5 => sel0(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => sel0(0),
      I2 => slv_reg1(24),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[24]\,
      I5 => sel0(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => sel0(0),
      I2 => slv_reg1(25),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[25]\,
      I5 => sel0(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => sel0(0),
      I2 => slv_reg1(26),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[26]\,
      I5 => sel0(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => sel0(0),
      I2 => slv_reg1(27),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[27]\,
      I5 => sel0(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => sel0(0),
      I2 => slv_reg1(28),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[28]\,
      I5 => sel0(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => sel0(0),
      I2 => slv_reg1(29),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[29]\,
      I5 => sel0(2),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => sel0(0),
      I2 => slv_reg0(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => sel0(0),
      I2 => slv_reg1(30),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[30]\,
      I5 => sel0(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => sel0(0),
      I2 => slv_reg1(31),
      I3 => sel0(1),
      I4 => \slv_reg2_reg_n_0_[31]\,
      I5 => sel0(2),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => sel0(0),
      I2 => slv_reg0(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => sel0(0),
      I2 => slv_reg0(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => sel0(0),
      I2 => slv_reg0(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => sel0(0),
      I2 => slv_reg0(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => sel0(0),
      I2 => slv_reg0(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => sel0(0),
      I2 => slv_reg0(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => sel0(0),
      I2 => slv_reg0(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
my_block_instance: entity work.design_1_myip_0_0_my_block
     port map (
      Add_add_temp_0(15 downto 0) => slv_reg1(15 downto 0),
      D(15 downto 0) => reg_data_out(15 downto 0),
      Q(15 downto 0) => slv_reg0(15 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_4_n_0\,
      \axi_rdata_reg[10]\ => \axi_rdata[10]_i_4_n_0\,
      \axi_rdata_reg[11]\ => \axi_rdata[11]_i_4_n_0\,
      \axi_rdata_reg[12]\ => \axi_rdata[12]_i_4_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata[13]_i_4_n_0\,
      \axi_rdata_reg[15]\(15) => \slv_reg2_reg_n_0_[15]\,
      \axi_rdata_reg[15]\(14) => \slv_reg2_reg_n_0_[14]\,
      \axi_rdata_reg[15]\(13) => \slv_reg2_reg_n_0_[13]\,
      \axi_rdata_reg[15]\(12) => \slv_reg2_reg_n_0_[12]\,
      \axi_rdata_reg[15]\(11) => \slv_reg2_reg_n_0_[11]\,
      \axi_rdata_reg[15]\(10) => \slv_reg2_reg_n_0_[10]\,
      \axi_rdata_reg[15]\(9 downto 0) => moveFractionLengthUp_1(15 downto 6),
      \axi_rdata_reg[1]\ => \axi_rdata[1]_i_4_n_0\,
      \axi_rdata_reg[2]\ => \axi_rdata[2]_i_4_n_0\,
      \axi_rdata_reg[3]\ => \axi_rdata[3]_i_4_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata[4]_i_4_n_0\,
      \axi_rdata_reg[5]\ => \axi_rdata[5]_i_4_n_0\,
      \axi_rdata_reg[6]\ => \axi_rdata[6]_i_4_n_0\,
      \axi_rdata_reg[7]\ => \axi_rdata[7]_i_4_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata[8]_i_4_n_0\,
      \axi_rdata_reg[9]\ => \axi_rdata[9]_i_4_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => moveFractionLengthUp_1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => moveFractionLengthUp_1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => moveFractionLengthUp_1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => moveFractionLengthUp_1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => moveFractionLengthUp_1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => moveFractionLengthUp_1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => moveFractionLengthUp_1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => moveFractionLengthUp_1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => moveFractionLengthUp_1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => moveFractionLengthUp_1(15),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_myip_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_myip_v1_0 : entity is "myip_v1_0";
end design_1_myip_0_0_myip_v1_0;

architecture STRUCTURE of design_1_myip_0_0_myip_v1_0 is
begin
myip_v1_0_S00_AXI_inst: entity work.design_1_myip_0_0_myip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_myip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_myip_0_0 : entity is "design_1_myip_0_0,myip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_myip_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_myip_0_0 : entity is "myip_v1_0,Vivado 2023.2";
end design_1_myip_0_0;

architecture STRUCTURE of design_1_myip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_myip_0_0_myip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
