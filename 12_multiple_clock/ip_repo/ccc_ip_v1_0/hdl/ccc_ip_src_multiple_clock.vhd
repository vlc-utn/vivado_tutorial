-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/HDLMultipleClock/ccc_ip_src_multiple_clock.vhd
-- Created: 2024-09-14 13:15:01
-- 
-- Generated by MATLAB 24.1, HDL Coder 24.1, and Simulink 24.1
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1e-08
-- Target subsystem base rate: 1e-08
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1e-08
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- out_rsvd                      ce_out        1e-08
-- valid_out                     ce_out        1e-08
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: ccc_ip_src_multiple_clock
-- Source Path: HDLMultipleClock/multiple_clock
-- Hierarchy Level: 0
-- Model version: 1.14
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ccc_ip_src_multiple_clock IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        in_rsvd                           :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        valid_in                          :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        out_rsvd                          :   OUT   std_logic;
        valid_out                         :   OUT   std_logic
        );
END ccc_ip_src_multiple_clock;


ARCHITECTURE rtl OF ccc_ip_src_multiple_clock IS

  -- Component Declarations
  COMPONENT ccc_ip_src_multiple_clock_tc
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          enb                             :   OUT   std_logic;
          enb_1_1_1                       :   OUT   std_logic;
          enb_1_8_0                       :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : ccc_ip_src_multiple_clock_tc
    USE ENTITY work.ccc_ip_src_multiple_clock_tc(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL enb_1_8_0                        : std_logic;
  SIGNAL enb_1_1_1                        : std_logic;
  SIGNAL Delay3_out1                      : std_logic;
  SIGNAL Delay5_out1                      : std_logic;
  SIGNAL control_in_2                     : std_logic;
  SIGNAL Serializer1D_contl_cnt           : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL Serializer1D_invldSignal         : std_logic;
  SIGNAL Serializer1D_out2                : std_logic;
  SIGNAL in_unsigned                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay2_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Add_out1                         : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL y_1                              : std_logic;  -- ufix1
  SIGNAL y_2                              : std_logic;  -- ufix1
  SIGNAL y_3                              : std_logic;  -- ufix1
  SIGNAL y_4                              : std_logic;  -- ufix1
  SIGNAL y_5                              : std_logic;  -- ufix1
  SIGNAL y_6                              : std_logic;  -- ufix1
  SIGNAL y_7                              : std_logic;  -- ufix1
  SIGNAL y_8                              : std_logic;  -- ufix1
  SIGNAL y                                : std_logic_vector(7 DOWNTO 0);  -- ufix1 [8]
  SIGNAL Delay4_out1                      : std_logic_vector(7 DOWNTO 0);  -- ufix1 [8]
  SIGNAL serial_in_1                      : std_logic_vector(7 DOWNTO 0);  -- ufix1 [8]
  SIGNAL Serializer1D_data                : std_logic_vector(6 DOWNTO 0);  -- ufix1 [7]
  SIGNAL Serializer1D_data_next           : std_logic_vector(6 DOWNTO 0);  -- ufix1 [7]
  SIGNAL serializer_PostProcessed         : std_logic;  -- ufix1
  SIGNAL Delay_out1                       : std_logic;  -- ufix1
  SIGNAL Logical_Operator_out1            : std_logic;
  SIGNAL Delay6_out1                      : std_logic;
  SIGNAL Delay1_out1                      : std_logic;
  SIGNAL Delay7_out1                      : std_logic;

BEGIN
  u_multiple_clock_tc : ccc_ip_src_multiple_clock_tc
    PORT MAP( clk => clk,
              reset_x => reset_x,
              clk_enable => clk_enable,
              enb => enb,
              enb_1_1_1 => enb_1_1_1,
              enb_1_8_0 => enb_1_8_0
              );

  Delay3_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay3_out1 <= '0';
      ELSIF enb_1_8_0 = '1' THEN
        Delay3_out1 <= valid_in;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  Delay5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay5_out1 <= '0';
      ELSIF enb_1_8_0 = '1' THEN
        Delay5_out1 <= Delay3_out1;
      END IF;
    END IF;
  END PROCESS Delay5_process;


  control_in_2 <= Delay5_out1;

  Serializer1D_contl_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Serializer1D_contl_cnt <= to_unsigned(16#0#, 3);
      ELSIF enb = '1' THEN
        IF Serializer1D_contl_cnt = to_unsigned(16#7#, 3) THEN 
          Serializer1D_contl_cnt <= to_unsigned(16#0#, 3);
        ELSE 
          Serializer1D_contl_cnt <= Serializer1D_contl_cnt + to_unsigned(16#1#, 3);
        END IF;
      END IF;
    END IF;
  END PROCESS Serializer1D_contl_process;

  Serializer1D_out2 <= control_in_2;
  
  Serializer1D_invldSignal <= '1' WHEN Serializer1D_contl_cnt = to_unsigned(16#0#, 3) ELSE
      '0';

  in_unsigned <= unsigned(in_rsvd);

  Delay2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay2_out1 <= to_unsigned(16#00#, 8);
      ELSIF enb_1_8_0 = '1' THEN
        Delay2_out1 <= in_unsigned;
      END IF;
    END IF;
  END PROCESS Delay2_process;


  Add_out1 <= Delay2_out1 + Delay2_out1;

  y_1 <= Add_out1(0);

  y_2 <= Add_out1(1);

  y_3 <= Add_out1(2);

  y_4 <= Add_out1(3);

  y_5 <= Add_out1(4);

  y_6 <= Add_out1(5);

  y_7 <= Add_out1(6);

  y_8 <= Add_out1(7);

  y(0) <= y_1;
  y(1) <= y_2;
  y(2) <= y_3;
  y(3) <= y_4;
  y(4) <= y_5;
  y(5) <= y_6;
  y(6) <= y_7;
  y(7) <= y_8;

  Delay4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay4_out1 <= (OTHERS => '0');
      ELSIF enb_1_8_0 = '1' THEN
        Delay4_out1 <= y;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  serial_in_1 <= Delay4_out1;

  Serializer1D_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Serializer1D_data <= (OTHERS => '0');
      ELSIF enb = '1' THEN
        Serializer1D_data <= Serializer1D_data_next;
      END IF;
    END IF;
  END PROCESS Serializer1D_process;

  Serializer1D_output : PROCESS (Serializer1D_data, Serializer1D_invldSignal, serial_in_1)
  BEGIN
    Serializer1D_data_next <= Serializer1D_data;
    IF Serializer1D_invldSignal /= '0' THEN 
      serializer_PostProcessed <= serial_in_1(0);
    ELSE 
      serializer_PostProcessed <= Serializer1D_data(0);
    END IF;
    IF Serializer1D_invldSignal /= '0' THEN 
      Serializer1D_data_next(6 DOWNTO 0) <= serial_in_1(7 DOWNTO 1);
    ELSE 
      Serializer1D_data_next(5 DOWNTO 0) <= Serializer1D_data(6 DOWNTO 1);
      Serializer1D_data_next(6) <= serial_in_1(7);
    END IF;
  END PROCESS Serializer1D_output;


  Delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay_out1 <= serializer_PostProcessed;
      END IF;
    END IF;
  END PROCESS Delay_process;


  Logical_Operator_out1 <=  NOT Delay_out1;

  Delay6_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay6_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay6_out1 <= Logical_Operator_out1;
      END IF;
    END IF;
  END PROCESS Delay6_process;


  Delay1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay1_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay1_out1 <= Serializer1D_out2;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  Delay7_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay7_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay7_out1 <= Delay1_out1;
      END IF;
    END IF;
  END PROCESS Delay7_process;


  ce_out <= enb_1_1_1;

  out_rsvd <= Delay6_out1;

  valid_out <= Delay7_out1;

END rtl;

