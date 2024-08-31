// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Aug 31 12:10:13 2024
// Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/10_axi4_stream_tb/Vivado/ax4_stream_debugging.gen/sources_1/bd/design_1/ip/design_1_external_ports_adder_0_0/design_1_external_ports_adder_0_0_sim_netlist.v
// Design      : design_1_external_ports_adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_external_ports_adder_0_0,external_ports_adder_four,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "external_ports_adder_four,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_external_ports_adder_0_0
   (IPCORE_CLK,
    IPCORE_RESETN,
    data_in,
    valid_in,
    last_in,
    first_in,
    data_out,
    valid_out,
    ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input IPCORE_RESETN;
  input [7:0]data_in;
  input valid_in;
  input last_in;
  input first_in;
  output [7:0]data_out;
  output valid_out;
  output ready;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire first_in;
  wire last_in;
  wire ready;
  wire valid_in;
  wire valid_out;

  design_1_external_ports_adder_0_0_external_ports_adder_four U0
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .data_in(data_in),
        .data_out(data_out),
        .first_in(first_in),
        .last_in(last_in),
        .ready(ready),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

(* ORIG_REF_NAME = "external_ports_adder_four" *) 
module design_1_external_ports_adder_0_0_external_ports_adder_four
   (ready,
    data_out,
    valid_out,
    IPCORE_RESETN,
    IPCORE_CLK,
    first_in,
    valid_in,
    last_in,
    data_in);
  output ready;
  output [7:0]data_out;
  output valid_out;
  input IPCORE_RESETN;
  input IPCORE_CLK;
  input first_in;
  input valid_in;
  input last_in;
  input [7:0]data_in;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire first_in;
  wire last_in;
  wire ready;
  wire reset_out;
  wire valid_in;
  wire valid_out;

  design_1_external_ports_adder_0_0_external_ports_adder_four_dut u_external_ports_adder_four_dut_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .data_in(data_in),
        .data_out(data_out),
        .first_in(first_in),
        .last_in(last_in),
        .ready(ready),
        .reset_out(reset_out),
        .valid_in(valid_in),
        .valid_out(valid_out));
  design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync u_external_ports_adder_four_reset_sync_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .reset_out(reset_out));
endmodule

(* ORIG_REF_NAME = "external_ports_adder_four_dut" *) 
module design_1_external_ports_adder_0_0_external_ports_adder_four_dut
   (ready,
    valid_out,
    data_out,
    reset_out,
    IPCORE_CLK,
    first_in,
    valid_in,
    last_in,
    data_in);
  output ready;
  output valid_out;
  output [7:0]data_out;
  input reset_out;
  input IPCORE_CLK;
  input first_in;
  input valid_in;
  input last_in;
  input [7:0]data_in;

  wire IPCORE_CLK;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire first_in;
  wire last_in;
  wire ready;
  wire reset_out;
  wire valid_in;
  wire valid_out;

  design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder u_external_ports_adder_four_src_four_value_adder
       (.IPCORE_CLK(IPCORE_CLK),
        .data_in(data_in),
        .data_out(data_out),
        .first_in(first_in),
        .last_in(last_in),
        .ready(ready),
        .reset_out(reset_out),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

(* ORIG_REF_NAME = "external_ports_adder_four_reset_sync" *) 
module design_1_external_ports_adder_0_0_external_ports_adder_four_reset_sync
   (reset_out,
    IPCORE_CLK,
    IPCORE_RESETN);
  output reset_out;
  input IPCORE_CLK;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire reset_in;
  wire reset_out;
  wire reset_out_i_1_n_0;
  wire reset_pipe;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reset_out_i_1
       (.I0(reset_pipe),
        .I1(IPCORE_RESETN),
        .O(reset_out_i_1_n_0));
  FDRE reset_out_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_out_i_1_n_0),
        .Q(reset_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    reset_pipe_i_1
       (.I0(IPCORE_RESETN),
        .O(reset_in));
  FDRE reset_pipe_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_in),
        .Q(reset_pipe),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "external_ports_adder_four_src_four_value_adder" *) 
