-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_block/Cos_cordic_nw.vhd
-- Created: 2024-04-01 23:07:05
-- 
-- Generated by MATLAB 9.13 and HDL Coder 4.0
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Cos_cordic_nw
-- Source Path: hdl_block/my_block/Cos_cordic_nw
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Cos_cordic_nw IS
  PORT( clk                               :   IN    std_logic;
        angle                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
        cos                               :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END Cos_cordic_nw;


ARCHITECTURE rtl OF Cos_cordic_nw IS

  -- Signals
  SIGNAL angle_signed                     : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL moveFractionLengthUp_1           : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL piOver2_1                        : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Cmp_theta_PiOver2_relop1         : std_logic;
  SIGNAL switch_compare_1                 : std_logic;
  SIGNAL negatepiOver2_cast               : signed(16 DOWNTO 0);  -- sfix17_En12
  SIGNAL negatepiOver2_cast_1             : signed(16 DOWNTO 0);  -- sfix17_En12
  SIGNAL negatepiOver2_1                  : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Cmp_theta_negatepiOver2_relop1   : std_logic;
  SIGNAL switch_compare_1_1               : std_logic;
  SIGNAL Constant_rsvd_1                  : std_logic;  -- ufix1
  SIGNAL onePi_1                          : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL thetaPlusOnePi_1                 : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Cmp_thetaPlusOnepi_neg_PiOver2_relop1 : std_logic;
  SIGNAL switch_compare_1_2               : std_logic;
  SIGNAL Switch3_c1_1                     : std_logic;  -- ufix1
  SIGNAL Switch4_c1_1                     : std_logic;  -- ufix1
  SIGNAL thetaMinusOnePi_1                : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Cmp_thetaMinusOnePi_PiOver2_relop1 : std_logic;
  SIGNAL switch_compare_1_3               : std_logic;
  SIGNAL Switch_c1_1                      : std_logic;  -- ufix1
  SIGNAL negate                           : std_logic;  -- ufix1
  SIGNAL negate_reg_reg                   : std_logic_vector(0 TO 1) := (OTHERS => '0');  -- ufix1 [2]
  SIGNAL negate_p                         : std_logic;  -- ufix1
  SIGNAL switch_compare_1_4               : std_logic;
  SIGNAL switch_compare_1_5               : std_logic;
  SIGNAL switch_compare_1_6               : std_logic;
  SIGNAL twoPi_1                          : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL thetaPlusTwoPi_1                 : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Switch3_1                        : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL switch_compare_1_7               : std_logic;
  SIGNAL thetaMinusTwoPi_1                : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL switch_compare_1_8               : std_logic;
  SIGNAL Switch4_1                        : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Switch4_dtc                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Switch_1                         : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL Switch_dtc                       : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL corrected_theta                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL z0_p                             : signed(15 DOWNTO 0) := to_signed(16#0000#, 16);  -- sfix16_En14
  SIGNAL comp_zero1                       : std_logic;  -- ufix1
  SIGNAL switch_compare_1_9               : std_logic;
  SIGNAL x0                               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL y0                               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL x_temp_0_1_1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL x_temp_1_1_1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL x1                               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL x1_p                             : signed(15 DOWNTO 0) := to_signed(16#0000#, 16);  -- sfix16_En14
  SIGNAL x_p_negate_cast                  : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL x_p_negate_cast_1                : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL x_p_negate_1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL cos_tmp                          : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  angle_signed <= signed(angle);

  moveFractionLengthUp_1 <= angle_signed(9 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0';

  piOver2_1 <= to_signed(16#1922#, 16);

  
  Cmp_theta_PiOver2_relop1 <= '1' WHEN moveFractionLengthUp_1 > piOver2_1 ELSE
      '0';

  
  switch_compare_1 <= '1' WHEN Cmp_theta_PiOver2_relop1 > '0' ELSE
      '0';

  negatepiOver2_cast <= resize(piOver2_1, 17);
  negatepiOver2_cast_1 <=  - (negatepiOver2_cast);
  negatepiOver2_1 <= negatepiOver2_cast_1(15 DOWNTO 0);

  
  Cmp_theta_negatepiOver2_relop1 <= '1' WHEN moveFractionLengthUp_1 < negatepiOver2_1 ELSE
      '0';

  
  switch_compare_1_1 <= '1' WHEN Cmp_theta_negatepiOver2_relop1 > '0' ELSE
      '0';

  Constant_rsvd_1 <= '0';

  onePi_1 <= to_signed(16#3244#, 16);

  thetaPlusOnePi_1 <= moveFractionLengthUp_1 + onePi_1;

  
  Cmp_thetaPlusOnepi_neg_PiOver2_relop1 <= '1' WHEN thetaPlusOnePi_1 >= negatepiOver2_1 ELSE
      '0';

  
  switch_compare_1_2 <= '1' WHEN Cmp_thetaPlusOnepi_neg_PiOver2_relop1 > '0' ELSE
      '0';

  
  Switch3_c1_1 <= Constant_rsvd_1 WHEN switch_compare_1_2 = '0' ELSE
      Cmp_thetaPlusOnepi_neg_PiOver2_relop1;

  
  Switch4_c1_1 <= Constant_rsvd_1 WHEN switch_compare_1_1 = '0' ELSE
      Switch3_c1_1;

  thetaMinusOnePi_1 <= moveFractionLengthUp_1 - onePi_1;

  
  Cmp_thetaMinusOnePi_PiOver2_relop1 <= '1' WHEN thetaMinusOnePi_1 <= piOver2_1 ELSE
      '0';

  
  switch_compare_1_3 <= '1' WHEN Cmp_thetaMinusOnePi_PiOver2_relop1 > '0' ELSE
      '0';

  
  Switch_c1_1 <= Constant_rsvd_1 WHEN switch_compare_1_3 = '0' ELSE
      Cmp_thetaMinusOnePi_PiOver2_relop1;

  
  negate <= Switch4_c1_1 WHEN switch_compare_1 = '0' ELSE
      Switch_c1_1;

  negate_reg_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      negate_reg_reg(0) <= negate;
      negate_reg_reg(1) <= negate_reg_reg(0);
    END IF;
  END PROCESS negate_reg_process;

  negate_p <= negate_reg_reg(1);

  
  switch_compare_1_4 <= '1' WHEN negate_p > '0' ELSE
      '0';

  
  switch_compare_1_5 <= '1' WHEN Cmp_theta_negatepiOver2_relop1 > '0' ELSE
      '0';

  
  switch_compare_1_6 <= '1' WHEN Cmp_thetaPlusOnepi_neg_PiOver2_relop1 > '0' ELSE
      '0';

  twoPi_1 <= to_signed(16#6488#, 16);

  thetaPlusTwoPi_1 <= moveFractionLengthUp_1 + twoPi_1;

  
  Switch3_1 <= thetaPlusTwoPi_1 WHEN switch_compare_1_6 = '0' ELSE
      thetaPlusOnePi_1;

  
  switch_compare_1_7 <= '1' WHEN Cmp_thetaMinusOnePi_PiOver2_relop1 > '0' ELSE
      '0';

  thetaMinusTwoPi_1 <= moveFractionLengthUp_1 - twoPi_1;

  
  switch_compare_1_8 <= '1' WHEN Cmp_theta_PiOver2_relop1 > '0' ELSE
      '0';

  
  Switch4_1 <= moveFractionLengthUp_1 WHEN switch_compare_1_5 = '0' ELSE
      Switch3_1;

  Switch4_dtc <= Switch4_1(13 DOWNTO 0) & '0' & '0';

  
  Switch_1 <= thetaMinusTwoPi_1 WHEN switch_compare_1_7 = '0' ELSE
      thetaMinusOnePi_1;

  Switch_dtc <= Switch_1(13 DOWNTO 0) & '0' & '0';

  
  corrected_theta <= Switch4_dtc WHEN switch_compare_1_8 = '0' ELSE
      Switch_dtc;

  -- Pipeline registers
  z0_reg_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      z0_p <= corrected_theta;
    END IF;
  END PROCESS z0_reg_process;


  
  comp_zero1 <= '1' WHEN z0_p < to_signed(16#0000#, 16) ELSE
      '0';

  
  switch_compare_1_9 <= '1' WHEN comp_zero1 > '0' ELSE
      '0';

  x0 <= to_signed(16#2D41#, 16);

  y0 <= to_signed(16#0000#, 16);

  x_temp_0_1_1 <= x0 - y0;

  x_temp_1_1_1 <= x0 + y0;

  
  x1 <= x_temp_0_1_1 WHEN switch_compare_1_9 = '0' ELSE
      x_temp_1_1_1;

  -- Pipeline registers
  x_reg_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      x1_p <= x1;
    END IF;
  END PROCESS x_reg_process;


  x_p_negate_cast <= resize(x1_p, 17);
  x_p_negate_cast_1 <=  - (x_p_negate_cast);
  x_p_negate_1 <= x_p_negate_cast_1(15 DOWNTO 0);

  
  cos_tmp <= x1_p WHEN switch_compare_1_4 = '0' ELSE
      x_p_negate_1;

  cos <= std_logic_vector(cos_tmp);

END rtl;

