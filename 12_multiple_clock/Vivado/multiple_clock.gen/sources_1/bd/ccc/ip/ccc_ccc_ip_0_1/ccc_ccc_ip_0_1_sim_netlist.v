// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Sep 14 13:21:50 2024
// Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cotti/Desktop/Proyecto_final/vlc_utn/vivado_tutorial/12_multiple_clock/Vivado/multiple_clock.gen/sources_1/bd/ccc/ip/ccc_ccc_ip_0_1/ccc_ccc_ip_0_1_sim_netlist.v
// Design      : ccc_ccc_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ccc_ccc_ip_0_1,ccc_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ccc_ip,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ccc_ccc_ip_0_1
   (IPCORE_CLK,
    IPCORE_RESETN,
    in_rsvd,
    valid_in,
    out_rsvd,
    valid_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input IPCORE_RESETN;
  input [7:0]in_rsvd;
  input valid_in;
  output out_rsvd;
  output valid_out;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [7:0]in_rsvd;
  wire out_rsvd;
  wire valid_in;
  wire valid_out;

  ccc_ccc_ip_0_1_ccc_ip U0
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .in_rsvd(in_rsvd[6:0]),
        .out_rsvd(out_rsvd),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

(* ORIG_REF_NAME = "ccc_ip" *) 
module ccc_ccc_ip_0_1_ccc_ip
   (out_rsvd,
    valid_out,
    IPCORE_RESETN,
    IPCORE_CLK,
    in_rsvd,
    valid_in);
  output out_rsvd;
  output valid_out;
  input IPCORE_RESETN;
  input IPCORE_CLK;
  input [6:0]in_rsvd;
  input valid_in;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [6:0]in_rsvd;
  wire out_rsvd;
  wire reset_out;
  wire valid_in;
  wire valid_out;

  ccc_ccc_ip_0_1_ccc_ip_dut u_ccc_ip_dut_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .in_rsvd(in_rsvd),
        .out_rsvd(out_rsvd),
        .reset_out(reset_out),
        .valid_in(valid_in),
        .valid_out(valid_out));
  ccc_ccc_ip_0_1_ccc_ip_reset_sync u_ccc_ip_reset_sync_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .reset_out(reset_out));
endmodule

