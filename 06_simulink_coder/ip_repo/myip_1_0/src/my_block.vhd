-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_block/my_block.vhd
-- Created: 2024-04-01 23:07:05
-- 
-- Generated by MATLAB 9.13 and HDL Coder 4.0
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.2
-- Target subsystem base rate: 0.2
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: my_block
-- Source Path: hdl_block/my_block
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.my_block_pkg.ALL;

ENTITY my_block IS
  PORT( clk                               :   IN    std_logic;
        vq                                :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
        vd                                :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
        angle                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
        valpha                            :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
        vbeta                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En6
        );
END my_block;


ARCHITECTURE rtl OF my_block IS

  -- Component Declarations
  COMPONENT Cos_cordic_nw
    PORT( clk                             :   IN    std_logic;
          angle                           :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
          cos                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  COMPONENT Sin_cordic_nw
    PORT( clk                             :   IN    std_logic;
          angle                           :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En6
          sin                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Cos_cordic_nw
    USE ENTITY work.Cos_cordic_nw(rtl);

  FOR ALL : Sin_cordic_nw
    USE ENTITY work.Sin_cordic_nw(rtl);

  -- Signals
  SIGNAL vq_signed                        : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL reduced_reg                      : vector_of_signed16(0 TO 1) := (OTHERS => to_signed(16#0000#, 16));  -- sfix16 [2]
  SIGNAL vq_1                             : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL Trigonometric_Function1_out1     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Trigonometric_Function1_out1_signed : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Product_out1                     : signed(31 DOWNTO 0);  -- sfix32_En20
  SIGNAL vd_signed                        : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL reduced_reg_1                    : vector_of_signed16(0 TO 1) := (OTHERS => to_signed(16#0000#, 16));  -- sfix16 [2]
  SIGNAL vd_1                             : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL Trigonometric_Function_out1      : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Trigonometric_Function_out1_signed : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Product1_out1                    : signed(31 DOWNTO 0);  -- sfix32_En20
  SIGNAL Add_add_cast                     : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add_add_cast_1                   : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add_add_temp                     : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En6
  SIGNAL Product2_out1                    : signed(31 DOWNTO 0);  -- sfix32_En20
  SIGNAL Product3_out1                    : signed(31 DOWNTO 0);  -- sfix32_En20
  SIGNAL Add1_add_cast                    : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add1_add_cast_1                  : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add1_add_temp                    : signed(32 DOWNTO 0);  -- sfix33_En20
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En6

BEGIN
  u_Trigonometric_Function1_inst : Cos_cordic_nw
    PORT MAP( clk => clk,
              angle => angle,  -- sfix16_En6
              cos => Trigonometric_Function1_out1  -- sfix16_En14
              );

  u_Trigonometric_Function_inst : Sin_cordic_nw
    PORT MAP( clk => clk,
              angle => angle,  -- sfix16_En6
              sin => Trigonometric_Function_out1  -- sfix16_En14
              );

  vq_signed <= signed(vq);

  reduced_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      reduced_reg(0) <= vq_signed;
      reduced_reg(1) <= reduced_reg(0);
    END IF;
  END PROCESS reduced_process;

  vq_1 <= reduced_reg(1);

  Trigonometric_Function1_out1_signed <= signed(Trigonometric_Function1_out1);

  Product_out1 <= vq_1 * Trigonometric_Function1_out1_signed;

  vd_signed <= signed(vd);

  reduced_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      reduced_reg_1(0) <= vd_signed;
      reduced_reg_1(1) <= reduced_reg_1(0);
    END IF;
  END PROCESS reduced_1_process;

  vd_1 <= reduced_reg_1(1);

  Trigonometric_Function_out1_signed <= signed(Trigonometric_Function_out1);

  Product1_out1 <= vd_1 * Trigonometric_Function_out1_signed;

  Add_add_cast <= resize(Product_out1, 33);
  Add_add_cast_1 <= resize(Product1_out1, 33);
  Add_add_temp <= Add_add_cast + Add_add_cast_1;
  Add_out1 <= Add_add_temp(29 DOWNTO 14);

  valpha <= std_logic_vector(Add_out1);

  Product2_out1 <= vq_1 * Trigonometric_Function_out1_signed;

  Product3_out1 <= vd_1 * Trigonometric_Function1_out1_signed;

  Add1_add_cast <= resize(Product2_out1, 33);
  Add1_add_cast_1 <= resize(Product3_out1, 33);
  Add1_add_temp <= Add1_add_cast + Add1_add_cast_1;
  Add1_out1 <= Add1_add_temp(29 DOWNTO 14);

  vbeta <= std_logic_vector(Add1_out1);

END rtl;

