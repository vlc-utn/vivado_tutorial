--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Sat Aug 31 10:35:33 2024
--Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    clk : out STD_LOGIC;
    data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    first_in_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    s_axis_tdata_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast_0 : in STD_LOGIC;
    s_axis_tready_0 : out STD_LOGIC;
    s_axis_tvalid_0 : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    valid_out_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_2_axis_data_fifo_0_0;
  component design_2_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component design_2_clk_wiz_0_0;
  component design_2_axi4_stream_adder_fo_0_2 is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    AXI4_Stream_Slave_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI4_Stream_Slave_TVALID : in STD_LOGIC;
    AXI4_Stream_Slave_TLAST : in STD_LOGIC;
    first_in : in STD_LOGIC;
    AXI4_Stream_Slave_TREADY : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component design_2_axi4_stream_adder_fo_0_2;
  signal IPCORE_RESETN_0_1 : STD_LOGIC;
  signal axi4_stream_adder_fo_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi4_stream_adder_fo_0_valid_out : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_0_s_axis_tready : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal first_in_0_1 : STD_LOGIC;
  signal s_axis_tdata_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tlast_0_1 : STD_LOGIC;
  signal s_axis_tvalid_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN design_2_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  IPCORE_RESETN_0_1 <= rst_0;
  clk <= clk_wiz_0_clk_out1;
  clk_in1_0_1 <= sys_clk;
  data_out_0(7 downto 0) <= axi4_stream_adder_fo_0_data_out(7 downto 0);
  first_in_0_1 <= first_in_0;
  s_axis_tdata_0_1(7 downto 0) <= s_axis_tdata_0(7 downto 0);
  s_axis_tlast_0_1 <= s_axis_tlast_0;
  s_axis_tready_0 <= axis_data_fifo_0_s_axis_tready;
  s_axis_tvalid_0_1 <= s_axis_tvalid_0;
  valid_out_0 <= axi4_stream_adder_fo_0_valid_out;
axi4_stream_adder_fo_0: component design_2_axi4_stream_adder_fo_0_2
     port map (
      AXI4_Stream_Slave_TDATA(7 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(7 downto 0),
      AXI4_Stream_Slave_TLAST => axis_data_fifo_0_M_AXIS_TLAST,
      AXI4_Stream_Slave_TREADY => axis_data_fifo_0_M_AXIS_TREADY,
      AXI4_Stream_Slave_TVALID => axis_data_fifo_0_M_AXIS_TVALID,
      IPCORE_CLK => clk_wiz_0_clk_out1,
      IPCORE_RESETN => IPCORE_RESETN_0_1,
      data_out(7 downto 0) => axi4_stream_adder_fo_0_data_out(7 downto 0),
      first_in => first_in_0_1,
      valid_out => axi4_stream_adder_fo_0_valid_out
    );
axis_data_fifo_0: component design_2_axis_data_fifo_0_0
     port map (
      m_axis_tdata(7 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(7 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_0_clk_out1,
      s_axis_aresetn => IPCORE_RESETN_0_1,
      s_axis_tdata(7 downto 0) => s_axis_tdata_0_1(7 downto 0),
      s_axis_tlast => s_axis_tlast_0_1,
      s_axis_tready => axis_data_fifo_0_s_axis_tready,
      s_axis_tvalid => s_axis_tvalid_0_1
    );
clk_wiz_0: component design_2_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
end STRUCTURE;