(* ORIG_REF_NAME = "ccc_ip_dut" *) 
module ccc_ccc_ip_0_1_ccc_ip_dut
   (out_rsvd,
    valid_out,
    reset_out,
    IPCORE_CLK,
    valid_in,
    in_rsvd);
  output out_rsvd;
  output valid_out;
  input reset_out;
  input IPCORE_CLK;
  input valid_in;
  input [6:0]in_rsvd;

  wire IPCORE_CLK;
  wire [6:0]in_rsvd;
  wire out_rsvd;
  wire reset_out;
  wire valid_in;
  wire valid_out;

  ccc_ccc_ip_0_1_ccc_ip_src_multiple_clock u_ccc_ip_src_multiple_clock
       (.IPCORE_CLK(IPCORE_CLK),
        .in_rsvd(in_rsvd),
        .out_rsvd(out_rsvd),
        .reset_out(reset_out),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

(* ORIG_REF_NAME = "ccc_ip_reset_sync" *) 
module ccc_ccc_ip_0_1_ccc_ip_reset_sync
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

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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

(* ORIG_REF_NAME = "ccc_ip_src_multiple_clock" *) 
module ccc_ccc_ip_0_1_ccc_ip_src_multiple_clock
   (out_rsvd,
    valid_out,
    reset_out,
    IPCORE_CLK,
    valid_in,
    in_rsvd);
  output out_rsvd;
  output valid_out;
  input reset_out;
  input IPCORE_CLK;
  input valid_in;
  input [6:0]in_rsvd;

  wire Delay1_out1;
  wire Delay3_out1;
  wire [7:1]Delay4_out1;
  wire Delay5_out1;
  wire Delay_out1_inv_i_1_n_0;
  wire IPCORE_CLK;
  wire Logical_Operator_out1;
  wire [2:0]Serializer1D_contl_cnt;
  wire \Serializer1D_contl_cnt[0]_i_1_n_0 ;
  wire \Serializer1D_contl_cnt[1]_i_1_n_0 ;
  wire \Serializer1D_contl_cnt[2]_i_1_n_0 ;
  wire [5:0]Serializer1D_data_next;
  wire \Serializer1D_data_reg_n_0_[0] ;
  wire enb;
  wire enb_1_8_0;
  wire [6:0]in_rsvd;
  wire out_rsvd;
  wire [5:0]p_0_in_0;
  wire reset_out;
  wire valid_in;
  wire valid_out;
  wire [7:1]y_1;

  FDRE Delay1_out1_reg
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Delay5_out1),
        .Q(Delay1_out1),
        .R(reset_out));
  FDRE \Delay2_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[0]),
        .Q(y_1[1]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[1]),
        .Q(y_1[2]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[2]),
        .Q(y_1[3]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[3]),
        .Q(y_1[4]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[4]),
        .Q(y_1[5]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[5]),
        .Q(y_1[6]),
        .R(reset_out));
  FDRE \Delay2_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(in_rsvd[6]),
        .Q(y_1[7]),
        .R(reset_out));
  FDRE Delay3_out1_reg
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(valid_in),
        .Q(Delay3_out1),
        .R(reset_out));
  FDRE \Delay4_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[1]),
        .Q(Delay4_out1[1]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[2]),
        .Q(Delay4_out1[2]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[3]),
        .Q(Delay4_out1[3]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[4]),
        .Q(Delay4_out1[4]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[5]),
        .Q(Delay4_out1[5]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[6]),
        .Q(Delay4_out1[6]),
        .R(reset_out));
  FDRE \Delay4_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(y_1[7]),
        .Q(Delay4_out1[7]),
        .R(reset_out));
  FDRE Delay5_out1_reg
       (.C(IPCORE_CLK),
        .CE(enb_1_8_0),
        .D(Delay3_out1),
        .Q(Delay5_out1),
        .R(reset_out));
  FDRE Delay6_out1_reg
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Logical_Operator_out1),
        .Q(out_rsvd),
        .R(reset_out));
  FDRE Delay7_out1_reg
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Delay1_out1),
        .Q(valid_out),
        .R(reset_out));
  LUT4 #(
    .INIT(16'h5557)) 
    Delay_out1_inv_i_1
       (.I0(\Serializer1D_data_reg_n_0_[0] ),
        .I1(Serializer1D_contl_cnt[1]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[2]),
        .O(Delay_out1_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE Delay_out1_reg_inv
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Delay_out1_inv_i_1_n_0),
        .Q(Logical_Operator_out1),
        .S(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Serializer1D_contl_cnt[0]_i_1 
       (.I0(Serializer1D_contl_cnt[0]),
        .O(\Serializer1D_contl_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Serializer1D_contl_cnt[1]_i_1 
       (.I0(Serializer1D_contl_cnt[0]),
        .I1(Serializer1D_contl_cnt[1]),
        .O(\Serializer1D_contl_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Serializer1D_contl_cnt[2]_i_1 
       (.I0(Serializer1D_contl_cnt[2]),
        .I1(Serializer1D_contl_cnt[0]),
        .I2(Serializer1D_contl_cnt[1]),
        .O(\Serializer1D_contl_cnt[2]_i_1_n_0 ));
  FDRE \Serializer1D_contl_cnt_reg[0] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(\Serializer1D_contl_cnt[0]_i_1_n_0 ),
        .Q(Serializer1D_contl_cnt[0]),
        .R(reset_out));
  FDRE \Serializer1D_contl_cnt_reg[1] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(\Serializer1D_contl_cnt[1]_i_1_n_0 ),
        .Q(Serializer1D_contl_cnt[1]),
        .R(reset_out));
  FDRE \Serializer1D_contl_cnt_reg[2] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(\Serializer1D_contl_cnt[2]_i_1_n_0 ),
        .Q(Serializer1D_contl_cnt[2]),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[0]_i_1 
       (.I0(Delay4_out1[1]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[0]),
        .O(Serializer1D_data_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[1]_i_1 
       (.I0(Delay4_out1[2]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[1]),
        .O(Serializer1D_data_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[2]_i_1 
       (.I0(Delay4_out1[3]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[2]),
        .O(Serializer1D_data_next[2]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[3]_i_1 
       (.I0(Delay4_out1[4]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[3]),
        .O(Serializer1D_data_next[3]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[4]_i_1 
       (.I0(Delay4_out1[5]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[4]),
        .O(Serializer1D_data_next[4]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Serializer1D_data[5]_i_1 
       (.I0(Delay4_out1[6]),
        .I1(Serializer1D_contl_cnt[2]),
        .I2(Serializer1D_contl_cnt[0]),
        .I3(Serializer1D_contl_cnt[1]),
        .I4(p_0_in_0[5]),
        .O(Serializer1D_data_next[5]));
  FDRE \Serializer1D_data_reg[0] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[0]),
        .Q(\Serializer1D_data_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[1] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[1]),
        .Q(p_0_in_0[0]),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[2] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[2]),
        .Q(p_0_in_0[1]),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[3] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[3]),
        .Q(p_0_in_0[2]),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[4] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[4]),
        .Q(p_0_in_0[3]),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[5] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Serializer1D_data_next[5]),
        .Q(p_0_in_0[4]),
        .R(reset_out));
  FDRE \Serializer1D_data_reg[6] 
       (.C(IPCORE_CLK),
        .CE(enb),
        .D(Delay4_out1[7]),
        .Q(p_0_in_0[5]),
        .R(reset_out));
  ccc_ccc_ip_0_1_ccc_ip_src_multiple_clock_tc u_multiple_clock_tc
       (.E(enb_1_8_0),
        .IPCORE_CLK(IPCORE_CLK),
        .out(enb),
        .reset_out(reset_out));
endmodule

(* ORIG_REF_NAME = "ccc_ip_src_multiple_clock_tc" *) 
module ccc_ccc_ip_0_1_ccc_ip_src_multiple_clock_tc
   (out,
    E,
    reset_out,
    IPCORE_CLK);
  output out;
  output [0:0]E;
  input reset_out;
  input IPCORE_CLK;

  (* DIRECT_ENABLE *) wire [0:0]E;
  wire IPCORE_CLK;
  wire comp_0_tmp__0;
  wire [2:0]count8;
  (* DIRECT_ENABLE *) wire n_0_1;
  (* DIRECT_ENABLE *) wire out;
  wire [2:0]p_0_in;
  (* RTL_KEEP = "TRUE" *) (* mcp_info = "multiple_clock_tc.u1_d8_o0" *) wire phase_0;
  wire reset_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    comp_0_tmp
       (.I0(count8[1]),
        .I1(count8[2]),
        .I2(count8[0]),
        .O(comp_0_tmp__0));
  LUT1 #(
    .INIT(2'h1)) 
    \count8[0]_i_1 
       (.I0(count8[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \count8[1]_i_1 
       (.I0(count8[0]),
        .I1(count8[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count8[2]_i_1 
       (.I0(count8[0]),
        .I1(count8[1]),
        .I2(count8[2]),
        .O(p_0_in[2]));
  FDSE \count8_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(count8[0]),
        .S(reset_out));
  FDRE \count8_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count8[1]),
        .R(reset_out));
  FDRE \count8_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count8[2]),
        .R(reset_out));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(out));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(n_0_1));
  LUT1 #(
    .INIT(2'h2)) 
    phase_0_inst
       (.I0(phase_0),
        .O(E));
  (* KEEP = "yes" *) 
  (* mcp_info = "multiple_clock_tc.u1_d8_o0" *) 
  FDRE phase_0_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(comp_0_tmp__0),
        .Q(phase_0),
        .R(reset_out));
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
