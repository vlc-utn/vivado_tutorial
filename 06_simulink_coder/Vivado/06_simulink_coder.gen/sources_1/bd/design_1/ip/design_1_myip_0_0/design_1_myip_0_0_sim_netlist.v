// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Apr  2 09:31:23 2024
// Host        : cotti-machine running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cotti/Desktop/The_end/Tutorial_HDL/06_simulink_coder/Vivado/06_simulink_coder.gen/sources_1/bd/design_1/ip/design_1_myip_0_0/design_1_myip_0_0_sim_netlist.v
// Design      : design_1_myip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_myip_0_0,myip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "myip_v1_0,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_myip_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_myip_0_0_myip_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Cos_cordic_nw" *) 
module design_1_myip_0_0_Cos_cordic_nw
   (\negate_reg_reg_reg[1]_0 ,
    B,
    \slv_reg2_reg[4] ,
    \slv_reg2_reg[5] ,
    \x1_p_reg[0]_0 ,
    s00_axi_aclk,
    \negate_reg_reg_reg[0]_0 ,
    \negate_reg_reg_reg[0]_1 ,
    \negate_reg_reg_reg[0]_2 );
  output \negate_reg_reg_reg[1]_0 ;
  output [2:0]B;
  output \slv_reg2_reg[4] ;
  output \slv_reg2_reg[5] ;
  output \x1_p_reg[0]_0 ;
  input s00_axi_aclk;
  input [9:0]\negate_reg_reg_reg[0]_0 ;
  input \negate_reg_reg_reg[0]_1 ;
  input \negate_reg_reg_reg[0]_2 ;

  wire [2:0]B;
  wire \negate_reg_reg[0]_i_2_n_0 ;
  wire \negate_reg_reg[0]_i_3_n_0 ;
  wire [9:0]\negate_reg_reg_reg[0]_0 ;
  wire \negate_reg_reg_reg[0]_1 ;
  wire \negate_reg_reg_reg[0]_2 ;
  wire \negate_reg_reg_reg[0]_i_1_n_0 ;
  wire \negate_reg_reg_reg[1]_0 ;
  wire p_0_in;
  wire s00_axi_aclk;
  wire \slv_reg2_reg[4] ;
  wire \slv_reg2_reg[5] ;
  wire \x1_p_reg[0]_0 ;
  wire \z0_p[15]_i_10_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_31
       (.I0(B[0]),
        .O(\x1_p_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    Product_out1_i_1
       (.I0(\negate_reg_reg_reg[1]_0 ),
        .I1(B[0]),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h2)) 
    Product_out1_i_2
       (.I0(B[0]),
        .I1(\negate_reg_reg_reg[1]_0 ),
        .O(B[1]));
  LUT5 #(
    .INIT(32'h0F0F4F40)) 
    \negate_reg_reg[0]_i_2 
       (.I0(\negate_reg_reg_reg[0]_0 [6]),
        .I1(\negate_reg_reg_reg[0]_2 ),
        .I2(\negate_reg_reg_reg[0]_0 [8]),
        .I3(\slv_reg2_reg[5] ),
        .I4(\negate_reg_reg_reg[0]_0 [7]),
        .O(\negate_reg_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808CCCC)) 
    \negate_reg_reg[0]_i_3 
       (.I0(\slv_reg2_reg[4] ),
        .I1(\negate_reg_reg_reg[0]_0 [8]),
        .I2(\negate_reg_reg_reg[0]_0 [6]),
        .I3(\negate_reg_reg_reg[0]_1 ),
        .I4(\negate_reg_reg_reg[0]_0 [7]),
        .O(\negate_reg_reg[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \negate_reg_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\negate_reg_reg_reg[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  MUXF7 \negate_reg_reg_reg[0]_i_1 
       (.I0(\negate_reg_reg[0]_i_2_n_0 ),
        .I1(\negate_reg_reg[0]_i_3_n_0 ),
        .O(\negate_reg_reg_reg[0]_i_1_n_0 ),
        .S(\negate_reg_reg_reg[0]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \negate_reg_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\negate_reg_reg_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x1_p_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(B[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h007F)) 
    \z0_p[14]_i_6 
       (.I0(\negate_reg_reg_reg[0]_0 [4]),
        .I1(\negate_reg_reg_reg[0]_0 [2]),
        .I2(\negate_reg_reg_reg[0]_0 [3]),
        .I3(\negate_reg_reg_reg[0]_0 [5]),
        .O(\slv_reg2_reg[4] ));
  LUT2 #(
    .INIT(4'hE)) 
    \z0_p[15]_i_10 
       (.I0(\negate_reg_reg_reg[0]_0 [0]),
        .I1(\negate_reg_reg_reg[0]_0 [1]),
        .O(\z0_p[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000000)) 
    \z0_p[15]_i_6 
       (.I0(\negate_reg_reg_reg[0]_0 [5]),
        .I1(\negate_reg_reg_reg[0]_0 [3]),
        .I2(\z0_p[15]_i_10_n_0 ),
        .I3(\negate_reg_reg_reg[0]_0 [2]),
        .I4(\negate_reg_reg_reg[0]_0 [4]),
        .I5(\negate_reg_reg_reg[0]_0 [6]),
        .O(\slv_reg2_reg[5] ));
endmodule

(* ORIG_REF_NAME = "Sin_cordic_nw" *) 
module design_1_myip_0_0_Sin_cordic_nw
   (\slv_reg2_reg[4] ,
    \slv_reg2_reg[4]_0 ,
    B,
    \z0_p_reg[15]_0 ,
    \z0_p_reg[14]_0 ,
    \z0_p_reg[15]_1 ,
    Product2_out1,
    s00_axi_aclk,
    Product2_out1_0);
  output \slv_reg2_reg[4] ;
  output \slv_reg2_reg[4]_0 ;
  output [14:0]B;
  input [9:0]\z0_p_reg[15]_0 ;
  input \z0_p_reg[14]_0 ;
  input \z0_p_reg[15]_1 ;
  input Product2_out1;
  input s00_axi_aclk;
  input Product2_out1_0;

  wire Add_add_temp_i_16_n_2;
  wire Add_add_temp_i_16_n_3;
  wire Add_add_temp_i_17_n_0;
  wire Add_add_temp_i_17_n_1;
  wire Add_add_temp_i_17_n_2;
  wire Add_add_temp_i_17_n_3;
  wire Add_add_temp_i_18_n_0;
  wire Add_add_temp_i_18_n_1;
  wire Add_add_temp_i_18_n_2;
  wire Add_add_temp_i_18_n_3;
  wire Add_add_temp_i_19_n_0;
  wire Add_add_temp_i_19_n_1;
  wire Add_add_temp_i_19_n_2;
  wire Add_add_temp_i_19_n_3;
  wire Add_add_temp_i_20_n_0;
  wire Add_add_temp_i_21_n_0;
  wire Add_add_temp_i_22_n_0;
  wire Add_add_temp_i_23_n_0;
  wire Add_add_temp_i_24_n_0;
  wire Add_add_temp_i_25_n_0;
  wire Add_add_temp_i_26_n_0;
  wire Add_add_temp_i_27_n_0;
  wire Add_add_temp_i_28_n_0;
  wire Add_add_temp_i_29_n_0;
  wire Add_add_temp_i_30_n_0;
  wire Add_add_temp_i_32_n_0;
  wire Add_add_temp_i_33_n_0;
  wire Add_add_temp_i_34_n_0;
  wire Add_add_temp_i_35_n_0;
  wire [14:0]B;
  wire Product2_out1;
  wire Product2_out1_0;
  wire [15:14]corrected_theta;
  wire p_0_in0;
  wire s00_axi_aclk;
  wire sel;
  wire \slv_reg2_reg[4] ;
  wire \slv_reg2_reg[4]_0 ;
  wire y12_carry_i_1_n_0;
  wire [15:6]y1_p;
  wire \y1_p[15]_i_1_n_0 ;
  wire [15:1]y_p_negate_cast_1;
  wire [15:14]z0_p;
  wire \z0_p[14]_i_10_n_0 ;
  wire \z0_p[14]_i_11_n_0 ;
  wire \z0_p[14]_i_12_n_0 ;
  wire \z0_p[14]_i_13_n_0 ;
  wire \z0_p[14]_i_14_n_0 ;
  wire \z0_p[14]_i_2_n_0 ;
  wire \z0_p[14]_i_3_n_0 ;
  wire \z0_p[14]_i_4_n_0 ;
  wire \z0_p[14]_i_5_n_0 ;
  wire \z0_p[14]_i_7_n_0 ;
  wire \z0_p[14]_i_8_n_0 ;
  wire \z0_p[14]_i_9_n_0 ;
  wire \z0_p[15]_i_11_n_0 ;
  wire \z0_p[15]_i_2_n_0 ;
  wire \z0_p[15]_i_3_n_0 ;
  wire \z0_p[15]_i_4_n_0 ;
  wire \z0_p[15]_i_5_n_0 ;
  wire \z0_p[15]_i_7_n_0 ;
  wire \z0_p_reg[14]_0 ;
  wire [9:0]\z0_p_reg[15]_0 ;
  wire \z0_p_reg[15]_1 ;
  wire [3:2]NLW_Add_add_temp_i_16_CO_UNCONNECTED;
  wire [3:3]NLW_Add_add_temp_i_16_O_UNCONNECTED;
  wire [3:1]NLW_y12_carry_CO_UNCONNECTED;
  wire [3:0]NLW_y12_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_1
       (.I0(y_p_negate_cast_1[15]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_10
       (.I0(y_p_negate_cast_1[6]),
        .I1(y1_p[6]),
        .I2(Product2_out1_0),
        .O(B[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_11
       (.I0(y_p_negate_cast_1[5]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_12
       (.I0(y_p_negate_cast_1[4]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_13
       (.I0(y_p_negate_cast_1[3]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_14
       (.I0(y_p_negate_cast_1[2]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_15
       (.I0(y_p_negate_cast_1[1]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_add_temp_i_16
       (.CI(Add_add_temp_i_17_n_0),
        .CO({NLW_Add_add_temp_i_16_CO_UNCONNECTED[3:2],Add_add_temp_i_16_n_2,Add_add_temp_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Add_add_temp_i_16_O_UNCONNECTED[3],y_p_negate_cast_1[15:13]}),
        .S({1'b0,Add_add_temp_i_20_n_0,Add_add_temp_i_21_n_0,Add_add_temp_i_22_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_add_temp_i_17
       (.CI(Add_add_temp_i_18_n_0),
        .CO({Add_add_temp_i_17_n_0,Add_add_temp_i_17_n_1,Add_add_temp_i_17_n_2,Add_add_temp_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_p_negate_cast_1[12:9]),
        .S({Add_add_temp_i_23_n_0,Add_add_temp_i_24_n_0,Add_add_temp_i_25_n_0,Add_add_temp_i_26_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_add_temp_i_18
       (.CI(Add_add_temp_i_19_n_0),
        .CO({Add_add_temp_i_18_n_0,Add_add_temp_i_18_n_1,Add_add_temp_i_18_n_2,Add_add_temp_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_p_negate_cast_1[8:5]),
        .S({Add_add_temp_i_27_n_0,Add_add_temp_i_28_n_0,Add_add_temp_i_29_n_0,Add_add_temp_i_30_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Add_add_temp_i_19
       (.CI(1'b0),
        .CO({Add_add_temp_i_19_n_0,Add_add_temp_i_19_n_1,Add_add_temp_i_19_n_2,Add_add_temp_i_19_n_3}),
        .CYINIT(Product2_out1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_p_negate_cast_1[4:1]),
        .S({Add_add_temp_i_32_n_0,Add_add_temp_i_33_n_0,Add_add_temp_i_34_n_0,Add_add_temp_i_35_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_2
       (.I0(y_p_negate_cast_1[14]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[13]));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_20
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_21
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_22
       (.I0(y1_p[6]),
        .O(Add_add_temp_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_23
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_24
       (.I0(y1_p[6]),
        .O(Add_add_temp_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_25
       (.I0(y1_p[6]),
        .O(Add_add_temp_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_26
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_27
       (.I0(y1_p[6]),
        .O(Add_add_temp_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_28
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_29
       (.I0(y1_p[6]),
        .O(Add_add_temp_i_29_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_3
       (.I0(y_p_negate_cast_1[13]),
        .I1(y1_p[6]),
        .I2(Product2_out1_0),
        .O(B[12]));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_30
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_30_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_32
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_33
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_34
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Add_add_temp_i_35
       (.I0(y1_p[15]),
        .O(Add_add_temp_i_35_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_4
       (.I0(y_p_negate_cast_1[12]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_5
       (.I0(y_p_negate_cast_1[11]),
        .I1(y1_p[6]),
        .I2(Product2_out1_0),
        .O(B[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_6
       (.I0(y_p_negate_cast_1[10]),
        .I1(y1_p[6]),
        .I2(Product2_out1_0),
        .O(B[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_7
       (.I0(y_p_negate_cast_1[9]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_8
       (.I0(y_p_negate_cast_1[8]),
        .I1(y1_p[6]),
        .I2(Product2_out1_0),
        .O(B[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    Add_add_temp_i_9
       (.I0(y_p_negate_cast_1[7]),
        .I1(y1_p[15]),
        .I2(Product2_out1_0),
        .O(B[6]));
  CARRY4 y12_carry
       (.CI(1'b0),
        .CO({NLW_y12_carry_CO_UNCONNECTED[3:1],sel}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,z0_p[15]}),
        .O({NLW_y12_carry_O_UNCONNECTED[3:2],p_0_in0,NLW_y12_carry_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,1'b1,y12_carry_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    y12_carry_i_1
       (.I0(z0_p[14]),
        .I1(z0_p[15]),
        .O(y12_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \y1_p[15]_i_1 
       (.I0(p_0_in0),
        .O(\y1_p[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y1_p_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\y1_p[15]_i_1_n_0 ),
        .Q(y1_p[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y1_p_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(y1_p[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \z0_p[14]_i_1 
       (.I0(\z0_p[14]_i_2_n_0 ),
        .I1(\z0_p[14]_i_3_n_0 ),
        .I2(\z0_p_reg[15]_0 [9]),
        .I3(\z0_p[14]_i_4_n_0 ),
        .I4(\z0_p_reg[15]_0 [8]),
        .I5(\z0_p[14]_i_5_n_0 ),
        .O(corrected_theta[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \z0_p[14]_i_10 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [1]),
        .I2(\z0_p_reg[15]_0 [2]),
        .I3(\z0_p_reg[15]_0 [3]),
        .I4(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \z0_p[14]_i_11 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [0]),
        .I4(\z0_p_reg[15]_0 [3]),
        .I5(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55556EEA)) 
    \z0_p[14]_i_12 
       (.I0(\z0_p_reg[15]_0 [5]),
        .I1(\z0_p_reg[15]_0 [3]),
        .I2(\z0_p_reg[15]_0 [2]),
        .I3(\z0_p_reg[15]_0 [1]),
        .I4(\z0_p_reg[15]_0 [4]),
        .O(\z0_p[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555566666)) 
    \z0_p[14]_i_13 
       (.I0(\z0_p_reg[15]_0 [6]),
        .I1(\z0_p_reg[15]_0 [4]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [2]),
        .I4(\z0_p_reg[15]_0 [3]),
        .I5(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00001115FFFFFFFF)) 
    \z0_p[14]_i_14 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [0]),
        .I4(\z0_p_reg[15]_0 [3]),
        .I5(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCBBBBFCCC8888)) 
    \z0_p[14]_i_2 
       (.I0(\z0_p_reg[14]_0 ),
        .I1(\z0_p_reg[15]_0 [7]),
        .I2(\z0_p[14]_i_7_n_0 ),
        .I3(\z0_p_reg[15]_0 [5]),
        .I4(\z0_p_reg[15]_0 [6]),
        .I5(\z0_p[14]_i_8_n_0 ),
        .O(\z0_p[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z0_p[14]_i_3 
       (.I0(\z0_p[14]_i_9_n_0 ),
        .I1(\z0_p_reg[15]_0 [7]),
        .I2(\slv_reg2_reg[4] ),
        .I3(\z0_p_reg[15]_0 [6]),
        .I4(\z0_p[14]_i_10_n_0 ),
        .O(\z0_p[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \z0_p[14]_i_4 
       (.I0(\z0_p[14]_i_11_n_0 ),
        .I1(\z0_p_reg[15]_0 [7]),
        .I2(\slv_reg2_reg[4]_0 ),
        .I3(\z0_p_reg[15]_0 [6]),
        .I4(\z0_p[14]_i_12_n_0 ),
        .O(\z0_p[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \z0_p[14]_i_5 
       (.I0(\z0_p[14]_i_13_n_0 ),
        .I1(\z0_p_reg[15]_0 [7]),
        .I2(\z0_p[14]_i_14_n_0 ),
        .I3(\z0_p_reg[15]_0 [6]),
        .O(\z0_p[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \z0_p[14]_i_7 
       (.I0(\z0_p_reg[15]_0 [3]),
        .I1(\z0_p_reg[15]_0 [1]),
        .I2(\z0_p_reg[15]_0 [0]),
        .I3(\z0_p_reg[15]_0 [2]),
        .I4(\z0_p_reg[15]_0 [4]),
        .O(\z0_p[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55557FFFFFFFFFFF)) 
    \z0_p[14]_i_8 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [0]),
        .I4(\z0_p_reg[15]_0 [3]),
        .I5(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA888899955555555)) 
    \z0_p[14]_i_9 
       (.I0(\z0_p_reg[15]_0 [5]),
        .I1(\z0_p_reg[15]_0 [3]),
        .I2(\z0_p_reg[15]_0 [0]),
        .I3(\z0_p_reg[15]_0 [1]),
        .I4(\z0_p_reg[15]_0 [2]),
        .I5(\z0_p_reg[15]_0 [4]),
        .O(\z0_p[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \z0_p[15]_i_11 
       (.I0(\z0_p_reg[15]_0 [2]),
        .I1(\z0_p_reg[15]_0 [3]),
        .O(\z0_p[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    \z0_p[15]_i_2 
       (.I0(\z0_p[15]_i_4_n_0 ),
        .I1(\z0_p_reg[15]_0 [8]),
        .I2(\z0_p[15]_i_5_n_0 ),
        .I3(\z0_p_reg[15]_0 [6]),
        .I4(\z0_p_reg[15]_0 [7]),
        .I5(\z0_p_reg[15]_1 ),
        .O(\z0_p[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \z0_p[15]_i_3 
       (.I0(\z0_p[15]_i_7_n_0 ),
        .I1(\z0_p_reg[15]_0 [8]),
        .I2(\slv_reg2_reg[4]_0 ),
        .I3(\z0_p_reg[15]_0 [7]),
        .I4(\slv_reg2_reg[4] ),
        .I5(\z0_p_reg[15]_0 [6]),
        .O(\z0_p[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h33B8)) 
    \z0_p[15]_i_4 
       (.I0(\z0_p[14]_i_11_n_0 ),
        .I1(\z0_p_reg[15]_0 [7]),
        .I2(\z0_p[14]_i_10_n_0 ),
        .I3(\z0_p_reg[15]_0 [6]),
        .O(\z0_p[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \z0_p[15]_i_5 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [3]),
        .I4(\z0_p_reg[15]_0 [5]),
        .O(\z0_p[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00BAFFBA00)) 
    \z0_p[15]_i_7 
       (.I0(\z0_p_reg[15]_0 [5]),
        .I1(\z0_p[15]_i_11_n_0 ),
        .I2(\z0_p_reg[15]_0 [4]),
        .I3(\z0_p_reg[15]_0 [7]),
        .I4(\z0_p[14]_i_8_n_0 ),
        .I5(\z0_p_reg[15]_0 [6]),
        .O(\z0_p[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \z0_p[15]_i_8 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [0]),
        .I3(\z0_p_reg[15]_0 [1]),
        .I4(\z0_p_reg[15]_0 [3]),
        .I5(\z0_p_reg[15]_0 [5]),
        .O(\slv_reg2_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \z0_p[15]_i_9 
       (.I0(\z0_p_reg[15]_0 [4]),
        .I1(\z0_p_reg[15]_0 [2]),
        .I2(\z0_p_reg[15]_0 [1]),
        .I3(\z0_p_reg[15]_0 [3]),
        .I4(\z0_p_reg[15]_0 [5]),
        .O(\slv_reg2_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \z0_p_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(corrected_theta[14]),
        .Q(z0_p[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z0_p_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(corrected_theta[15]),
        .Q(z0_p[15]),
        .R(1'b0));
  MUXF7 \z0_p_reg[15]_i_1 
       (.I0(\z0_p[15]_i_2_n_0 ),
        .I1(\z0_p[15]_i_3_n_0 ),
        .O(corrected_theta[15]),
        .S(\z0_p_reg[15]_0 [9]));
endmodule

(* ORIG_REF_NAME = "my_block" *) 
module design_1_myip_0_0_my_block
   (D,
    s00_axi_aclk,
    Q,
    Add_add_temp_0,
    \axi_rdata_reg[15] ,
    sel0,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[0] );
  output [15:0]D;
  input s00_axi_aclk;
  input [15:0]Q;
  input [15:0]Add_add_temp_0;
  input [15:0]\axi_rdata_reg[15] ;
  input [2:0]sel0;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[0] ;

  wire Add1_add_temp_n_100;
  wire Add1_add_temp_n_101;
  wire Add1_add_temp_n_102;
  wire Add1_add_temp_n_103;
  wire Add1_add_temp_n_104;
  wire Add1_add_temp_n_105;
  wire Add1_add_temp_n_92;
  wire Add1_add_temp_n_93;
  wire Add1_add_temp_n_94;
  wire Add1_add_temp_n_95;
  wire Add1_add_temp_n_96;
  wire Add1_add_temp_n_97;
  wire Add1_add_temp_n_98;
  wire Add1_add_temp_n_99;
  wire [15:0]Add_add_temp_0;
  wire Add_add_temp_n_100;
  wire Add_add_temp_n_101;
  wire Add_add_temp_n_102;
  wire Add_add_temp_n_103;
  wire Add_add_temp_n_104;
  wire Add_add_temp_n_105;
  wire Add_add_temp_n_92;
  wire Add_add_temp_n_93;
  wire Add_add_temp_n_94;
  wire Add_add_temp_n_95;
  wire Add_add_temp_n_96;
  wire Add_add_temp_n_97;
  wire Add_add_temp_n_98;
  wire Add_add_temp_n_99;
  wire [15:13]B;
  wire [15:0]D;
  wire Product2_out1_n_100;
  wire Product2_out1_n_101;
  wire Product2_out1_n_102;
  wire Product2_out1_n_103;
  wire Product2_out1_n_104;
  wire Product2_out1_n_105;
  wire Product2_out1_n_74;
  wire Product2_out1_n_75;
  wire Product2_out1_n_76;
  wire Product2_out1_n_77;
  wire Product2_out1_n_78;
  wire Product2_out1_n_79;
  wire Product2_out1_n_80;
  wire Product2_out1_n_81;
  wire Product2_out1_n_82;
  wire Product2_out1_n_83;
  wire Product2_out1_n_84;
  wire Product2_out1_n_85;
  wire Product2_out1_n_86;
  wire Product2_out1_n_87;
  wire Product2_out1_n_88;
  wire Product2_out1_n_89;
  wire Product2_out1_n_90;
  wire Product2_out1_n_91;
  wire Product2_out1_n_92;
  wire Product2_out1_n_93;
  wire Product2_out1_n_94;
  wire Product2_out1_n_95;
  wire Product2_out1_n_96;
  wire Product2_out1_n_97;
  wire Product2_out1_n_98;
  wire Product2_out1_n_99;
  wire Product_out1_n_100;
  wire Product_out1_n_101;
  wire Product_out1_n_102;
  wire Product_out1_n_103;
  wire Product_out1_n_104;
  wire Product_out1_n_105;
  wire Product_out1_n_74;
  wire Product_out1_n_75;
  wire Product_out1_n_76;
  wire Product_out1_n_77;
  wire Product_out1_n_78;
  wire Product_out1_n_79;
  wire Product_out1_n_80;
  wire Product_out1_n_81;
  wire Product_out1_n_82;
  wire Product_out1_n_83;
  wire Product_out1_n_84;
  wire Product_out1_n_85;
  wire Product_out1_n_86;
  wire Product_out1_n_87;
  wire Product_out1_n_88;
  wire Product_out1_n_89;
  wire Product_out1_n_90;
  wire Product_out1_n_91;
  wire Product_out1_n_92;
  wire Product_out1_n_93;
  wire Product_out1_n_94;
  wire Product_out1_n_95;
  wire Product_out1_n_96;
  wire Product_out1_n_97;
  wire Product_out1_n_98;
  wire Product_out1_n_99;
  wire [15:0]Q;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire [15:0]\axi_rdata_reg[15] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire [15:0]data3;
  wire [15:0]data4;
  wire s00_axi_aclk;
  wire [2:0]sel0;
  wire u_Trigonometric_Function1_inst_n_0;
  wire u_Trigonometric_Function1_inst_n_4;
  wire u_Trigonometric_Function1_inst_n_5;
  wire u_Trigonometric_Function1_inst_n_6;
  wire u_Trigonometric_Function_inst_n_0;
  wire u_Trigonometric_Function_inst_n_1;
  wire u_Trigonometric_Function_inst_n_10;
  wire u_Trigonometric_Function_inst_n_11;
  wire u_Trigonometric_Function_inst_n_12;
  wire u_Trigonometric_Function_inst_n_13;
  wire u_Trigonometric_Function_inst_n_14;
  wire u_Trigonometric_Function_inst_n_15;
  wire u_Trigonometric_Function_inst_n_16;
  wire u_Trigonometric_Function_inst_n_2;
  wire u_Trigonometric_Function_inst_n_3;
  wire u_Trigonometric_Function_inst_n_4;
  wire u_Trigonometric_Function_inst_n_5;
  wire u_Trigonometric_Function_inst_n_6;
  wire u_Trigonometric_Function_inst_n_7;
  wire u_Trigonometric_Function_inst_n_8;
  wire u_Trigonometric_Function_inst_n_9;
  wire [0:0]x1_p;
  wire NLW_Add1_add_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Add1_add_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Add1_add_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Add1_add_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Add1_add_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Add1_add_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Add1_add_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Add1_add_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Add1_add_temp_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_Add1_add_temp_P_UNCONNECTED;
  wire [47:0]NLW_Add1_add_temp_PCOUT_UNCONNECTED;
  wire NLW_Add_add_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Add_add_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Add_add_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Add_add_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Add_add_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Add_add_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Add_add_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Add_add_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Add_add_temp_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_Add_add_temp_P_UNCONNECTED;
  wire [47:0]NLW_Add_add_temp_PCOUT_UNCONNECTED;
  wire NLW_Product2_out1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Product2_out1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Product2_out1_OVERFLOW_UNCONNECTED;
  wire NLW_Product2_out1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Product2_out1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Product2_out1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Product2_out1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Product2_out1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Product2_out1_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Product2_out1_P_UNCONNECTED;
  wire [47:0]NLW_Product2_out1_PCOUT_UNCONNECTED;
  wire NLW_Product_out1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Product_out1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Product_out1_OVERFLOW_UNCONNECTED;
  wire NLW_Product_out1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Product_out1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Product_out1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Product_out1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Product_out1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Product_out1_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Product_out1_P_UNCONNECTED;
  wire [47:0]NLW_Product_out1_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Add1_add_temp
       (.A({Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Add1_add_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B[15],B[15],B[13],B[15],B[13],B[13],B[15],B[13],B[15],B[13],B[15],B[15],B[15],B[15],B[15],x1_p}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Add1_add_temp_BCOUT_UNCONNECTED[17:0]),
        .C({Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_76,Product2_out1_n_77,Product2_out1_n_78,Product2_out1_n_79,Product2_out1_n_80,Product2_out1_n_81,Product2_out1_n_82,Product2_out1_n_83,Product2_out1_n_84,Product2_out1_n_85,Product2_out1_n_86,Product2_out1_n_87,Product2_out1_n_88,Product2_out1_n_89,Product2_out1_n_90,Product2_out1_n_91,Product2_out1_n_92,Product2_out1_n_93,Product2_out1_n_94,Product2_out1_n_95,Product2_out1_n_96,Product2_out1_n_97,Product2_out1_n_98,Product2_out1_n_99,Product2_out1_n_100,Product2_out1_n_101,Product2_out1_n_102,Product2_out1_n_103,Product2_out1_n_104,Product2_out1_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Add1_add_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Add1_add_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Add1_add_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Add1_add_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Add1_add_temp_P_UNCONNECTED[47:30],data4,Add1_add_temp_n_92,Add1_add_temp_n_93,Add1_add_temp_n_94,Add1_add_temp_n_95,Add1_add_temp_n_96,Add1_add_temp_n_97,Add1_add_temp_n_98,Add1_add_temp_n_99,Add1_add_temp_n_100,Add1_add_temp_n_101,Add1_add_temp_n_102,Add1_add_temp_n_103,Add1_add_temp_n_104,Add1_add_temp_n_105}),
        .PATTERNBDETECT(NLW_Add1_add_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Add1_add_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Add1_add_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Add1_add_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Add_add_temp
       (.A({Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0[15],Add_add_temp_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Add_add_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_3,u_Trigonometric_Function_inst_n_4,u_Trigonometric_Function_inst_n_5,u_Trigonometric_Function_inst_n_6,u_Trigonometric_Function_inst_n_7,u_Trigonometric_Function_inst_n_8,u_Trigonometric_Function_inst_n_9,u_Trigonometric_Function_inst_n_10,u_Trigonometric_Function_inst_n_11,u_Trigonometric_Function_inst_n_12,u_Trigonometric_Function_inst_n_13,u_Trigonometric_Function_inst_n_14,u_Trigonometric_Function_inst_n_15,u_Trigonometric_Function_inst_n_16,x1_p}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Add_add_temp_BCOUT_UNCONNECTED[17:0]),
        .C({Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_76,Product_out1_n_77,Product_out1_n_78,Product_out1_n_79,Product_out1_n_80,Product_out1_n_81,Product_out1_n_82,Product_out1_n_83,Product_out1_n_84,Product_out1_n_85,Product_out1_n_86,Product_out1_n_87,Product_out1_n_88,Product_out1_n_89,Product_out1_n_90,Product_out1_n_91,Product_out1_n_92,Product_out1_n_93,Product_out1_n_94,Product_out1_n_95,Product_out1_n_96,Product_out1_n_97,Product_out1_n_98,Product_out1_n_99,Product_out1_n_100,Product_out1_n_101,Product_out1_n_102,Product_out1_n_103,Product_out1_n_104,Product_out1_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Add_add_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Add_add_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Add_add_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Add_add_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Add_add_temp_P_UNCONNECTED[47:30],data3,Add_add_temp_n_92,Add_add_temp_n_93,Add_add_temp_n_94,Add_add_temp_n_95,Add_add_temp_n_96,Add_add_temp_n_97,Add_add_temp_n_98,Add_add_temp_n_99,Add_add_temp_n_100,Add_add_temp_n_101,Add_add_temp_n_102,Add_add_temp_n_103,Add_add_temp_n_104,Add_add_temp_n_105}),
        .PATTERNBDETECT(NLW_Add_add_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Add_add_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Add_add_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Add_add_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Product2_out1
       (.A({Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Product2_out1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_3,u_Trigonometric_Function_inst_n_4,u_Trigonometric_Function_inst_n_5,u_Trigonometric_Function_inst_n_6,u_Trigonometric_Function_inst_n_7,u_Trigonometric_Function_inst_n_8,u_Trigonometric_Function_inst_n_9,u_Trigonometric_Function_inst_n_10,u_Trigonometric_Function_inst_n_11,u_Trigonometric_Function_inst_n_12,u_Trigonometric_Function_inst_n_13,u_Trigonometric_Function_inst_n_14,u_Trigonometric_Function_inst_n_15,u_Trigonometric_Function_inst_n_16,x1_p}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Product2_out1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Product2_out1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Product2_out1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Product2_out1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Product2_out1_OVERFLOW_UNCONNECTED),
        .P({NLW_Product2_out1_P_UNCONNECTED[47:32],Product2_out1_n_74,Product2_out1_n_75,Product2_out1_n_76,Product2_out1_n_77,Product2_out1_n_78,Product2_out1_n_79,Product2_out1_n_80,Product2_out1_n_81,Product2_out1_n_82,Product2_out1_n_83,Product2_out1_n_84,Product2_out1_n_85,Product2_out1_n_86,Product2_out1_n_87,Product2_out1_n_88,Product2_out1_n_89,Product2_out1_n_90,Product2_out1_n_91,Product2_out1_n_92,Product2_out1_n_93,Product2_out1_n_94,Product2_out1_n_95,Product2_out1_n_96,Product2_out1_n_97,Product2_out1_n_98,Product2_out1_n_99,Product2_out1_n_100,Product2_out1_n_101,Product2_out1_n_102,Product2_out1_n_103,Product2_out1_n_104,Product2_out1_n_105}),
        .PATTERNBDETECT(NLW_Product2_out1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Product2_out1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Product2_out1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Product2_out1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Product_out1
       (.A({Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Product_out1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B[15],B[15],B[13],B[15],B[13],B[13],B[15],B[13],B[15],B[13],B[15],B[15],B[15],B[15],B[15],x1_p}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Product_out1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Product_out1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Product_out1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Product_out1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Product_out1_OVERFLOW_UNCONNECTED),
        .P({NLW_Product_out1_P_UNCONNECTED[47:32],Product_out1_n_74,Product_out1_n_75,Product_out1_n_76,Product_out1_n_77,Product_out1_n_78,Product_out1_n_79,Product_out1_n_80,Product_out1_n_81,Product_out1_n_82,Product_out1_n_83,Product_out1_n_84,Product_out1_n_85,Product_out1_n_86,Product_out1_n_87,Product_out1_n_88,Product_out1_n_89,Product_out1_n_90,Product_out1_n_91,Product_out1_n_92,Product_out1_n_93,Product_out1_n_94,Product_out1_n_95,Product_out1_n_96,Product_out1_n_97,Product_out1_n_98,Product_out1_n_99,Product_out1_n_100,Product_out1_n_101,Product_out1_n_102,Product_out1_n_103,Product_out1_n_104,Product_out1_n_105}),
        .PATTERNBDETECT(NLW_Product_out1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Product_out1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Product_out1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Product_out1_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata_reg[0] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [0]),
        .I3(sel0[0]),
        .I4(data3[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[0]_i_3 
       (.I0(sel0[2]),
        .I1(data3[0]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [0]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[0] ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata_reg[10] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [10]),
        .I3(sel0[0]),
        .I4(data3[10]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[10]_i_3 
       (.I0(sel0[2]),
        .I1(data3[10]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [10]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[10] ),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[11] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [11]),
        .I3(sel0[0]),
        .I4(data3[11]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[11]_i_3 
       (.I0(sel0[2]),
        .I1(data3[11]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [11]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[11] ),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata_reg[12] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [12]),
        .I3(sel0[0]),
        .I4(data3[12]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[12]_i_3 
       (.I0(sel0[2]),
        .I1(data3[12]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [12]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[12] ),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_rdata_reg[13] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [13]),
        .I3(sel0[0]),
        .I4(data3[13]),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[13]_i_3 
       (.I0(sel0[2]),
        .I1(data3[13]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [13]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[13] ),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(data3[14]),
        .I1(\axi_rdata_reg[15] [14]),
        .I2(sel0[1]),
        .I3(Add_add_temp_0[14]),
        .I4(sel0[0]),
        .I5(Q[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[14]_i_3 
       (.I0(sel0[0]),
        .I1(data4[14]),
        .I2(sel0[1]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(data3[15]),
        .I1(\axi_rdata_reg[15] [15]),
        .I2(sel0[1]),
        .I3(Add_add_temp_0[15]),
        .I4(sel0[0]),
        .I5(Q[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[15]_i_3 
       (.I0(sel0[0]),
        .I1(data4[15]),
        .I2(sel0[1]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata_reg[1] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [1]),
        .I3(sel0[0]),
        .I4(data3[1]),
        .I5(sel0[2]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[1]_i_3 
       (.I0(sel0[2]),
        .I1(data3[1]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [1]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[1] ),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata_reg[2] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [2]),
        .I3(sel0[0]),
        .I4(data3[2]),
        .I5(sel0[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[2]_i_3 
       (.I0(sel0[2]),
        .I1(data3[2]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [2]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[2] ),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata_reg[3] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [3]),
        .I3(sel0[0]),
        .I4(data3[3]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[3]_i_3 
       (.I0(sel0[2]),
        .I1(data3[3]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [3]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[3] ),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata_reg[4] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [4]),
        .I3(sel0[0]),
        .I4(data3[4]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[4]_i_3 
       (.I0(sel0[2]),
        .I1(data3[4]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [4]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[4] ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata_reg[5] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [5]),
        .I3(sel0[0]),
        .I4(data3[5]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[5]_i_3 
       (.I0(sel0[2]),
        .I1(data3[5]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [5]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[5] ),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata_reg[6] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [6]),
        .I3(sel0[0]),
        .I4(data3[6]),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[6]_i_3 
       (.I0(sel0[2]),
        .I1(data3[6]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [6]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[6] ),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata_reg[7] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [7]),
        .I3(sel0[0]),
        .I4(data3[7]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[7]_i_3 
       (.I0(sel0[2]),
        .I1(data3[7]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [7]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[7] ),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata_reg[8] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [8]),
        .I3(sel0[0]),
        .I4(data3[8]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[8]_i_3 
       (.I0(sel0[2]),
        .I1(data3[8]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [8]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[8] ),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[9] ),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[15] [9]),
        .I3(sel0[0]),
        .I4(data3[9]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45405F5F45400A0A)) 
    \axi_rdata[9]_i_3 
       (.I0(sel0[2]),
        .I1(data3[9]),
        .I2(sel0[0]),
        .I3(\axi_rdata_reg[15] [9]),
        .I4(sel0[1]),
        .I5(\axi_rdata_reg[9] ),
        .O(\axi_rdata[9]_i_3_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(D[0]),
        .S(data4[0]));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(D[10]),
        .S(data4[10]));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(D[11]),
        .S(data4[11]));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(D[12]),
        .S(data4[12]));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(D[13]),
        .S(data4[13]));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(D[14]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(D[15]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(D[1]),
        .S(data4[1]));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(D[2]),
        .S(data4[2]));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(D[3]),
        .S(data4[3]));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(D[4]),
        .S(data4[4]));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(D[5]),
        .S(data4[5]));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(D[6]),
        .S(data4[6]));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(D[7]),
        .S(data4[7]));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(D[8]),
        .S(data4[8]));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(D[9]),
        .S(data4[9]));
  design_1_myip_0_0_Cos_cordic_nw u_Trigonometric_Function1_inst
       (.B({B[15],B[13],x1_p}),
        .\negate_reg_reg_reg[0]_0 (\axi_rdata_reg[15] [9:0]),
        .\negate_reg_reg_reg[0]_1 (u_Trigonometric_Function_inst_n_1),
        .\negate_reg_reg_reg[0]_2 (u_Trigonometric_Function_inst_n_0),
        .\negate_reg_reg_reg[1]_0 (u_Trigonometric_Function1_inst_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg2_reg[4] (u_Trigonometric_Function1_inst_n_4),
        .\slv_reg2_reg[5] (u_Trigonometric_Function1_inst_n_5),
        .\x1_p_reg[0]_0 (u_Trigonometric_Function1_inst_n_6));
  design_1_myip_0_0_Sin_cordic_nw u_Trigonometric_Function_inst
       (.B({u_Trigonometric_Function_inst_n_2,u_Trigonometric_Function_inst_n_3,u_Trigonometric_Function_inst_n_4,u_Trigonometric_Function_inst_n_5,u_Trigonometric_Function_inst_n_6,u_Trigonometric_Function_inst_n_7,u_Trigonometric_Function_inst_n_8,u_Trigonometric_Function_inst_n_9,u_Trigonometric_Function_inst_n_10,u_Trigonometric_Function_inst_n_11,u_Trigonometric_Function_inst_n_12,u_Trigonometric_Function_inst_n_13,u_Trigonometric_Function_inst_n_14,u_Trigonometric_Function_inst_n_15,u_Trigonometric_Function_inst_n_16}),
        .Product2_out1(u_Trigonometric_Function1_inst_n_6),
        .Product2_out1_0(u_Trigonometric_Function1_inst_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg2_reg[4] (u_Trigonometric_Function_inst_n_0),
        .\slv_reg2_reg[4]_0 (u_Trigonometric_Function_inst_n_1),
        .\z0_p_reg[14]_0 (u_Trigonometric_Function1_inst_n_4),
        .\z0_p_reg[15]_0 (\axi_rdata_reg[15] [9:0]),
        .\z0_p_reg[15]_1 (u_Trigonometric_Function1_inst_n_5));
endmodule

(* ORIG_REF_NAME = "myip_v1_0" *) 
module design_1_myip_0_0_myip_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_myip_0_0_myip_v1_0_S00_AXI myip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "myip_v1_0_S00_AXI" *) 
module design_1_myip_0_0_myip_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:6]moveFractionLengthUp_1;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg1[0]),
        .I1(sel0[0]),
        .I2(slv_reg0[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg1[10]),
        .I1(sel0[0]),
        .I2(slv_reg0[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg1[11]),
        .I1(sel0[0]),
        .I2(slv_reg0[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg1[12]),
        .I1(sel0[0]),
        .I2(slv_reg0[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg1[13]),
        .I1(sel0[0]),
        .I2(slv_reg0[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(sel0[0]),
        .I2(slv_reg1[16]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[16] ),
        .I5(sel0[2]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(sel0[0]),
        .I2(slv_reg1[17]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[17] ),
        .I5(sel0[2]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(sel0[0]),
        .I2(slv_reg1[18]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[18] ),
        .I5(sel0[2]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(sel0[0]),
        .I2(slv_reg1[19]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[19] ),
        .I5(sel0[2]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg1[1]),
        .I1(sel0[0]),
        .I2(slv_reg0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(sel0[0]),
        .I2(slv_reg1[20]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[20] ),
        .I5(sel0[2]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(sel0[0]),
        .I2(slv_reg1[21]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[21] ),
        .I5(sel0[2]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(sel0[0]),
        .I2(slv_reg1[22]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[22] ),
        .I5(sel0[2]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(sel0[0]),
        .I2(slv_reg1[23]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[23] ),
        .I5(sel0[2]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(sel0[0]),
        .I2(slv_reg1[24]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[24] ),
        .I5(sel0[2]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(sel0[0]),
        .I2(slv_reg1[25]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[25] ),
        .I5(sel0[2]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(sel0[0]),
        .I2(slv_reg1[26]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[26] ),
        .I5(sel0[2]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(sel0[0]),
        .I2(slv_reg1[27]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[27] ),
        .I5(sel0[2]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(sel0[0]),
        .I2(slv_reg1[28]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[28] ),
        .I5(sel0[2]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(sel0[0]),
        .I2(slv_reg1[29]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[29] ),
        .I5(sel0[2]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg1[2]),
        .I1(sel0[0]),
        .I2(slv_reg0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(sel0[0]),
        .I2(slv_reg1[30]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[30] ),
        .I5(sel0[2]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg0[31]),
        .I1(sel0[0]),
        .I2(slv_reg1[31]),
        .I3(sel0[1]),
        .I4(\slv_reg2_reg_n_0_[31] ),
        .I5(sel0[2]),
        .O(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg1[3]),
        .I1(sel0[0]),
        .I2(slv_reg0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg1[4]),
        .I1(sel0[0]),
        .I2(slv_reg0[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg1[5]),
        .I1(sel0[0]),
        .I2(slv_reg0[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg1[6]),
        .I1(sel0[0]),
        .I2(slv_reg0[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg1[7]),
        .I1(sel0[0]),
        .I2(slv_reg0[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg1[8]),
        .I1(sel0[0]),
        .I2(slv_reg0[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg1[9]),
        .I1(sel0[0]),
        .I2(slv_reg0[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  design_1_myip_0_0_my_block my_block_instance
       (.Add_add_temp_0(slv_reg1[15:0]),
        .D(reg_data_out[15:0]),
        .Q(slv_reg0[15:0]),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_4_n_0 ),
        .\axi_rdata_reg[10] (\axi_rdata[10]_i_4_n_0 ),
        .\axi_rdata_reg[11] (\axi_rdata[11]_i_4_n_0 ),
        .\axi_rdata_reg[12] (\axi_rdata[12]_i_4_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata[13]_i_4_n_0 ),
        .\axi_rdata_reg[15] ({\slv_reg2_reg_n_0_[15] ,\slv_reg2_reg_n_0_[14] ,\slv_reg2_reg_n_0_[13] ,\slv_reg2_reg_n_0_[12] ,\slv_reg2_reg_n_0_[11] ,\slv_reg2_reg_n_0_[10] ,moveFractionLengthUp_1}),
        .\axi_rdata_reg[1] (\axi_rdata[1]_i_4_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_4_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata[3]_i_4_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_4_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata[5]_i_4_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata[6]_i_4_n_0 ),
        .\axi_rdata_reg[7] (\axi_rdata[7]_i_4_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata[8]_i_4_n_0 ),
        .\axi_rdata_reg[9] (\axi_rdata[9]_i_4_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .sel0(sel0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(moveFractionLengthUp_1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(moveFractionLengthUp_1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(moveFractionLengthUp_1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(moveFractionLengthUp_1[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(moveFractionLengthUp_1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(moveFractionLengthUp_1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(moveFractionLengthUp_1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(moveFractionLengthUp_1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(moveFractionLengthUp_1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(moveFractionLengthUp_1[15]),
        .R(axi_awready_i_1_n_0));
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
