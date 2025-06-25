// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jun 19 12:05:47 2025
// Host        : Anexy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_lfsr_0_0_sim_netlist.v
// Design      : design_1_my_lfsr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR9
   (\up_Qout_reg[8] ,
    Q,
    s_axi_aclk,
    \up_INIT_reg[0] ,
    \up_SEED_reg[8] );
  output [8:0]\up_Qout_reg[8] ;
  input [0:0]Q;
  input s_axi_aclk;
  input [0:0]\up_INIT_reg[0] ;
  input [8:0]\up_SEED_reg[8] ;

  wire ImpGo;
  wire ImpGo0;
  wire [0:0]Q;
  wire Q0;
  wire Q1;
  wire [8:0]p_1_in;
  wire s_axi_aclk;
  wire \sreg[0]_i_1_n_0 ;
  wire t;
  wire t_i_1_n_0;
  wire [0:0]\up_INIT_reg[0] ;
  wire [8:0]\up_Qout_reg[8] ;
  wire [8:0]\up_SEED_reg[8] ;

  LUT2 #(
    .INIT(4'h2)) 
    ImpGo_i_1
       (.I0(Q0),
        .I1(Q1),
        .O(ImpGo0));
  FDRE ImpGo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ImpGo0),
        .Q(ImpGo),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Q0_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(Q0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Q1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q0),
        .Q(Q1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \sreg[0]_i_1 
       (.I0(\up_INIT_reg[0] ),
        .I1(ImpGo),
        .I2(t),
        .O(\sreg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3CC3C33C)) 
    \sreg[0]_i_2 
       (.I0(\up_SEED_reg[8] [8]),
        .I1(\up_Qout_reg[8] [6]),
        .I2(\up_Qout_reg[8] [1]),
        .I3(\up_Qout_reg[8] [0]),
        .I4(\up_Qout_reg[8] [7]),
        .I5(\up_INIT_reg[0] ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[1]_i_1 
       (.I0(\up_SEED_reg[8] [7]),
        .I1(\up_Qout_reg[8] [8]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[2]_i_1 
       (.I0(\up_SEED_reg[8] [6]),
        .I1(\up_Qout_reg[8] [7]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[3]_i_1 
       (.I0(\up_SEED_reg[8] [5]),
        .I1(\up_Qout_reg[8] [6]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[4]_i_1 
       (.I0(\up_SEED_reg[8] [4]),
        .I1(\up_Qout_reg[8] [5]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[5]_i_1 
       (.I0(\up_SEED_reg[8] [3]),
        .I1(\up_Qout_reg[8] [4]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[6]_i_1 
       (.I0(\up_SEED_reg[8] [2]),
        .I1(\up_Qout_reg[8] [3]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[7]_i_1 
       (.I0(\up_SEED_reg[8] [1]),
        .I1(\up_Qout_reg[8] [2]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sreg[8]_i_1 
       (.I0(\up_SEED_reg[8] [0]),
        .I1(\up_Qout_reg[8] [1]),
        .I2(\up_INIT_reg[0] ),
        .O(p_1_in[0]));
  FDRE \sreg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\up_Qout_reg[8] [8]),
        .R(1'b0));
  FDRE \sreg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\up_Qout_reg[8] [7]),
        .R(1'b0));
  FDRE \sreg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\up_Qout_reg[8] [6]),
        .R(1'b0));
  FDRE \sreg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\up_Qout_reg[8] [5]),
        .R(1'b0));
  FDRE \sreg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\up_Qout_reg[8] [4]),
        .R(1'b0));
  FDRE \sreg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\up_Qout_reg[8] [3]),
        .R(1'b0));
  FDRE \sreg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\up_Qout_reg[8] [2]),
        .R(1'b0));
  FDRE \sreg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\up_Qout_reg[8] [1]),
        .R(1'b0));
  FDRE \sreg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\sreg[0]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\up_Qout_reg[8] [0]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    t_i_1
       (.I0(ImpGo),
        .I1(\up_INIT_reg[0] ),
        .I2(t),
        .O(t_i_1_n_0));
  FDRE t_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t_i_1_n_0),
        .Q(t),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_my_lfsr_0_0,my_lfsr_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "my_lfsr_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn:s_axi_RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_RST, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0 inst
       (.s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[9:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[9:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_lfsr_v1_0
   (s_axi_rvalid,
    s_axi_rdata,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_wdata,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid);
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  input s_axi_rready;
  input s_axi_aresetn;
  input [31:0]s_axi_wdata;
  input s_axi_aclk;
  input [7:0]s_axi_awaddr;
  input [7:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;

  wire i_up_axi_n_0;
  wire i_up_axi_n_10;
  wire i_up_axi_n_105;
  wire i_up_axi_n_106;
  wire i_up_axi_n_107;
  wire i_up_axi_n_108;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_16;
  wire i_up_axi_n_17;
  wire i_up_axi_n_18;
  wire i_up_axi_n_19;
  wire i_up_axi_n_20;
  wire i_up_axi_n_21;
  wire i_up_axi_n_22;
  wire i_up_axi_n_23;
  wire i_up_axi_n_24;
  wire i_up_axi_n_25;
  wire i_up_axi_n_26;
  wire i_up_axi_n_27;
  wire i_up_axi_n_28;
  wire i_up_axi_n_29;
  wire i_up_axi_n_30;
  wire i_up_axi_n_31;
  wire i_up_axi_n_32;
  wire i_up_axi_n_33;
  wire i_up_axi_n_34;
  wire i_up_axi_n_35;
  wire i_up_axi_n_36;
  wire i_up_axi_n_37;
  wire i_up_axi_n_38;
  wire i_up_axi_n_39;
  wire i_up_axi_n_40;
  wire i_up_axi_n_41;
  wire i_up_axi_n_42;
  wire i_up_axi_n_43;
  wire i_up_axi_n_44;
  wire i_up_axi_n_45;
  wire i_up_axi_n_46;
  wire i_up_axi_n_47;
  wire i_up_axi_n_48;
  wire i_up_axi_n_49;
  wire i_up_axi_n_50;
  wire i_up_axi_n_51;
  wire i_up_axi_n_52;
  wire i_up_axi_n_53;
  wire i_up_axi_n_54;
  wire i_up_axi_n_55;
  wire i_up_axi_n_56;
  wire i_up_axi_n_57;
  wire i_up_axi_n_58;
  wire i_up_axi_n_59;
  wire i_up_axi_n_60;
  wire i_up_axi_n_61;
  wire i_up_axi_n_62;
  wire i_up_axi_n_63;
  wire i_up_axi_n_64;
  wire i_up_axi_n_65;
  wire i_up_axi_n_66;
  wire i_up_axi_n_67;
  wire i_up_axi_n_68;
  wire i_up_axi_n_69;
  wire i_up_axi_n_70;
  wire i_up_axi_n_71;
  wire i_up_axi_n_8;
  wire i_up_axi_n_9;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:8]sreg;
  wire [31:0]up_GO;
  wire [0:0]up_INIT;
  wire \up_INIT_reg_n_0_[10] ;
  wire \up_INIT_reg_n_0_[11] ;
  wire \up_INIT_reg_n_0_[12] ;
  wire \up_INIT_reg_n_0_[13] ;
  wire \up_INIT_reg_n_0_[14] ;
  wire \up_INIT_reg_n_0_[15] ;
  wire \up_INIT_reg_n_0_[16] ;
  wire \up_INIT_reg_n_0_[17] ;
  wire \up_INIT_reg_n_0_[18] ;
  wire \up_INIT_reg_n_0_[19] ;
  wire \up_INIT_reg_n_0_[1] ;
  wire \up_INIT_reg_n_0_[20] ;
  wire \up_INIT_reg_n_0_[21] ;
  wire \up_INIT_reg_n_0_[22] ;
  wire \up_INIT_reg_n_0_[23] ;
  wire \up_INIT_reg_n_0_[24] ;
  wire \up_INIT_reg_n_0_[25] ;
  wire \up_INIT_reg_n_0_[26] ;
  wire \up_INIT_reg_n_0_[27] ;
  wire \up_INIT_reg_n_0_[28] ;
  wire \up_INIT_reg_n_0_[29] ;
  wire \up_INIT_reg_n_0_[2] ;
  wire \up_INIT_reg_n_0_[30] ;
  wire \up_INIT_reg_n_0_[31] ;
  wire \up_INIT_reg_n_0_[3] ;
  wire \up_INIT_reg_n_0_[4] ;
  wire \up_INIT_reg_n_0_[5] ;
  wire \up_INIT_reg_n_0_[6] ;
  wire \up_INIT_reg_n_0_[7] ;
  wire \up_INIT_reg_n_0_[8] ;
  wire \up_INIT_reg_n_0_[9] ;
  wire [8:0]up_Qout;
  wire [31:0]up_SEED;
  wire up_rack;
  wire [31:0]up_rdata;
  wire up_resetn_reg_inv_n_0;
  wire up_rreq_s;
  wire up_wack;
  wire [0:0]up_wdata_s;
  wire up_wreq_s;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi i_up_axi
       (.D({i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,i_up_axi_n_17,i_up_axi_n_18,i_up_axi_n_19,i_up_axi_n_20,i_up_axi_n_21,i_up_axi_n_22,i_up_axi_n_23,i_up_axi_n_24,i_up_axi_n_25,i_up_axi_n_26,i_up_axi_n_27,i_up_axi_n_28,i_up_axi_n_29,i_up_axi_n_30,i_up_axi_n_31,i_up_axi_n_32,i_up_axi_n_33,i_up_axi_n_34,i_up_axi_n_35,i_up_axi_n_36,i_up_axi_n_37,i_up_axi_n_38,i_up_axi_n_39,i_up_axi_n_40}),
        .E(i_up_axi_n_106),
        .Q(up_rdata),
        .SR(i_up_axi_n_8),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\up_GO_reg[0] (i_up_axi_n_108),
        .\up_GO_reg[31] (up_GO),
        .\up_INIT_reg[0] (i_up_axi_n_107),
        .\up_INIT_reg[31] ({i_up_axi_n_41,i_up_axi_n_42,i_up_axi_n_43,i_up_axi_n_44,i_up_axi_n_45,i_up_axi_n_46,i_up_axi_n_47,i_up_axi_n_48,i_up_axi_n_49,i_up_axi_n_50,i_up_axi_n_51,i_up_axi_n_52,i_up_axi_n_53,i_up_axi_n_54,i_up_axi_n_55,i_up_axi_n_56,i_up_axi_n_57,i_up_axi_n_58,i_up_axi_n_59,i_up_axi_n_60,i_up_axi_n_61,i_up_axi_n_62,i_up_axi_n_63,i_up_axi_n_64,i_up_axi_n_65,i_up_axi_n_66,i_up_axi_n_67,i_up_axi_n_68,i_up_axi_n_69,i_up_axi_n_70,i_up_axi_n_71,up_wdata_s}),
        .\up_INIT_reg[31]_0 ({\up_INIT_reg_n_0_[31] ,\up_INIT_reg_n_0_[30] ,\up_INIT_reg_n_0_[29] ,\up_INIT_reg_n_0_[28] ,\up_INIT_reg_n_0_[27] ,\up_INIT_reg_n_0_[26] ,\up_INIT_reg_n_0_[25] ,\up_INIT_reg_n_0_[24] ,\up_INIT_reg_n_0_[23] ,\up_INIT_reg_n_0_[22] ,\up_INIT_reg_n_0_[21] ,\up_INIT_reg_n_0_[20] ,\up_INIT_reg_n_0_[19] ,\up_INIT_reg_n_0_[18] ,\up_INIT_reg_n_0_[17] ,\up_INIT_reg_n_0_[16] ,\up_INIT_reg_n_0_[15] ,\up_INIT_reg_n_0_[14] ,\up_INIT_reg_n_0_[13] ,\up_INIT_reg_n_0_[12] ,\up_INIT_reg_n_0_[11] ,\up_INIT_reg_n_0_[10] ,\up_INIT_reg_n_0_[9] ,\up_INIT_reg_n_0_[8] ,\up_INIT_reg_n_0_[7] ,\up_INIT_reg_n_0_[6] ,\up_INIT_reg_n_0_[5] ,\up_INIT_reg_n_0_[4] ,\up_INIT_reg_n_0_[3] ,\up_INIT_reg_n_0_[2] ,\up_INIT_reg_n_0_[1] ,up_INIT}),
        .\up_Qout_reg[8] (up_Qout),
        .\up_SEED_reg[31] (up_SEED),
        .up_axi_arready_int_reg_0(i_up_axi_n_0),
        .up_rack(up_rack),
        .up_resetn_reg_inv(i_up_axi_n_105),
        .up_rreq_s(up_rreq_s),
        .up_wack(up_wack),
        .up_wreq_s(up_wreq_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LFSR9 my_lfsr9
       (.Q(up_GO[0]),
        .s_axi_aclk(s_axi_aclk),
        .\up_INIT_reg[0] (up_INIT),
        .\up_Qout_reg[8] ({sreg[0],sreg[1],sreg[2],sreg[3],sreg[4],sreg[5],sreg[6],sreg[7],sreg[8]}),
        .\up_SEED_reg[8] (up_SEED[8:0]));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(up_wdata_s),
        .Q(up_GO[0]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_62),
        .Q(up_GO[10]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_61),
        .Q(up_GO[11]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_60),
        .Q(up_GO[12]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_59),
        .Q(up_GO[13]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_58),
        .Q(up_GO[14]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_57),
        .Q(up_GO[15]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_56),
        .Q(up_GO[16]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_55),
        .Q(up_GO[17]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_54),
        .Q(up_GO[18]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_53),
        .Q(up_GO[19]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_71),
        .Q(up_GO[1]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_52),
        .Q(up_GO[20]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_51),
        .Q(up_GO[21]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_50),
        .Q(up_GO[22]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_49),
        .Q(up_GO[23]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_48),
        .Q(up_GO[24]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_47),
        .Q(up_GO[25]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_46),
        .Q(up_GO[26]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_45),
        .Q(up_GO[27]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_44),
        .Q(up_GO[28]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_43),
        .Q(up_GO[29]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_70),
        .Q(up_GO[2]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_42),
        .Q(up_GO[30]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_41),
        .Q(up_GO[31]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_69),
        .Q(up_GO[3]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_68),
        .Q(up_GO[4]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_67),
        .Q(up_GO[5]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_66),
        .Q(up_GO[6]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_65),
        .Q(up_GO[7]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_64),
        .Q(up_GO[8]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_GO_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_108),
        .D(i_up_axi_n_63),
        .Q(up_GO[9]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(up_wdata_s),
        .Q(up_INIT),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_62),
        .Q(\up_INIT_reg_n_0_[10] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_61),
        .Q(\up_INIT_reg_n_0_[11] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_60),
        .Q(\up_INIT_reg_n_0_[12] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_59),
        .Q(\up_INIT_reg_n_0_[13] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_58),
        .Q(\up_INIT_reg_n_0_[14] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_57),
        .Q(\up_INIT_reg_n_0_[15] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_56),
        .Q(\up_INIT_reg_n_0_[16] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_55),
        .Q(\up_INIT_reg_n_0_[17] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_54),
        .Q(\up_INIT_reg_n_0_[18] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_53),
        .Q(\up_INIT_reg_n_0_[19] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_71),
        .Q(\up_INIT_reg_n_0_[1] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_52),
        .Q(\up_INIT_reg_n_0_[20] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_51),
        .Q(\up_INIT_reg_n_0_[21] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_50),
        .Q(\up_INIT_reg_n_0_[22] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_49),
        .Q(\up_INIT_reg_n_0_[23] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_48),
        .Q(\up_INIT_reg_n_0_[24] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_47),
        .Q(\up_INIT_reg_n_0_[25] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_46),
        .Q(\up_INIT_reg_n_0_[26] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_45),
        .Q(\up_INIT_reg_n_0_[27] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_44),
        .Q(\up_INIT_reg_n_0_[28] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_43),
        .Q(\up_INIT_reg_n_0_[29] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_70),
        .Q(\up_INIT_reg_n_0_[2] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_42),
        .Q(\up_INIT_reg_n_0_[30] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_41),
        .Q(\up_INIT_reg_n_0_[31] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_69),
        .Q(\up_INIT_reg_n_0_[3] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_68),
        .Q(\up_INIT_reg_n_0_[4] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_67),
        .Q(\up_INIT_reg_n_0_[5] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_66),
        .Q(\up_INIT_reg_n_0_[6] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_65),
        .Q(\up_INIT_reg_n_0_[7] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_64),
        .Q(\up_INIT_reg_n_0_[8] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_INIT_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_107),
        .D(i_up_axi_n_63),
        .Q(\up_INIT_reg_n_0_[9] ),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[8]),
        .Q(up_Qout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[7]),
        .Q(up_Qout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[6]),
        .Q(up_Qout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[5]),
        .Q(up_Qout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[4]),
        .Q(up_Qout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[3]),
        .Q(up_Qout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[2]),
        .Q(up_Qout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(up_Qout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_Qout_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(up_Qout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(up_wdata_s),
        .Q(up_SEED[0]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_62),
        .Q(up_SEED[10]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_61),
        .Q(up_SEED[11]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_60),
        .Q(up_SEED[12]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_59),
        .Q(up_SEED[13]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_58),
        .Q(up_SEED[14]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_57),
        .Q(up_SEED[15]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_56),
        .Q(up_SEED[16]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_55),
        .Q(up_SEED[17]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_54),
        .Q(up_SEED[18]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_53),
        .Q(up_SEED[19]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_71),
        .Q(up_SEED[1]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_52),
        .Q(up_SEED[20]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_51),
        .Q(up_SEED[21]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_50),
        .Q(up_SEED[22]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_49),
        .Q(up_SEED[23]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_48),
        .Q(up_SEED[24]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_47),
        .Q(up_SEED[25]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_46),
        .Q(up_SEED[26]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_45),
        .Q(up_SEED[27]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_44),
        .Q(up_SEED[28]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_43),
        .Q(up_SEED[29]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_70),
        .Q(up_SEED[2]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_42),
        .Q(up_SEED[30]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_41),
        .Q(up_SEED[31]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_69),
        .Q(up_SEED[3]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_68),
        .Q(up_SEED[4]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_67),
        .Q(up_SEED[5]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_66),
        .Q(up_SEED[6]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_65),
        .Q(up_SEED[7]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_64),
        .Q(up_SEED[8]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_SEED_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_106),
        .D(i_up_axi_n_63),
        .Q(up_SEED[9]),
        .R(up_resetn_reg_inv_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_s),
        .Q(up_rack),
        .R(i_up_axi_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_40),
        .Q(up_rdata[0]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_30),
        .Q(up_rdata[10]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_29),
        .Q(up_rdata[11]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_28),
        .Q(up_rdata[12]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_27),
        .Q(up_rdata[13]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_26),
        .Q(up_rdata[14]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_25),
        .Q(up_rdata[15]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_24),
        .Q(up_rdata[16]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_23),
        .Q(up_rdata[17]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_22),
        .Q(up_rdata[18]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_21),
        .Q(up_rdata[19]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_39),
        .Q(up_rdata[1]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_20),
        .Q(up_rdata[20]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_19),
        .Q(up_rdata[21]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_18),
        .Q(up_rdata[22]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_17),
        .Q(up_rdata[23]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_16),
        .Q(up_rdata[24]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_15),
        .Q(up_rdata[25]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_14),
        .Q(up_rdata[26]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_13),
        .Q(up_rdata[27]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_12),
        .Q(up_rdata[28]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_11),
        .Q(up_rdata[29]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_38),
        .Q(up_rdata[2]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_10),
        .Q(up_rdata[30]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_9),
        .Q(up_rdata[31]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_37),
        .Q(up_rdata[3]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_36),
        .Q(up_rdata[4]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_35),
        .Q(up_rdata[5]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_34),
        .Q(up_rdata[6]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_33),
        .Q(up_rdata[7]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_32),
        .Q(up_rdata[8]),
        .R(i_up_axi_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_31),
        .Q(up_rdata[9]),
        .R(i_up_axi_n_8));
  FDSE #(
    .INIT(1'b1)) 
    up_resetn_reg_inv
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_105),
        .Q(up_resetn_reg_inv_n_0),
        .S(i_up_axi_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_s),
        .Q(up_wack),
        .R(i_up_axi_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi
   (up_axi_arready_int_reg_0,
    s_axi_bvalid,
    up_wreq_s,
    s_axi_awready,
    s_axi_wready,
    up_rreq_s,
    s_axi_arready,
    s_axi_rvalid,
    SR,
    D,
    \up_INIT_reg[31] ,
    s_axi_rdata,
    up_resetn_reg_inv,
    E,
    \up_INIT_reg[0] ,
    \up_GO_reg[0] ,
    s_axi_aclk,
    s_axi_rready,
    s_axi_aresetn,
    Q,
    \up_SEED_reg[31] ,
    \up_Qout_reg[8] ,
    \up_GO_reg[31] ,
    \up_INIT_reg[31]_0 ,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_arvalid,
    up_rack,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr,
    up_wack);
  output up_axi_arready_int_reg_0;
  output s_axi_bvalid;
  output up_wreq_s;
  output s_axi_awready;
  output s_axi_wready;
  output up_rreq_s;
  output s_axi_arready;
  output s_axi_rvalid;
  output [0:0]SR;
  output [31:0]D;
  output [31:0]\up_INIT_reg[31] ;
  output [31:0]s_axi_rdata;
  output up_resetn_reg_inv;
  output [0:0]E;
  output [0:0]\up_INIT_reg[0] ;
  output [0:0]\up_GO_reg[0] ;
  input s_axi_aclk;
  input s_axi_rready;
  input s_axi_aresetn;
  input [31:0]Q;
  input [31:0]\up_SEED_reg[31] ;
  input [8:0]\up_Qout_reg[8] ;
  input [31:0]\up_GO_reg[31] ;
  input [31:0]\up_INIT_reg[31]_0 ;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input up_rack;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_awaddr;
  input [7:0]s_axi_araddr;
  input up_wack;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire p_5_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \up_GO[31]_i_2_n_0 ;
  wire [0:0]\up_GO_reg[0] ;
  wire [31:0]\up_GO_reg[31] ;
  wire [0:0]\up_INIT_reg[0] ;
  wire [31:0]\up_INIT_reg[31] ;
  wire [31:0]\up_INIT_reg[31]_0 ;
  wire [8:0]\up_Qout_reg[8] ;
  wire [31:0]\up_SEED_reg[31] ;
  wire up_axi_arready_int_i_1_n_0;
  wire up_axi_arready_int_i_2_n_0;
  wire up_axi_arready_int_reg_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_wready_int_i_1_n_0;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire [7:0]up_raddr_int;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[4]_i_1_n_0 ;
  wire \up_rcount[4]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rcount_reg_n_0_[3] ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[24]_i_2_n_0 ;
  wire \up_rdata[25]_i_2_n_0 ;
  wire \up_rdata[26]_i_2_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[28]_i_2_n_0 ;
  wire \up_rdata[29]_i_2_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[31]_i_3_n_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_3_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire [31:0]up_rdata_d;
  wire \up_rdata_d[13]_i_1_n_0 ;
  wire \up_rdata_d[17]_i_1_n_0 ;
  wire \up_rdata_d[1]_i_1_n_0 ;
  wire \up_rdata_d[20]_i_1_n_0 ;
  wire \up_rdata_d[22]_i_1_n_0 ;
  wire \up_rdata_d[24]_i_1_n_0 ;
  wire \up_rdata_d[29]_i_1_n_0 ;
  wire \up_rdata_d[4]_i_1_n_0 ;
  wire \up_rdata_d[6]_i_1_n_0 ;
  wire \up_rdata_d[8]_i_1_n_0 ;
  wire [31:0]up_rdata_s;
  wire up_resetn_reg_inv;
  wire up_rreq_int_i_1_n_0;
  wire up_rreq_s;
  wire up_rsel_i_1_n_0;
  wire up_rsel_reg_n_0;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire [7:0]up_waddr_s;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[1]_i_1_n_0 ;
  wire \up_wcount[2]_i_1_n_0 ;
  wire \up_wcount[3]_i_1_n_0 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount[4]_i_2_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire up_wreq_int_i_1_n_0;
  wire up_wreq_s;
  wire up_wsel_i_1_n_0;
  wire up_wsel_reg_n_0;

  LUT5 #(
    .INIT(32'h00000800)) 
    \up_GO[31]_i_1 
       (.I0(up_waddr_s[0]),
        .I1(\up_GO[31]_i_2_n_0 ),
        .I2(up_waddr_s[5]),
        .I3(up_waddr_s[2]),
        .I4(up_waddr_s[1]),
        .O(\up_GO_reg[0] ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \up_GO[31]_i_2 
       (.I0(up_waddr_s[3]),
        .I1(up_waddr_s[4]),
        .I2(up_waddr_s[6]),
        .I3(up_waddr_s[7]),
        .I4(up_wreq_s),
        .O(\up_GO[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \up_INIT[31]_i_1 
       (.I0(\up_GO[31]_i_2_n_0 ),
        .I1(up_waddr_s[5]),
        .I2(up_waddr_s[2]),
        .I3(up_waddr_s[1]),
        .I4(up_waddr_s[0]),
        .O(\up_INIT_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \up_SEED[31]_i_1 
       (.I0(up_waddr_s[2]),
        .I1(up_waddr_s[5]),
        .I2(up_waddr_s[0]),
        .I3(up_waddr_s[1]),
        .I4(\up_GO[31]_i_2_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h5444)) 
    up_axi_arready_int_i_1
       (.I0(s_axi_arready),
        .I1(up_axi_arready_int_i_2_n_0),
        .I2(p_0_in6_in),
        .I3(up_rack),
        .O(up_axi_arready_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    up_axi_arready_int_i_2
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .O(up_axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(up_axi_arready_int_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(up_axi_arready_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_int_i_2
       (.I0(s_axi_awready),
        .I1(up_wack_s),
        .O(up_axi_awready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_awready_int_i_2_n_0),
        .Q(s_axi_awready),
        .R(up_axi_arready_int_reg_0));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_bvalid_int_i_1
       (.I0(up_wack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(up_axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8F)) 
    \up_axi_rdata_int[31]_i_1 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[0]),
        .Q(s_axi_rdata[0]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[10]),
        .Q(s_axi_rdata[10]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[11]),
        .Q(s_axi_rdata[11]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[12]),
        .Q(s_axi_rdata[12]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[13]),
        .Q(s_axi_rdata[13]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[14]),
        .Q(s_axi_rdata[14]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[15]),
        .Q(s_axi_rdata[15]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[16]),
        .Q(s_axi_rdata[16]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[17]),
        .Q(s_axi_rdata[17]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[18]),
        .Q(s_axi_rdata[18]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[19]),
        .Q(s_axi_rdata[19]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[1]),
        .Q(s_axi_rdata[1]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[20]),
        .Q(s_axi_rdata[20]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[21]),
        .Q(s_axi_rdata[21]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[22]),
        .Q(s_axi_rdata[22]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[23]),
        .Q(s_axi_rdata[23]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[24]),
        .Q(s_axi_rdata[24]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[25]),
        .Q(s_axi_rdata[25]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[26]),
        .Q(s_axi_rdata[26]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[27]),
        .Q(s_axi_rdata[27]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[28]),
        .Q(s_axi_rdata[28]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[29]),
        .Q(s_axi_rdata[29]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[2]),
        .Q(s_axi_rdata[2]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[30]),
        .Q(s_axi_rdata[30]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[31]),
        .Q(s_axi_rdata[31]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[3]),
        .Q(s_axi_rdata[3]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[4]),
        .Q(s_axi_rdata[4]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[5]),
        .Q(s_axi_rdata[5]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[6]),
        .Q(s_axi_rdata[6]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[7]),
        .Q(s_axi_rdata[7]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[8]),
        .Q(s_axi_rdata[8]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[9]),
        .Q(s_axi_rdata[9]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_rvalid_int_i_1
       (.I0(up_rack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(up_axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_rvalid_int_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_int_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_s),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(up_axi_arready_int_reg_0));
  LUT6 #(
    .INIT(64'hE0A0A0A0A0A0A0A0)) 
    up_rack_d_i_1
       (.I0(up_rack),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s),
        .Q(up_rack_d),
        .R(up_axi_arready_int_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \up_raddr_int[7]_i_1 
       (.I0(up_rsel_reg_n_0),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[0]),
        .Q(up_raddr_int[0]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[1]),
        .Q(up_raddr_int[1]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[2]),
        .Q(up_raddr_int[2]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(up_raddr_int[3]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(up_raddr_int[4]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[5]),
        .Q(up_raddr_int[5]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[6]),
        .Q(up_raddr_int[6]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[7]),
        .Q(up_raddr_int[7]),
        .R(up_axi_arready_int_reg_0));
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(\up_rcount_reg_n_0_[0] ),
        .I1(p_0_in6_in),
        .I2(up_rack),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \up_rcount[1]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(up_rack),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007080)) 
    \up_rcount[2]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(up_rack),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \up_rcount[3]_i_1 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rcount[4]_i_1 
       (.I0(up_axi_arready_int_i_2_n_0),
        .I1(up_rreq_s),
        .I2(p_0_in6_in),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF7FFFFFFF)) 
    \up_rcount[4]_i_2 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[3]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[3] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[4]_i_2_n_0 ),
        .Q(p_0_in6_in),
        .R(up_axi_arready_int_reg_0));
  LUT6 #(
    .INIT(64'h00000000FF910091)) 
    \up_rdata[0]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(up_raddr_int[1]),
        .I2(\up_SEED_reg[31] [0]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[0]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[0]_i_2 
       (.I0(\up_Qout_reg[8] [0]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [0]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [0]),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[10]_i_2 
       (.I0(\up_INIT_reg[31]_0 [10]),
        .I1(\up_GO_reg[31] [10]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [10]),
        .O(\up_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[11]_i_2 
       (.I0(\up_INIT_reg[31]_0 [11]),
        .I1(\up_GO_reg[31] [11]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [11]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[12]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[12]_i_2 
       (.I0(\up_INIT_reg[31]_0 [12]),
        .I1(\up_GO_reg[31] [12]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [12]),
        .O(\up_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[13]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[13]_i_2 
       (.I0(\up_INIT_reg[31]_0 [13]),
        .I1(\up_GO_reg[31] [13]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [13]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[14]_i_2 
       (.I0(\up_INIT_reg[31]_0 [14]),
        .I1(\up_GO_reg[31] [14]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [14]),
        .O(\up_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[15]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[15]_i_2 
       (.I0(\up_INIT_reg[31]_0 [15]),
        .I1(\up_GO_reg[31] [15]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [15]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[16]_i_1 
       (.I0(\up_rdata[16]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[16]_i_2 
       (.I0(\up_INIT_reg[31]_0 [16]),
        .I1(\up_GO_reg[31] [16]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [16]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[17]_i_2 
       (.I0(\up_INIT_reg[31]_0 [17]),
        .I1(\up_GO_reg[31] [17]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [17]),
        .O(\up_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[18]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[18]_i_2 
       (.I0(\up_INIT_reg[31]_0 [18]),
        .I1(\up_GO_reg[31] [18]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [18]),
        .O(\up_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[19]_i_2 
       (.I0(\up_INIT_reg[31]_0 [19]),
        .I1(\up_GO_reg[31] [19]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [19]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \up_rdata[1]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(\up_SEED_reg[31] [1]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[1]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[1]_i_2 
       (.I0(\up_Qout_reg[8] [1]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [1]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [1]),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[20]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[20]_i_2 
       (.I0(\up_INIT_reg[31]_0 [20]),
        .I1(\up_GO_reg[31] [20]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [20]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[21]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[21]_i_2 
       (.I0(\up_INIT_reg[31]_0 [21]),
        .I1(\up_GO_reg[31] [21]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [21]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[22]_i_2 
       (.I0(\up_INIT_reg[31]_0 [22]),
        .I1(\up_GO_reg[31] [22]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [22]),
        .O(\up_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[23]_i_2 
       (.I0(\up_INIT_reg[31]_0 [23]),
        .I1(\up_GO_reg[31] [23]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [23]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata[24]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[24]_i_2 
       (.I0(\up_INIT_reg[31]_0 [24]),
        .I1(\up_GO_reg[31] [24]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [24]),
        .O(\up_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata[25]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[25]_i_2 
       (.I0(\up_INIT_reg[31]_0 [25]),
        .I1(\up_GO_reg[31] [25]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [25]),
        .O(\up_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[26]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[26]_i_2 
       (.I0(\up_INIT_reg[31]_0 [26]),
        .I1(\up_GO_reg[31] [26]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [26]),
        .O(\up_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[27]_i_2 
       (.I0(\up_INIT_reg[31]_0 [27]),
        .I1(\up_GO_reg[31] [27]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [27]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata[28]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[28]_i_2 
       (.I0(\up_INIT_reg[31]_0 [28]),
        .I1(\up_GO_reg[31] [28]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [28]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[29]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[29]_i_2 
       (.I0(\up_INIT_reg[31]_0 [29]),
        .I1(\up_GO_reg[31] [29]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [29]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \up_rdata[2]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(\up_SEED_reg[31] [2]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[2]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[2]_i_2 
       (.I0(\up_Qout_reg[8] [2]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [2]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [2]),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0FC00FA000C00FA0)) 
    \up_rdata[30]_i_2 
       (.I0(\up_INIT_reg[31]_0 [30]),
        .I1(\up_GO_reg[31] [30]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(up_raddr_int[0]),
        .I5(\up_SEED_reg[31] [30]),
        .O(\up_rdata[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \up_rdata[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(up_rreq_s),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[31]_i_2 
       (.I0(\up_rdata[31]_i_3_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[31]_i_3 
       (.I0(\up_INIT_reg[31]_0 [31]),
        .I1(\up_GO_reg[31] [31]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [31]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \up_rdata[3]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(\up_SEED_reg[31] [3]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[3]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[3]_i_2 
       (.I0(\up_Qout_reg[8] [3]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [3]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [3]),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB000B0)) 
    \up_rdata[4]_i_1 
       (.I0(\up_SEED_reg[31] [4]),
        .I1(up_raddr_int[0]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[4]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[4]_i_2 
       (.I0(\up_Qout_reg[8] [4]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [4]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [4]),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \up_rdata[5]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(\up_SEED_reg[31] [5]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[5]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[5]_i_2 
       (.I0(\up_Qout_reg[8] [5]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [5]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [5]),
        .O(\up_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB000B0)) 
    \up_rdata[6]_i_1 
       (.I0(\up_SEED_reg[31] [6]),
        .I1(up_raddr_int[0]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[6]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[6]_i_2 
       (.I0(\up_Qout_reg[8] [6]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [6]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [6]),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \up_rdata[7]_i_1 
       (.I0(up_raddr_int[0]),
        .I1(\up_SEED_reg[31] [7]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[7]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[7]_i_2 
       (.I0(\up_Qout_reg[8] [7]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [7]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [7]),
        .O(\up_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB000B0)) 
    \up_rdata[8]_i_1 
       (.I0(\up_SEED_reg[31] [8]),
        .I1(up_raddr_int[0]),
        .I2(up_raddr_int[1]),
        .I3(up_raddr_int[2]),
        .I4(\up_rdata[8]_i_2_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[8]_i_2 
       (.I0(\up_Qout_reg[8] [8]),
        .I1(up_raddr_int[1]),
        .I2(\up_GO_reg[31] [8]),
        .I3(up_raddr_int[0]),
        .I4(\up_INIT_reg[31]_0 [8]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \up_rdata[8]_i_3 
       (.I0(up_raddr_int[7]),
        .I1(up_raddr_int[4]),
        .I2(up_raddr_int[3]),
        .I3(up_raddr_int[6]),
        .I4(up_raddr_int[5]),
        .O(\up_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata[9]_i_2_n_0 ),
        .I1(up_raddr_int[5]),
        .I2(up_raddr_int[6]),
        .I3(up_raddr_int[3]),
        .I4(up_raddr_int[4]),
        .I5(up_raddr_int[7]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0FC000C000A000A0)) 
    \up_rdata[9]_i_2 
       (.I0(\up_INIT_reg[31]_0 [9]),
        .I1(\up_GO_reg[31] [9]),
        .I2(up_raddr_int[2]),
        .I3(up_raddr_int[1]),
        .I4(\up_SEED_reg[31] [9]),
        .I5(up_raddr_int[0]),
        .O(\up_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[0]_i_1 
       (.I0(Q[0]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[0]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[10]_i_1 
       (.I0(Q[10]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[10]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[11]_i_1 
       (.I0(Q[11]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[11]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[12]_i_1 
       (.I0(Q[12]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[12]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[13]_i_1 
       (.I0(Q[13]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[14]_i_1 
       (.I0(Q[14]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[14]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[15]_i_1 
       (.I0(Q[15]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[15]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[16]_i_1 
       (.I0(Q[16]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[16]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[17]_i_1 
       (.I0(Q[17]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[18]_i_1 
       (.I0(Q[18]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[18]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[19]_i_1 
       (.I0(Q[19]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[19]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[1]_i_1 
       (.I0(Q[1]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[20]_i_1 
       (.I0(Q[20]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[21]_i_1 
       (.I0(Q[21]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[21]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[22]_i_1 
       (.I0(Q[22]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[23]_i_1 
       (.I0(Q[23]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[23]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[24]_i_1 
       (.I0(Q[24]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[25]_i_1 
       (.I0(Q[25]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[25]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[26]_i_1 
       (.I0(Q[26]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[26]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[27]_i_1 
       (.I0(Q[27]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[27]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[28]_i_1 
       (.I0(Q[28]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[28]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[29]_i_1 
       (.I0(Q[29]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[2]_i_1 
       (.I0(Q[2]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[2]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[30]_i_1 
       (.I0(Q[30]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[30]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[31]_i_1 
       (.I0(Q[31]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[31]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[3]_i_1 
       (.I0(Q[3]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[4]_i_1 
       (.I0(Q[4]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[5]_i_1 
       (.I0(Q[5]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[6]_i_1 
       (.I0(Q[6]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[7]_i_1 
       (.I0(Q[7]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[7]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[8]_i_1 
       (.I0(Q[8]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[9]_i_1 
       (.I0(Q[9]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[9]));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[0]),
        .Q(up_rdata_d[0]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[10]),
        .Q(up_rdata_d[10]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[11]),
        .Q(up_rdata_d[11]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[12]),
        .Q(up_rdata_d[12]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[13]_i_1_n_0 ),
        .Q(up_rdata_d[13]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[14]),
        .Q(up_rdata_d[14]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[15]),
        .Q(up_rdata_d[15]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[16]),
        .Q(up_rdata_d[16]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[17]_i_1_n_0 ),
        .Q(up_rdata_d[17]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[18]),
        .Q(up_rdata_d[18]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[19]),
        .Q(up_rdata_d[19]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[1]_i_1_n_0 ),
        .Q(up_rdata_d[1]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[20]_i_1_n_0 ),
        .Q(up_rdata_d[20]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[21]),
        .Q(up_rdata_d[21]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[22]_i_1_n_0 ),
        .Q(up_rdata_d[22]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[23]),
        .Q(up_rdata_d[23]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[24]_i_1_n_0 ),
        .Q(up_rdata_d[24]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[25]),
        .Q(up_rdata_d[25]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[26]),
        .Q(up_rdata_d[26]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[27]),
        .Q(up_rdata_d[27]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[28]),
        .Q(up_rdata_d[28]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[29]_i_1_n_0 ),
        .Q(up_rdata_d[29]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[2]),
        .Q(up_rdata_d[2]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[30]),
        .Q(up_rdata_d[30]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[31]),
        .Q(up_rdata_d[31]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[3]),
        .Q(up_rdata_d[3]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[4]_i_1_n_0 ),
        .Q(up_rdata_d[4]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[5]),
        .Q(up_rdata_d[5]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[6]_i_1_n_0 ),
        .Q(up_rdata_d[6]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[7]),
        .Q(up_rdata_d[7]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[8]_i_1_n_0 ),
        .Q(up_rdata_d[8]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[9]),
        .Q(up_rdata_d[9]),
        .R(up_axi_arready_int_reg_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    up_resetn_inv_i_1
       (.I0(up_waddr_s[0]),
        .I1(up_waddr_s[1]),
        .I2(up_waddr_s[2]),
        .I3(up_waddr_s[5]),
        .I4(\up_GO[31]_i_2_n_0 ),
        .I5(\up_INIT_reg[31] [0]),
        .O(up_resetn_reg_inv));
  LUT3 #(
    .INIT(8'h08)) 
    up_rreq_int_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_aresetn),
        .I2(up_rsel_reg_n_0),
        .O(up_rreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_int_i_1_n_0),
        .Q(up_rreq_s),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    up_rsel_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(up_rsel_reg_n_0),
        .O(up_rsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rsel_i_1_n_0),
        .Q(up_rsel_reg_n_0),
        .R(up_axi_arready_int_reg_0));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    up_wack_d_i_1
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(up_wack),
        .I5(p_0_in7_in),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s),
        .Q(up_wack_d),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr_s[0]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr_s[1]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr_s[2]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr_s[3]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr_s[4]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr_s[5]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr_s[6]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr_s[7]),
        .R(up_axi_arready_int_reg_0));
  LUT3 #(
    .INIT(8'h04)) 
    \up_wcount[0]_i_1 
       (.I0(up_wack),
        .I1(p_0_in7_in),
        .I2(\up_wcount_reg_n_0_[0] ),
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \up_wcount[1]_i_1 
       (.I0(p_0_in7_in),
        .I1(up_wack),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .O(\up_wcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \up_wcount[2]_i_1 
       (.I0(p_0_in7_in),
        .I1(up_wack),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .O(\up_wcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \up_wcount[3]_i_1 
       (.I0(p_0_in7_in),
        .I1(up_wack),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(\up_wcount[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wreq_s),
        .I1(p_0_in7_in),
        .I2(up_wack_s),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFFFFFFFFFF)) 
    \up_wcount[4]_i_2 
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(up_wack),
        .I5(p_0_in7_in),
        .O(\up_wcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[0]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[0] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[1]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[1] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[2]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[2] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[3]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[3] ),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[4]_i_2_n_0 ),
        .Q(p_0_in7_in),
        .R(up_axi_arready_int_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata_int[31]_i_1 
       (.I0(up_wsel_reg_n_0),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[0]),
        .Q(\up_INIT_reg[31] [0]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[10]),
        .Q(\up_INIT_reg[31] [10]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[11]),
        .Q(\up_INIT_reg[31] [11]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[12]),
        .Q(\up_INIT_reg[31] [12]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[13]),
        .Q(\up_INIT_reg[31] [13]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[14]),
        .Q(\up_INIT_reg[31] [14]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[15]),
        .Q(\up_INIT_reg[31] [15]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[16]),
        .Q(\up_INIT_reg[31] [16]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[17]),
        .Q(\up_INIT_reg[31] [17]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[18]),
        .Q(\up_INIT_reg[31] [18]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[19]),
        .Q(\up_INIT_reg[31] [19]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[1]),
        .Q(\up_INIT_reg[31] [1]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[20]),
        .Q(\up_INIT_reg[31] [20]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[21]),
        .Q(\up_INIT_reg[31] [21]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[22]),
        .Q(\up_INIT_reg[31] [22]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[23]),
        .Q(\up_INIT_reg[31] [23]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[24]),
        .Q(\up_INIT_reg[31] [24]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[25]),
        .Q(\up_INIT_reg[31] [25]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[26]),
        .Q(\up_INIT_reg[31] [26]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[27]),
        .Q(\up_INIT_reg[31] [27]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[28]),
        .Q(\up_INIT_reg[31] [28]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[29]),
        .Q(\up_INIT_reg[31] [29]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[2]),
        .Q(\up_INIT_reg[31] [2]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[30]),
        .Q(\up_INIT_reg[31] [30]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[31]),
        .Q(\up_INIT_reg[31] [31]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[3]),
        .Q(\up_INIT_reg[31] [3]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[4]),
        .Q(\up_INIT_reg[31] [4]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[5]),
        .Q(\up_INIT_reg[31] [5]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[6]),
        .Q(\up_INIT_reg[31] [6]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[7]),
        .Q(\up_INIT_reg[31] [7]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[8]),
        .Q(\up_INIT_reg[31] [8]),
        .R(up_axi_arready_int_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[9]),
        .Q(\up_INIT_reg[31] [9]),
        .R(up_axi_arready_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    up_wreq_int_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_aresetn),
        .I3(up_wsel_reg_n_0),
        .O(up_wreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_int_i_1_n_0),
        .Q(up_wreq_s),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FFF8888)) 
    up_wsel_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(up_wsel_reg_n_0),
        .O(up_wsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wsel_i_1_n_0),
        .Q(up_wsel_reg_n_0),
        .R(up_axi_arready_int_reg_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
