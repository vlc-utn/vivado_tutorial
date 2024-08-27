--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Tue Aug 27 20:01:03 2024
--Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    a_plus_b_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    a_times_b_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : out STD_LOGIC;
    in_a_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_b_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=6,da_clkrst_cnt=4,da_ps7_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_minimal_ip_0_3 is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    in_a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_times_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_plus_b : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1_minimal_ip_0_3;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  signal IPCORE_RESETN_0_1 : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal in_a_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_b_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal minimal_ip_0_a_plus_b : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal minimal_ip_0_a_times_b : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  IPCORE_RESETN_0_1 <= rst_0;
  a_plus_b_0(8 downto 0) <= minimal_ip_0_a_plus_b(8 downto 0);
  a_times_b_0(15 downto 0) <= minimal_ip_0_a_times_b(15 downto 0);
  clk <= clk_wiz_0_clk_out1;
  clk_in1_0_1 <= sys_clock;
  in_a_0_1(7 downto 0) <= in_a_0(7 downto 0);
  in_b_0_1(7 downto 0) <= in_b_0(7 downto 0);
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
minimal_ip_0: component design_1_minimal_ip_0_3
     port map (
      IPCORE_CLK => clk_wiz_0_clk_out1,
      IPCORE_RESETN => IPCORE_RESETN_0_1,
      a_plus_b(8 downto 0) => minimal_ip_0_a_plus_b(8 downto 0),
      a_times_b(15 downto 0) => minimal_ip_0_a_times_b(15 downto 0),
      in_a(7 downto 0) => in_a_0_1(7 downto 0),
      in_b(7 downto 0) => in_b_0_1(7 downto 0)
    );
end STRUCTURE;
