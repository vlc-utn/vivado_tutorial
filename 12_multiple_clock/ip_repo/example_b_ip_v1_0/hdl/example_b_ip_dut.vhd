-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdlcoder_multi_cycle_path_constraints/example_b_ip_dut.vhd
-- Created: 2024-09-14 14:13:02
-- 
-- Generated by MATLAB 24.1, HDL Coder 24.1, and Simulink 24.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: example_b_ip_dut
-- Source Path: example_b_ip/example_b_ip_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY example_b_ip_dut IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        In1                               :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_0                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_1                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_2                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_3                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_4                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_5                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_6                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_7                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        In2_8                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
        ce_out                            :   OUT   std_logic;  -- ufix1
        Out1                              :   OUT   std_logic_vector(63 DOWNTO 0)  -- sfix64
        );
END example_b_ip_dut;


ARCHITECTURE rtl OF example_b_ip_dut IS

  -- Component Declarations
  COMPONENT example_b_ip_src_Subsystem
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          In1                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_0                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_1                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_2                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_3                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_4                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_5                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_6                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_7                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          In2_8                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32
          ce_out                          :   OUT   std_logic;  -- ufix1
          Out1                            :   OUT   std_logic_vector(63 DOWNTO 0)  -- sfix64
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : example_b_ip_src_Subsystem
    USE ENTITY work.example_b_ip_src_Subsystem(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL Out1_sig                         : std_logic_vector(63 DOWNTO 0);  -- ufix64

BEGIN
  u_example_b_ip_src_Subsystem : example_b_ip_src_Subsystem
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset_x => reset_x,
              In1 => In1,  -- sfix32
              In2_0 => In2_0,  -- sfix32
              In2_1 => In2_1,  -- sfix32
              In2_2 => In2_2,  -- sfix32
              In2_3 => In2_3,  -- sfix32
              In2_4 => In2_4,  -- sfix32
              In2_5 => In2_5,  -- sfix32
              In2_6 => In2_6,  -- sfix32
              In2_7 => In2_7,  -- sfix32
              In2_8 => In2_8,  -- sfix32
              ce_out => ce_out_sig,  -- ufix1
              Out1 => Out1_sig  -- sfix64
              );

  enb <= dut_enable;

  ce_out <= ce_out_sig;

  Out1 <= Out1_sig;

END rtl;

