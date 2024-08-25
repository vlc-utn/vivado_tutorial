--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Sun Aug 25 11:40:59 2024
--Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
--Command     : generate_target multipliers.bd
--Design      : multipliers
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity multipliers is
  port (
    A_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of multipliers : entity is "multipliers,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=multipliers,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of multipliers : entity is "multipliers.hwdef";
end multipliers;

architecture STRUCTURE of multipliers is
  component multipliers_mult_gen_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component multipliers_mult_gen_0_0;
  component multipliers_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component multipliers_c_shift_ram_0_0;
  component multipliers_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component multipliers_clk_wiz_0_0;
  signal A_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal B_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal a_times_b : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal out_delayed : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sys_clock_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN multipliers_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of A_0 : signal is "xilinx.com:signal:data:1.0 DATA.A_0 DATA";
  attribute X_INTERFACE_PARAMETER of A_0 : signal is "XIL_INTERFACENAME DATA.A_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B_0 : signal is "xilinx.com:signal:data:1.0 DATA.B_0 DATA";
  attribute X_INTERFACE_PARAMETER of B_0 : signal is "XIL_INTERFACENAME DATA.B_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of P_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_0 DATA";
  attribute X_INTERFACE_PARAMETER of P_0 : signal is "XIL_INTERFACENAME DATA.P_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 16}";
begin
  A_0_1(15 downto 0) <= A_0(15 downto 0);
  B_0_1(15 downto 0) <= B_0(15 downto 0);
  P_0(15 downto 0) <= out_delayed(15 downto 0);
  clk <= clk_wiz_0_clk_out1;
  sys_clock_1 <= sys_clock;
c_shift_ram_0: component multipliers_c_shift_ram_0_0
     port map (
      CLK => clk_wiz_0_clk_out1,
      D(15 downto 0) => a_times_b(15 downto 0),
      Q(15 downto 0) => out_delayed(15 downto 0)
    );
clk_wiz_0: component multipliers_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
mult_gen_0: component multipliers_mult_gen_0_0
     port map (
      A(15 downto 0) => A_0_1(15 downto 0),
      B(15 downto 0) => B_0_1(15 downto 0),
      CLK => clk_wiz_0_clk_out1,
      P(15 downto 0) => a_times_b(15 downto 0)
    );
end STRUCTURE;
