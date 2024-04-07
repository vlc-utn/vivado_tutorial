-- -------------------------------------------------------------
-- 
-- File Name: /home/cotti/Desktop/The_end/Tutorial_HDL/04_hdl_coder/matlab/codegen/my_function/hdlsrc/my_function_fixpt.vhd
-- Created: 2024-04-01 16:58:56
-- 
-- Generated by MATLAB 9.13, MATLAB Coder 5.5 and HDL Coder 4.0
-- 
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Design base rate: 1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: my_function_fixpt
-- Source Path: my_function_fixpt
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY my_function_fixpt IS
  PORT( x1                                :   IN    std_logic_vector(4 DOWNTO 0);  -- ufix5
        x2                                :   IN    std_logic_vector(5 DOWNTO 0);  -- sfix6
        y1                                :   OUT   std_logic_vector(13 DOWNTO 0);  -- sfix14_En4
        y2                                :   OUT   std_logic_vector(13 DOWNTO 0)  -- ufix14_En12
        );
END my_function_fixpt;


ARCHITECTURE rtl OF my_function_fixpt IS

  -- Signals
  SIGNAL x1_unsigned                      : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL x2_signed                        : signed(5 DOWNTO 0);  -- sfix6
  SIGNAL y1_tmp                           : signed(13 DOWNTO 0);  -- sfix14_En4
  SIGNAL y2_tmp                           : unsigned(13 DOWNTO 0);  -- ufix14_En12
  SIGNAL my_function_fixpt_z1             : unsigned(13 DOWNTO 0);  -- ufix14_En9
  SIGNAL my_function_fixpt_z2             : signed(13 DOWNTO 0);  -- sfix14_En8
  SIGNAL my_function_fixpt_mul_temp       : unsigned(18 DOWNTO 0);  -- ufix19_En13
  SIGNAL my_function_fixpt_mul_temp_1     : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL my_function_fixpt_cast           : signed(14 DOWNTO 0);  -- sfix15_En9
  SIGNAL my_function_fixpt_mul_temp_2     : signed(28 DOWNTO 0);  -- sfix29_En17
  SIGNAL my_function_fixpt_cast_1         : signed(27 DOWNTO 0);  -- sfix28_En17
  SIGNAL my_function_fixpt_add_cast       : signed(16 DOWNTO 0);  -- sfix17_En9
  SIGNAL my_function_fixpt_add_cast_1     : signed(16 DOWNTO 0);  -- sfix17_En9
  SIGNAL my_function_fixpt_add_temp       : signed(16 DOWNTO 0);  -- sfix17_En9

BEGIN
  x1_unsigned <= unsigned(x1);

  x2_signed <= signed(x2);

  --HDL code generation from MATLAB function: my_function_fixpt
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  --                                                                          %
  --          Generated by MATLAB 9.13 and Fixed-Point Designer 7.5           %
  --                                                                          %
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  my_function_fixpt_mul_temp <= to_unsigned(16#27BE#, 14) * x1_unsigned;
  my_function_fixpt_z1 <= my_function_fixpt_mul_temp(17 DOWNTO 4);
  my_function_fixpt_mul_temp_1 <= to_signed(-16#1F8E#, 14) * x2_signed;
  my_function_fixpt_z2 <= my_function_fixpt_mul_temp_1(18 DOWNTO 5);
  my_function_fixpt_cast <= signed(resize(my_function_fixpt_z1, 15));
  my_function_fixpt_mul_temp_2 <= my_function_fixpt_cast * my_function_fixpt_z2;
  my_function_fixpt_cast_1 <= my_function_fixpt_mul_temp_2(27 DOWNTO 0);
  y1_tmp <= my_function_fixpt_cast_1(26 DOWNTO 13);
  my_function_fixpt_add_cast <= signed(resize(my_function_fixpt_z1, 17));
  my_function_fixpt_add_cast_1 <= resize(my_function_fixpt_z2 & '0', 17);
  my_function_fixpt_add_temp <= my_function_fixpt_add_cast + my_function_fixpt_add_cast_1;
  y2_tmp <= unsigned(my_function_fixpt_add_temp(10 DOWNTO 0) & '0' & '0' & '0');

  y1 <= std_logic_vector(y1_tmp);

  y2 <= std_logic_vector(y2_tmp);

END rtl;