module design_1_external_ports_adder_0_0_external_ports_adder_four_src_four_value_adder
   (ready,
    valid_out,
    data_out,
    reset_out,
    IPCORE_CLK,
    first_in,
    valid_in,
    last_in,
    data_in);
  output ready;
  output valid_out;
  output [7:0]data_out;
  input reset_out;
  input IPCORE_CLK;
  input first_in;
  input valid_in;
  input last_in;
  input [7:0]data_in;

  wire [7:0]Add_out1;
  wire Add_out1__2_carry__0_i_10_n_0;
  wire Add_out1__2_carry__0_i_11_n_0;
  wire Add_out1__2_carry__0_i_12_n_0;
  wire Add_out1__2_carry__0_i_13_n_0;
  wire Add_out1__2_carry__0_i_1_n_0;
  wire Add_out1__2_carry__0_i_2_n_0;
  wire Add_out1__2_carry__0_i_3_n_0;
  wire Add_out1__2_carry__0_i_4_n_0;
  wire Add_out1__2_carry__0_i_5_n_0;
  wire Add_out1__2_carry__0_i_6_n_0;
  wire Add_out1__2_carry__0_i_7_n_0;
  wire Add_out1__2_carry__0_i_8_n_0;
  wire Add_out1__2_carry__0_i_9_n_0;
  wire Add_out1__2_carry__0_n_1;
  wire Add_out1__2_carry__0_n_2;
  wire Add_out1__2_carry__0_n_3;
  wire Add_out1__2_carry_i_1_n_0;
  wire Add_out1__2_carry_i_2_n_0;
  wire Add_out1__2_carry_i_3_n_0;
  wire Add_out1__2_carry_i_4_n_0;
  wire Add_out1__2_carry_i_5_n_0;
  wire Add_out1__2_carry_i_6_n_0;
  wire Add_out1__2_carry_i_7_n_0;
  wire Add_out1__2_carry_i_8_n_0;
  wire Add_out1__2_carry_i_9_n_0;
  wire Add_out1__2_carry_n_0;
  wire Add_out1__2_carry_n_1;
  wire Add_out1__2_carry_n_2;
  wire Add_out1__2_carry_n_3;
  wire Bitwise_OR_out1__0;
  wire Delay11_out1;
  wire Delay1_out1;
  wire \Delay1_reg_reg_n_0_[0] ;
  wire \Delay1_reg_reg_n_0_[1] ;
  wire \Delay1_reg_reg_n_0_[2] ;
  wire \Delay1_reg_reg_n_0_[3] ;
  wire Delay3_out1;
  wire Delay4_out1;
  wire Delay5_out1;
  wire [7:0]Delay6_out1;
  wire Delay7_out1;
  wire Delay8_out1;
  wire Delay9_out1;
  wire [7:0]Delay_out1;
  wire Delay_out1_0;
  wire IPCORE_CLK;
  wire Tapped_Delay1_out1_1;
  wire Tapped_Delay1_out1_2;
  wire \Tapped_Delay1_out1_reg_n_0_[0] ;
  wire \Tapped_Delay1_out1_reg_n_0_[3] ;
  wire Tapped_Delay2_out1_1;
  wire Tapped_Delay2_out1_2;
  wire \Tapped_Delay2_out1_reg_n_0_[0] ;
  wire \Tapped_Delay2_out1_reg_n_0_[3] ;
  wire [7:0]\Tapped_Delay_out1_reg[0] ;
  wire [7:0]\Tapped_Delay_out1_reg[1] ;
  wire [7:0]\Tapped_Delay_out1_reg[2] ;
  wire [7:0]Unit_Delay_out1;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire first_in;
  wire in_rising;
  wire last_in;
  wire out_rising;
  wire [0:0]p_1_out__0;
  wire ready;
  wire reset_out;
  wire valid_in;
  wire valid_out;
  wire [3:3]NLW_Add_out1__2_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_out1__2_carry
       (.CI(1'b0),
        .CO({Add_out1__2_carry_n_0,Add_out1__2_carry_n_1,Add_out1__2_carry_n_2,Add_out1__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Add_out1__2_carry_i_1_n_0,Add_out1__2_carry_i_2_n_0,Add_out1__2_carry_i_3_n_0,\Tapped_Delay_out1_reg[0] [0]}),
        .O(Add_out1[3:0]),
        .S({Add_out1__2_carry_i_4_n_0,Add_out1__2_carry_i_5_n_0,Add_out1__2_carry_i_6_n_0,Add_out1__2_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_out1__2_carry__0
       (.CI(Add_out1__2_carry_n_0),
        .CO({NLW_Add_out1__2_carry__0_CO_UNCONNECTED[3],Add_out1__2_carry__0_n_1,Add_out1__2_carry__0_n_2,Add_out1__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Add_out1__2_carry__0_i_1_n_0,Add_out1__2_carry__0_i_2_n_0,Add_out1__2_carry__0_i_3_n_0}),
        .O(Add_out1[7:4]),
        .S({Add_out1__2_carry__0_i_4_n_0,Add_out1__2_carry__0_i_5_n_0,Add_out1__2_carry__0_i_6_n_0,Add_out1__2_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    Add_out1__2_carry__0_i_1
       (.I0(\Tapped_Delay_out1_reg[2] [4]),
        .I1(Unit_Delay_out1[4]),
        .I2(\Tapped_Delay_out1_reg[1] [4]),
        .I3(\Tapped_Delay_out1_reg[0] [5]),
        .I4(Add_out1__2_carry__0_i_8_n_0),
        .O(Add_out1__2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Add_out1__2_carry__0_i_10
       (.I0(\Tapped_Delay_out1_reg[2] [7]),
        .I1(\Tapped_Delay_out1_reg[1] [7]),
        .I2(\Tapped_Delay_out1_reg[0] [7]),
        .I3(Unit_Delay_out1[7]),
        .O(Add_out1__2_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h17)) 
    Add_out1__2_carry__0_i_11
       (.I0(\Tapped_Delay_out1_reg[1] [5]),
        .I1(Unit_Delay_out1[5]),
        .I2(\Tapped_Delay_out1_reg[2] [5]),
        .O(Add_out1__2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Add_out1__2_carry__0_i_12
       (.I0(\Tapped_Delay_out1_reg[2] [4]),
        .I1(Unit_Delay_out1[4]),
        .I2(\Tapped_Delay_out1_reg[1] [4]),
        .O(Add_out1__2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    Add_out1__2_carry__0_i_13
       (.I0(\Tapped_Delay_out1_reg[2] [6]),
        .I1(Unit_Delay_out1[6]),
        .I2(\Tapped_Delay_out1_reg[1] [6]),
        .I3(\Tapped_Delay_out1_reg[0] [6]),
        .O(Add_out1__2_carry__0_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    Add_out1__2_carry__0_i_2
       (.I0(\Tapped_Delay_out1_reg[2] [3]),
        .I1(Unit_Delay_out1[3]),
        .I2(\Tapped_Delay_out1_reg[1] [3]),
        .I3(\Tapped_Delay_out1_reg[0] [4]),
        .I4(Add_out1__2_carry__0_i_9_n_0),
        .O(Add_out1__2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    Add_out1__2_carry__0_i_3
       (.I0(\Tapped_Delay_out1_reg[2] [2]),
        .I1(Unit_Delay_out1[2]),
        .I2(\Tapped_Delay_out1_reg[1] [2]),
        .I3(\Tapped_Delay_out1_reg[0] [3]),
        .I4(Add_out1__2_carry_i_9_n_0),
        .O(Add_out1__2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9556566AA9959556)) 
    Add_out1__2_carry__0_i_4
       (.I0(Add_out1__2_carry__0_i_10_n_0),
        .I1(\Tapped_Delay_out1_reg[2] [6]),
        .I2(Unit_Delay_out1[6]),
        .I3(\Tapped_Delay_out1_reg[1] [6]),
        .I4(\Tapped_Delay_out1_reg[0] [6]),
        .I5(Add_out1__2_carry__0_i_11_n_0),
        .O(Add_out1__2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h177E7EE8E8818117)) 
    Add_out1__2_carry__0_i_5
       (.I0(\Tapped_Delay_out1_reg[0] [5]),
        .I1(Add_out1__2_carry__0_i_12_n_0),
        .I2(\Tapped_Delay_out1_reg[1] [5]),
        .I3(Unit_Delay_out1[5]),
        .I4(\Tapped_Delay_out1_reg[2] [5]),
        .I5(Add_out1__2_carry__0_i_13_n_0),
        .O(Add_out1__2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    Add_out1__2_carry__0_i_6
       (.I0(Add_out1__2_carry__0_i_2_n_0),
        .I1(\Tapped_Delay_out1_reg[2] [4]),
        .I2(Unit_Delay_out1[4]),
        .I3(\Tapped_Delay_out1_reg[1] [4]),
        .I4(\Tapped_Delay_out1_reg[0] [5]),
        .I5(Add_out1__2_carry__0_i_8_n_0),
        .O(Add_out1__2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    Add_out1__2_carry__0_i_7
       (.I0(Add_out1__2_carry__0_i_3_n_0),
        .I1(\Tapped_Delay_out1_reg[2] [3]),
        .I2(Unit_Delay_out1[3]),
        .I3(\Tapped_Delay_out1_reg[1] [3]),
        .I4(\Tapped_Delay_out1_reg[0] [4]),
        .I5(Add_out1__2_carry__0_i_9_n_0),
        .O(Add_out1__2_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Add_out1__2_carry__0_i_8
       (.I0(\Tapped_Delay_out1_reg[2] [5]),
        .I1(Unit_Delay_out1[5]),
        .I2(\Tapped_Delay_out1_reg[1] [5]),
        .O(Add_out1__2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Add_out1__2_carry__0_i_9
       (.I0(\Tapped_Delay_out1_reg[2] [4]),
        .I1(Unit_Delay_out1[4]),
        .I2(\Tapped_Delay_out1_reg[1] [4]),
        .O(Add_out1__2_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Add_out1__2_carry_i_1
       (.I0(\Tapped_Delay_out1_reg[0] [2]),
        .I1(Add_out1__2_carry_i_8_n_0),
        .I2(\Tapped_Delay_out1_reg[1] [1]),
        .I3(Unit_Delay_out1[1]),
        .I4(\Tapped_Delay_out1_reg[2] [1]),
        .O(Add_out1__2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    Add_out1__2_carry_i_2
       (.I0(\Tapped_Delay_out1_reg[2] [1]),
        .I1(Unit_Delay_out1[1]),
        .I2(\Tapped_Delay_out1_reg[1] [1]),
        .I3(Add_out1__2_carry_i_8_n_0),
        .I4(\Tapped_Delay_out1_reg[0] [2]),
        .O(Add_out1__2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Add_out1__2_carry_i_3
       (.I0(\Tapped_Delay_out1_reg[1] [1]),
        .I1(Unit_Delay_out1[1]),
        .I2(\Tapped_Delay_out1_reg[2] [1]),
        .I3(\Tapped_Delay_out1_reg[0] [1]),
        .O(Add_out1__2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    Add_out1__2_carry_i_4
       (.I0(Add_out1__2_carry_i_1_n_0),
        .I1(\Tapped_Delay_out1_reg[2] [2]),
        .I2(Unit_Delay_out1[2]),
        .I3(\Tapped_Delay_out1_reg[1] [2]),
        .I4(\Tapped_Delay_out1_reg[0] [3]),
        .I5(Add_out1__2_carry_i_9_n_0),
        .O(Add_out1__2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    Add_out1__2_carry_i_5
       (.I0(\Tapped_Delay_out1_reg[0] [2]),
        .I1(Add_out1__2_carry_i_8_n_0),
        .I2(\Tapped_Delay_out1_reg[2] [1]),
        .I3(Unit_Delay_out1[1]),
        .I4(\Tapped_Delay_out1_reg[1] [1]),
        .I5(\Tapped_Delay_out1_reg[0] [1]),
        .O(Add_out1__2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    Add_out1__2_carry_i_6
       (.I0(Add_out1__2_carry_i_3_n_0),
        .I1(\Tapped_Delay_out1_reg[2] [0]),
        .I2(\Tapped_Delay_out1_reg[1] [0]),
        .I3(Unit_Delay_out1[0]),
        .O(Add_out1__2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Add_out1__2_carry_i_7
       (.I0(\Tapped_Delay_out1_reg[1] [0]),
        .I1(\Tapped_Delay_out1_reg[2] [0]),
        .I2(Unit_Delay_out1[0]),
        .I3(\Tapped_Delay_out1_reg[0] [0]),
        .O(Add_out1__2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Add_out1__2_carry_i_8
       (.I0(\Tapped_Delay_out1_reg[2] [2]),
        .I1(Unit_Delay_out1[2]),
        .I2(\Tapped_Delay_out1_reg[1] [2]),
        .O(Add_out1__2_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Add_out1__2_carry_i_9
       (.I0(\Tapped_Delay_out1_reg[2] [3]),
        .I1(Unit_Delay_out1[3]),
        .I2(\Tapped_Delay_out1_reg[1] [3]),
        .O(Add_out1__2_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Bitwise_OR_out1
       (.I0(Tapped_Delay1_out1_2),
        .I1(\Tapped_Delay1_out1_reg_n_0_[3] ),
        .I2(Tapped_Delay1_out1_1),
        .I3(\Tapped_Delay1_out1_reg_n_0_[0] ),
        .O(Bitwise_OR_out1__0));
  FDRE Delay11_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Delay5_out1),
        .Q(Delay11_out1),
        .R(reset_out));
  FDRE \Delay1_reg_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(p_1_out__0),
        .Q(\Delay1_reg_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \Delay1_reg_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Delay1_reg_reg_n_0_[0] ),
        .Q(\Delay1_reg_reg_n_0_[1] ),
        .R(reset_out));
  FDRE \Delay1_reg_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Delay1_reg_reg_n_0_[1] ),
        .Q(\Delay1_reg_reg_n_0_[2] ),
        .R(reset_out));
  FDRE \Delay1_reg_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Delay1_reg_reg_n_0_[2] ),
        .Q(\Delay1_reg_reg_n_0_[3] ),
        .R(reset_out));
  FDRE \Delay1_reg_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Delay1_reg_reg_n_0_[3] ),
        .Q(Delay1_out1),
        .R(reset_out));
  FDRE Delay2_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Delay_out1_0),
        .Q(valid_out),
        .R(reset_out));
  FDRE Delay3_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Delay11_out1),
        .Q(Delay3_out1),
        .R(reset_out));
  FDRE Delay4_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Bitwise_OR_out1__0),
        .Q(Delay4_out1),
        .R(reset_out));
  FDRE Delay5_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(last_in),
        .Q(Delay5_out1),
        .R(reset_out));
  FDRE \Delay6_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[0]),
        .Q(Delay6_out1[0]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[1]),
        .Q(Delay6_out1[1]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[2]),
        .Q(Delay6_out1[2]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[3]),
        .Q(Delay6_out1[3]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[4]),
        .Q(Delay6_out1[4]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[5]),
        .Q(Delay6_out1[5]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[6]),
        .Q(Delay6_out1[6]),
        .R(reset_out));
  FDRE \Delay6_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(data_in[7]),
        .Q(Delay6_out1[7]),
        .R(reset_out));
  FDRE Delay7_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(valid_in),
        .Q(Delay7_out1),
        .R(reset_out));
  FDRE Delay8_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(first_in),
        .Q(Delay8_out1),
        .R(reset_out));
  FDRE Delay9_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(ready),
        .Q(Delay9_out1),
        .R(reset_out));
  FDRE \Delay_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[0]),
        .Q(Delay_out1[0]),
        .R(reset_out));
  FDRE \Delay_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[1]),
        .Q(Delay_out1[1]),
        .R(reset_out));
  FDRE \Delay_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[2]),
        .Q(Delay_out1[2]),
        .R(reset_out));
  FDRE \Delay_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[3]),
        .Q(Delay_out1[3]),
        .R(reset_out));
  FDRE \Delay_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[4]),
        .Q(Delay_out1[4]),
        .R(reset_out));
  FDRE \Delay_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[5]),
        .Q(Delay_out1[5]),
        .R(reset_out));
  FDRE \Delay_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[6]),
        .Q(Delay_out1[6]),
        .R(reset_out));
  FDRE \Delay_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Add_out1[7]),
        .Q(Delay_out1[7]),
        .R(reset_out));
  FDRE \Tapped_Delay1_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Tapped_Delay1_out1_1),
        .Q(\Tapped_Delay1_out1_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \Tapped_Delay1_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Tapped_Delay1_out1_2),
        .Q(Tapped_Delay1_out1_1),
        .R(reset_out));
  FDRE \Tapped_Delay1_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay1_out1_reg_n_0_[3] ),
        .Q(Tapped_Delay1_out1_2),
        .R(reset_out));
  FDRE \Tapped_Delay1_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Delay8_out1),
        .Q(\Tapped_Delay1_out1_reg_n_0_[3] ),
        .R(reset_out));
  FDRE \Tapped_Delay2_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Tapped_Delay2_out1_1),
        .Q(\Tapped_Delay2_out1_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \Tapped_Delay2_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Tapped_Delay2_out1_2),
        .Q(Tapped_Delay2_out1_1),
        .R(reset_out));
  FDRE \Tapped_Delay2_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay2_out1_reg_n_0_[3] ),
        .Q(Tapped_Delay2_out1_2),
        .R(reset_out));
  FDRE \Tapped_Delay2_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(out_rising),
        .Q(\Tapped_Delay2_out1_reg_n_0_[3] ),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [0]),
        .Q(\Tapped_Delay_out1_reg[0] [0]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [1]),
        .Q(\Tapped_Delay_out1_reg[0] [1]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [2]),
        .Q(\Tapped_Delay_out1_reg[0] [2]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [3]),
        .Q(\Tapped_Delay_out1_reg[0] [3]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [4]),
        .Q(\Tapped_Delay_out1_reg[0] [4]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [5]),
        .Q(\Tapped_Delay_out1_reg[0] [5]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [6]),
        .Q(\Tapped_Delay_out1_reg[0] [6]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[0][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[1] [7]),
        .Q(\Tapped_Delay_out1_reg[0] [7]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [0]),
        .Q(\Tapped_Delay_out1_reg[1] [0]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [1]),
        .Q(\Tapped_Delay_out1_reg[1] [1]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [2]),
        .Q(\Tapped_Delay_out1_reg[1] [2]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [3]),
        .Q(\Tapped_Delay_out1_reg[1] [3]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [4]),
        .Q(\Tapped_Delay_out1_reg[1] [4]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [5]),
        .Q(\Tapped_Delay_out1_reg[1] [5]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [6]),
        .Q(\Tapped_Delay_out1_reg[1] [6]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[1][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(\Tapped_Delay_out1_reg[2] [7]),
        .Q(\Tapped_Delay_out1_reg[1] [7]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[0]),
        .Q(\Tapped_Delay_out1_reg[2] [0]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[1]),
        .Q(\Tapped_Delay_out1_reg[2] [1]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[2]),
        .Q(\Tapped_Delay_out1_reg[2] [2]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[3]),
        .Q(\Tapped_Delay_out1_reg[2] [3]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[4]),
        .Q(\Tapped_Delay_out1_reg[2] [4]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[5]),
        .Q(\Tapped_Delay_out1_reg[2] [5]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[6]),
        .Q(\Tapped_Delay_out1_reg[2] [6]),
        .R(reset_out));
  FDRE \Tapped_Delay_out1_reg[2][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(Unit_Delay_out1[7]),
        .Q(\Tapped_Delay_out1_reg[2] [7]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[0]),
        .Q(Unit_Delay_out1[0]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[1]),
        .Q(Unit_Delay_out1[1]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[2]),
        .Q(Unit_Delay_out1[2]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[3]),
        .Q(Unit_Delay_out1[3]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[4]),
        .Q(Unit_Delay_out1[4]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[5]),
        .Q(Unit_Delay_out1[5]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[6]),
        .Q(Unit_Delay_out1[6]),
        .R(reset_out));
  FDRE \Unit_Delay_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(in_rising),
        .D(Delay6_out1[7]),
        .Q(Unit_Delay_out1[7]),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[0]_INST_0 
       (.I0(Delay_out1[0]),
        .I1(Delay3_out1),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[1]_INST_0 
       (.I0(Delay_out1[1]),
        .I1(Delay3_out1),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[2]_INST_0 
       (.I0(Delay_out1[2]),
        .I1(Delay3_out1),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[3]_INST_0 
       (.I0(Delay_out1[3]),
        .I1(Delay3_out1),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[4]_INST_0 
       (.I0(Delay_out1[4]),
        .I1(Delay3_out1),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[5]_INST_0 
       (.I0(Delay_out1[5]),
        .I1(Delay3_out1),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[6]_INST_0 
       (.I0(Delay_out1[6]),
        .I1(Delay3_out1),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[7]_INST_0 
       (.I0(Delay_out1[7]),
        .I1(Delay3_out1),
        .O(data_out[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    p_1_out
       (.I0(Tapped_Delay2_out1_2),
        .I1(\Tapped_Delay2_out1_reg_n_0_[3] ),
        .I2(Tapped_Delay2_out1_1),
        .I3(\Tapped_Delay2_out1_reg_n_0_[0] ),
        .O(p_1_out__0));
  LUT2 #(
    .INIT(4'hE)) 
    ready_INST_0
       (.I0(Delay1_out1),
        .I1(Delay4_out1),
        .O(ready));
  design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge u_rising_edge
       (.D(out_rising),
        .Delay7_out1(Delay7_out1),
        .Delay9_out1(Delay9_out1),
        .Delay_out1(Delay_out1_0),
        .IPCORE_CLK(IPCORE_CLK),
        .in_rising(in_rising),
        .reset_out(reset_out));
endmodule

(* ORIG_REF_NAME = "external_ports_adder_four_src_rising_edge" *) 
module design_1_external_ports_adder_0_0_external_ports_adder_four_src_rising_edge
   (Delay_out1,
    in_rising,
    D,
    reset_out,
    IPCORE_CLK,
    Delay7_out1,
    Delay9_out1);
  output Delay_out1;
  output in_rising;
  output [0:0]D;
  input reset_out;
  input IPCORE_CLK;
  input Delay7_out1;
  input Delay9_out1;

  wire [0:0]D;
  wire Delay7_out1;
  wire Delay9_out1;
  wire Delay_out1;
  wire IPCORE_CLK;
  wire in_rising;
  wire reset_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Delay_out1_i_1
       (.I0(Delay7_out1),
        .I1(Delay9_out1),
        .O(in_rising));
  FDRE Delay_out1_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(in_rising),
        .Q(Delay_out1),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Tapped_Delay2_out1[3]_i_1 
       (.I0(Delay_out1),
        .I1(Delay7_out1),
        .I2(Delay9_out1),
        .O(D));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
