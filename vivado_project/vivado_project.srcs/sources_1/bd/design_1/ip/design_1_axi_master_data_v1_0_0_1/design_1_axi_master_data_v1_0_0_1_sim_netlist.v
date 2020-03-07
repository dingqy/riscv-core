// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Mar  3 22:36:16 2020
// Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_axi_master_data_v1_0_0_1/design_1_axi_master_data_v1_0_0_1_sim_netlist.v
// Design      : design_1_axi_master_data_v1_0_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_master_data_v1_0_0_1,axi_master_data_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master_data_v1_0,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module design_1_axi_master_data_v1_0_0_1
   (w_data,
    w_valid,
    request_valid,
    w_addr,
    addr,
    r_data,
    rsp_valid,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready);
  input [31:0]w_data;
  input w_valid;
  input request_valid;
  input [31:0]w_addr;
  input [31:0]addr;
  output [31:0]r_data;
  output rsp_valid;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_CLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:6]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:6]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31:6] = \^m00_axi_araddr [31:6];
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const1> ;
  assign m00_axi_arlen[2] = \<const1> ;
  assign m00_axi_arlen[1] = \<const1> ;
  assign m00_axi_arlen[0] = \<const1> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_awaddr[31:6] = \^m00_axi_awaddr [31:6];
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const1> ;
  assign m00_axi_awlen[2] = \<const1> ;
  assign m00_axi_awlen[1] = \<const1> ;
  assign m00_axi_awlen[0] = \<const1> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m00_axi_wuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_axi_master_data_v1_0_0_1_axi_master_data_v1_0 inst
       (.M_AXI_BREADY(m00_axi_bready),
        .axi_arvalid_reg(m00_axi_arvalid),
        .axi_awvalid_reg(m00_axi_awvalid),
        .axi_rready_reg(m00_axi_rready),
        .axi_wvalid_reg(m00_axi_wvalid),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp[1]),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp[1]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "axi_master_data_v1_0" *) 
module design_1_axi_master_data_v1_0_0_1_axi_master_data_v1_0
   (axi_rready_reg,
    M_AXI_BREADY,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    axi_awvalid_reg,
    axi_arvalid_reg,
    axi_wvalid_reg,
    m00_axi_wlast,
    m00_axi_error,
    m00_axi_txn_done,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_bvalid,
    m00_axi_awready,
    m00_axi_arready,
    m00_axi_wready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_bresp);
  output axi_rready_reg;
  output M_AXI_BREADY;
  output [25:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [25:0]m00_axi_araddr;
  output axi_awvalid_reg;
  output axi_arvalid_reg;
  output axi_wvalid_reg;
  output m00_axi_wlast;
  output m00_axi_error;
  output m00_axi_txn_done;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_bvalid;
  input m00_axi_awready;
  input m00_axi_arready;
  input m00_axi_wready;
  input [31:0]m00_axi_rdata;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;

  wire M_AXI_BREADY;
  wire axi_arvalid_reg;
  wire axi_awvalid_reg;
  wire axi_rready_reg;
  wire axi_wvalid_reg;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;

  design_1_axi_master_data_v1_0_0_1_axi_master_data_v1_0_M00_AXI axi_master_data_v1_0_M00_AXI_inst
       (.M_AXI_BREADY(M_AXI_BREADY),
        .axi_arvalid_reg_0(axi_arvalid_reg),
        .axi_awvalid_reg_0(axi_awvalid_reg),
        .axi_rready_reg_0(axi_rready_reg),
        .axi_wvalid_reg_0(axi_wvalid_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "axi_master_data_v1_0_M00_AXI" *) 
module design_1_axi_master_data_v1_0_0_1_axi_master_data_v1_0_M00_AXI
   (axi_rready_reg_0,
    M_AXI_BREADY,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    axi_awvalid_reg_0,
    axi_arvalid_reg_0,
    axi_wvalid_reg_0,
    m00_axi_wlast,
    m00_axi_error,
    m00_axi_txn_done,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_rlast,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_bvalid,
    m00_axi_awready,
    m00_axi_arready,
    m00_axi_wready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_bresp);
  output axi_rready_reg_0;
  output M_AXI_BREADY;
  output [25:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [25:0]m00_axi_araddr;
  output axi_awvalid_reg_0;
  output axi_arvalid_reg_0;
  output axi_wvalid_reg_0;
  output m00_axi_wlast;
  output m00_axi_error;
  output m00_axi_txn_done;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_rlast;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_bvalid;
  input m00_axi_awready;
  input m00_axi_arready;
  input m00_axi_wready;
  input [31:0]m00_axi_rdata;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;

  wire ERROR_i_1_n_0;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire M_AXI_ARADDR_carry_i_1_n_0;
  wire M_AXI_ARADDR_carry_n_2;
  wire M_AXI_ARADDR_carry_n_3;
  wire M_AXI_AWADDR_carry_i_1_n_0;
  wire M_AXI_AWADDR_carry_n_2;
  wire M_AXI_AWADDR_carry_n_3;
  wire M_AXI_BREADY;
  wire \axi_araddr[9]_i_2_n_0 ;
  wire [31:29]axi_araddr_reg;
  wire \axi_araddr_reg[13]_i_1_n_0 ;
  wire \axi_araddr_reg[13]_i_1_n_1 ;
  wire \axi_araddr_reg[13]_i_1_n_2 ;
  wire \axi_araddr_reg[13]_i_1_n_3 ;
  wire \axi_araddr_reg[13]_i_1_n_4 ;
  wire \axi_araddr_reg[13]_i_1_n_5 ;
  wire \axi_araddr_reg[13]_i_1_n_6 ;
  wire \axi_araddr_reg[13]_i_1_n_7 ;
  wire \axi_araddr_reg[17]_i_1_n_0 ;
  wire \axi_araddr_reg[17]_i_1_n_1 ;
  wire \axi_araddr_reg[17]_i_1_n_2 ;
  wire \axi_araddr_reg[17]_i_1_n_3 ;
  wire \axi_araddr_reg[17]_i_1_n_4 ;
  wire \axi_araddr_reg[17]_i_1_n_5 ;
  wire \axi_araddr_reg[17]_i_1_n_6 ;
  wire \axi_araddr_reg[17]_i_1_n_7 ;
  wire \axi_araddr_reg[21]_i_1_n_0 ;
  wire \axi_araddr_reg[21]_i_1_n_1 ;
  wire \axi_araddr_reg[21]_i_1_n_2 ;
  wire \axi_araddr_reg[21]_i_1_n_3 ;
  wire \axi_araddr_reg[21]_i_1_n_4 ;
  wire \axi_araddr_reg[21]_i_1_n_5 ;
  wire \axi_araddr_reg[21]_i_1_n_6 ;
  wire \axi_araddr_reg[21]_i_1_n_7 ;
  wire \axi_araddr_reg[25]_i_1_n_0 ;
  wire \axi_araddr_reg[25]_i_1_n_1 ;
  wire \axi_araddr_reg[25]_i_1_n_2 ;
  wire \axi_araddr_reg[25]_i_1_n_3 ;
  wire \axi_araddr_reg[25]_i_1_n_4 ;
  wire \axi_araddr_reg[25]_i_1_n_5 ;
  wire \axi_araddr_reg[25]_i_1_n_6 ;
  wire \axi_araddr_reg[25]_i_1_n_7 ;
  wire \axi_araddr_reg[28]_i_2_n_0 ;
  wire \axi_araddr_reg[28]_i_2_n_1 ;
  wire \axi_araddr_reg[28]_i_2_n_2 ;
  wire \axi_araddr_reg[28]_i_2_n_3 ;
  wire \axi_araddr_reg[28]_i_2_n_4 ;
  wire \axi_araddr_reg[28]_i_2_n_5 ;
  wire \axi_araddr_reg[28]_i_2_n_6 ;
  wire \axi_araddr_reg[28]_i_2_n_7 ;
  wire \axi_araddr_reg[30]_i_1_n_3 ;
  wire \axi_araddr_reg[30]_i_1_n_6 ;
  wire \axi_araddr_reg[30]_i_1_n_7 ;
  wire \axi_araddr_reg[9]_i_1_n_0 ;
  wire \axi_araddr_reg[9]_i_1_n_1 ;
  wire \axi_araddr_reg[9]_i_1_n_2 ;
  wire \axi_araddr_reg[9]_i_1_n_3 ;
  wire \axi_araddr_reg[9]_i_1_n_4 ;
  wire \axi_araddr_reg[9]_i_1_n_5 ;
  wire \axi_araddr_reg[9]_i_1_n_6 ;
  wire \axi_araddr_reg[9]_i_1_n_7 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_reg_0;
  wire \axi_awaddr[28]_i_1_n_0 ;
  wire \axi_awaddr[9]_i_2_n_0 ;
  wire [31:29]axi_awaddr_reg;
  wire \axi_awaddr_reg[13]_i_1_n_0 ;
  wire \axi_awaddr_reg[13]_i_1_n_1 ;
  wire \axi_awaddr_reg[13]_i_1_n_2 ;
  wire \axi_awaddr_reg[13]_i_1_n_3 ;
  wire \axi_awaddr_reg[13]_i_1_n_4 ;
  wire \axi_awaddr_reg[13]_i_1_n_5 ;
  wire \axi_awaddr_reg[13]_i_1_n_6 ;
  wire \axi_awaddr_reg[13]_i_1_n_7 ;
  wire \axi_awaddr_reg[17]_i_1_n_0 ;
  wire \axi_awaddr_reg[17]_i_1_n_1 ;
  wire \axi_awaddr_reg[17]_i_1_n_2 ;
  wire \axi_awaddr_reg[17]_i_1_n_3 ;
  wire \axi_awaddr_reg[17]_i_1_n_4 ;
  wire \axi_awaddr_reg[17]_i_1_n_5 ;
  wire \axi_awaddr_reg[17]_i_1_n_6 ;
  wire \axi_awaddr_reg[17]_i_1_n_7 ;
  wire \axi_awaddr_reg[21]_i_1_n_0 ;
  wire \axi_awaddr_reg[21]_i_1_n_1 ;
  wire \axi_awaddr_reg[21]_i_1_n_2 ;
  wire \axi_awaddr_reg[21]_i_1_n_3 ;
  wire \axi_awaddr_reg[21]_i_1_n_4 ;
  wire \axi_awaddr_reg[21]_i_1_n_5 ;
  wire \axi_awaddr_reg[21]_i_1_n_6 ;
  wire \axi_awaddr_reg[21]_i_1_n_7 ;
  wire \axi_awaddr_reg[25]_i_1_n_0 ;
  wire \axi_awaddr_reg[25]_i_1_n_1 ;
  wire \axi_awaddr_reg[25]_i_1_n_2 ;
  wire \axi_awaddr_reg[25]_i_1_n_3 ;
  wire \axi_awaddr_reg[25]_i_1_n_4 ;
  wire \axi_awaddr_reg[25]_i_1_n_5 ;
  wire \axi_awaddr_reg[25]_i_1_n_6 ;
  wire \axi_awaddr_reg[25]_i_1_n_7 ;
  wire \axi_awaddr_reg[28]_i_3_n_0 ;
  wire \axi_awaddr_reg[28]_i_3_n_1 ;
  wire \axi_awaddr_reg[28]_i_3_n_2 ;
  wire \axi_awaddr_reg[28]_i_3_n_3 ;
  wire \axi_awaddr_reg[28]_i_3_n_4 ;
  wire \axi_awaddr_reg[28]_i_3_n_5 ;
  wire \axi_awaddr_reg[28]_i_3_n_6 ;
  wire \axi_awaddr_reg[28]_i_3_n_7 ;
  wire \axi_awaddr_reg[30]_i_1_n_3 ;
  wire \axi_awaddr_reg[30]_i_1_n_6 ;
  wire \axi_awaddr_reg[30]_i_1_n_7 ;
  wire \axi_awaddr_reg[9]_i_1_n_0 ;
  wire \axi_awaddr_reg[9]_i_1_n_1 ;
  wire \axi_awaddr_reg[9]_i_1_n_2 ;
  wire \axi_awaddr_reg[9]_i_1_n_3 ;
  wire \axi_awaddr_reg[9]_i_1_n_4 ;
  wire \axi_awaddr_reg[9]_i_1_n_5 ;
  wire \axi_awaddr_reg[9]_i_1_n_6 ;
  wire \axi_awaddr_reg[9]_i_1_n_7 ;
  wire axi_awvalid0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_reg_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire \axi_wdata[3]_i_2_n_0 ;
  wire \axi_wdata_reg[11]_i_1_n_0 ;
  wire \axi_wdata_reg[11]_i_1_n_1 ;
  wire \axi_wdata_reg[11]_i_1_n_2 ;
  wire \axi_wdata_reg[11]_i_1_n_3 ;
  wire \axi_wdata_reg[11]_i_1_n_4 ;
  wire \axi_wdata_reg[11]_i_1_n_5 ;
  wire \axi_wdata_reg[11]_i_1_n_6 ;
  wire \axi_wdata_reg[11]_i_1_n_7 ;
  wire \axi_wdata_reg[15]_i_1_n_0 ;
  wire \axi_wdata_reg[15]_i_1_n_1 ;
  wire \axi_wdata_reg[15]_i_1_n_2 ;
  wire \axi_wdata_reg[15]_i_1_n_3 ;
  wire \axi_wdata_reg[15]_i_1_n_4 ;
  wire \axi_wdata_reg[15]_i_1_n_5 ;
  wire \axi_wdata_reg[15]_i_1_n_6 ;
  wire \axi_wdata_reg[15]_i_1_n_7 ;
  wire \axi_wdata_reg[19]_i_1_n_0 ;
  wire \axi_wdata_reg[19]_i_1_n_1 ;
  wire \axi_wdata_reg[19]_i_1_n_2 ;
  wire \axi_wdata_reg[19]_i_1_n_3 ;
  wire \axi_wdata_reg[19]_i_1_n_4 ;
  wire \axi_wdata_reg[19]_i_1_n_5 ;
  wire \axi_wdata_reg[19]_i_1_n_6 ;
  wire \axi_wdata_reg[19]_i_1_n_7 ;
  wire \axi_wdata_reg[23]_i_1_n_0 ;
  wire \axi_wdata_reg[23]_i_1_n_1 ;
  wire \axi_wdata_reg[23]_i_1_n_2 ;
  wire \axi_wdata_reg[23]_i_1_n_3 ;
  wire \axi_wdata_reg[23]_i_1_n_4 ;
  wire \axi_wdata_reg[23]_i_1_n_5 ;
  wire \axi_wdata_reg[23]_i_1_n_6 ;
  wire \axi_wdata_reg[23]_i_1_n_7 ;
  wire \axi_wdata_reg[27]_i_1_n_0 ;
  wire \axi_wdata_reg[27]_i_1_n_1 ;
  wire \axi_wdata_reg[27]_i_1_n_2 ;
  wire \axi_wdata_reg[27]_i_1_n_3 ;
  wire \axi_wdata_reg[27]_i_1_n_4 ;
  wire \axi_wdata_reg[27]_i_1_n_5 ;
  wire \axi_wdata_reg[27]_i_1_n_6 ;
  wire \axi_wdata_reg[27]_i_1_n_7 ;
  wire \axi_wdata_reg[31]_i_2_n_1 ;
  wire \axi_wdata_reg[31]_i_2_n_2 ;
  wire \axi_wdata_reg[31]_i_2_n_3 ;
  wire \axi_wdata_reg[31]_i_2_n_4 ;
  wire \axi_wdata_reg[31]_i_2_n_5 ;
  wire \axi_wdata_reg[31]_i_2_n_6 ;
  wire \axi_wdata_reg[31]_i_2_n_7 ;
  wire \axi_wdata_reg[3]_i_1_n_0 ;
  wire \axi_wdata_reg[3]_i_1_n_1 ;
  wire \axi_wdata_reg[3]_i_1_n_2 ;
  wire \axi_wdata_reg[3]_i_1_n_3 ;
  wire \axi_wdata_reg[3]_i_1_n_4 ;
  wire \axi_wdata_reg[3]_i_1_n_5 ;
  wire \axi_wdata_reg[3]_i_1_n_6 ;
  wire \axi_wdata_reg[3]_i_1_n_7 ;
  wire \axi_wdata_reg[7]_i_1_n_0 ;
  wire \axi_wdata_reg[7]_i_1_n_1 ;
  wire \axi_wdata_reg[7]_i_1_n_2 ;
  wire \axi_wdata_reg[7]_i_1_n_3 ;
  wire \axi_wdata_reg[7]_i_1_n_4 ;
  wire \axi_wdata_reg[7]_i_1_n_5 ;
  wire \axi_wdata_reg[7]_i_1_n_6 ;
  wire \axi_wdata_reg[7]_i_1_n_7 ;
  wire axi_wlast0;
  wire axi_wlast_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire axi_wvalid_reg_0;
  wire burst_read_active;
  wire burst_read_active_i_1_n_0;
  wire burst_write_active;
  wire burst_write_active_i_1_n_0;
  wire compare_done;
  wire compare_done_i_1_n_0;
  wire compare_done_i_2_n_0;
  wire error_reg;
  wire error_reg_i_1_n_0;
  wire \expected_rdata[0]_i_3_n_0 ;
  wire [31:0]expected_rdata_reg;
  wire \expected_rdata_reg[0]_i_2_n_0 ;
  wire \expected_rdata_reg[0]_i_2_n_1 ;
  wire \expected_rdata_reg[0]_i_2_n_2 ;
  wire \expected_rdata_reg[0]_i_2_n_3 ;
  wire \expected_rdata_reg[0]_i_2_n_4 ;
  wire \expected_rdata_reg[0]_i_2_n_5 ;
  wire \expected_rdata_reg[0]_i_2_n_6 ;
  wire \expected_rdata_reg[0]_i_2_n_7 ;
  wire \expected_rdata_reg[12]_i_1_n_0 ;
  wire \expected_rdata_reg[12]_i_1_n_1 ;
  wire \expected_rdata_reg[12]_i_1_n_2 ;
  wire \expected_rdata_reg[12]_i_1_n_3 ;
  wire \expected_rdata_reg[12]_i_1_n_4 ;
  wire \expected_rdata_reg[12]_i_1_n_5 ;
  wire \expected_rdata_reg[12]_i_1_n_6 ;
  wire \expected_rdata_reg[12]_i_1_n_7 ;
  wire \expected_rdata_reg[16]_i_1_n_0 ;
  wire \expected_rdata_reg[16]_i_1_n_1 ;
  wire \expected_rdata_reg[16]_i_1_n_2 ;
  wire \expected_rdata_reg[16]_i_1_n_3 ;
  wire \expected_rdata_reg[16]_i_1_n_4 ;
  wire \expected_rdata_reg[16]_i_1_n_5 ;
  wire \expected_rdata_reg[16]_i_1_n_6 ;
  wire \expected_rdata_reg[16]_i_1_n_7 ;
  wire \expected_rdata_reg[20]_i_1_n_0 ;
  wire \expected_rdata_reg[20]_i_1_n_1 ;
  wire \expected_rdata_reg[20]_i_1_n_2 ;
  wire \expected_rdata_reg[20]_i_1_n_3 ;
  wire \expected_rdata_reg[20]_i_1_n_4 ;
  wire \expected_rdata_reg[20]_i_1_n_5 ;
  wire \expected_rdata_reg[20]_i_1_n_6 ;
  wire \expected_rdata_reg[20]_i_1_n_7 ;
  wire \expected_rdata_reg[24]_i_1_n_0 ;
  wire \expected_rdata_reg[24]_i_1_n_1 ;
  wire \expected_rdata_reg[24]_i_1_n_2 ;
  wire \expected_rdata_reg[24]_i_1_n_3 ;
  wire \expected_rdata_reg[24]_i_1_n_4 ;
  wire \expected_rdata_reg[24]_i_1_n_5 ;
  wire \expected_rdata_reg[24]_i_1_n_6 ;
  wire \expected_rdata_reg[24]_i_1_n_7 ;
  wire \expected_rdata_reg[28]_i_1_n_1 ;
  wire \expected_rdata_reg[28]_i_1_n_2 ;
  wire \expected_rdata_reg[28]_i_1_n_3 ;
  wire \expected_rdata_reg[28]_i_1_n_4 ;
  wire \expected_rdata_reg[28]_i_1_n_5 ;
  wire \expected_rdata_reg[28]_i_1_n_6 ;
  wire \expected_rdata_reg[28]_i_1_n_7 ;
  wire \expected_rdata_reg[4]_i_1_n_0 ;
  wire \expected_rdata_reg[4]_i_1_n_1 ;
  wire \expected_rdata_reg[4]_i_1_n_2 ;
  wire \expected_rdata_reg[4]_i_1_n_3 ;
  wire \expected_rdata_reg[4]_i_1_n_4 ;
  wire \expected_rdata_reg[4]_i_1_n_5 ;
  wire \expected_rdata_reg[4]_i_1_n_6 ;
  wire \expected_rdata_reg[4]_i_1_n_7 ;
  wire \expected_rdata_reg[8]_i_1_n_0 ;
  wire \expected_rdata_reg[8]_i_1_n_1 ;
  wire \expected_rdata_reg[8]_i_1_n_2 ;
  wire \expected_rdata_reg[8]_i_1_n_3 ;
  wire \expected_rdata_reg[8]_i_1_n_4 ;
  wire \expected_rdata_reg[8]_i_1_n_5 ;
  wire \expected_rdata_reg[8]_i_1_n_6 ;
  wire \expected_rdata_reg[8]_i_1_n_7 ;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [0:0]mst_exec_state;
  wire [6:0]p_0_in;
  wire p_0_in3_in;
  wire p_0_in_0;
  wire [6:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [4:0]p_0_in__2;
  wire p_13_in;
  wire p_7_in;
  wire p_9_in;
  wire read_burst_counter;
  wire \read_burst_counter_reg_n_0_[0] ;
  wire \read_burst_counter_reg_n_0_[1] ;
  wire \read_burst_counter_reg_n_0_[2] ;
  wire \read_burst_counter_reg_n_0_[3] ;
  wire \read_burst_counter_reg_n_0_[4] ;
  wire \read_burst_counter_reg_n_0_[5] ;
  wire read_index0;
  wire \read_index[2]_i_1_n_0 ;
  wire \read_index[4]_i_1_n_0 ;
  wire [4:0]read_index_reg;
  wire read_mismatch;
  wire read_mismatch0;
  wire read_mismatch1;
  wire read_mismatch1_carry__0_i_1_n_0;
  wire read_mismatch1_carry__0_i_2_n_0;
  wire read_mismatch1_carry__0_i_3_n_0;
  wire read_mismatch1_carry__0_i_4_n_0;
  wire read_mismatch1_carry__0_n_0;
  wire read_mismatch1_carry__0_n_1;
  wire read_mismatch1_carry__0_n_2;
  wire read_mismatch1_carry__0_n_3;
  wire read_mismatch1_carry__1_i_1_n_0;
  wire read_mismatch1_carry__1_i_2_n_0;
  wire read_mismatch1_carry__1_i_3_n_0;
  wire read_mismatch1_carry__1_n_2;
  wire read_mismatch1_carry__1_n_3;
  wire read_mismatch1_carry_i_1_n_0;
  wire read_mismatch1_carry_i_2_n_0;
  wire read_mismatch1_carry_i_3_n_0;
  wire read_mismatch1_carry_i_4_n_0;
  wire read_mismatch1_carry_n_0;
  wire read_mismatch1_carry_n_1;
  wire read_mismatch1_carry_n_2;
  wire read_mismatch1_carry_n_3;
  wire reads_done;
  wire reads_done2;
  wire reads_done_i_1_n_0;
  wire start_single_burst_read_i_1_n_0;
  wire start_single_burst_read_reg_n_0;
  wire start_single_burst_write_i_1_n_0;
  wire start_single_burst_write_reg_n_0;
  wire write_burst_counter;
  wire \write_burst_counter_reg_n_0_[0] ;
  wire \write_burst_counter_reg_n_0_[1] ;
  wire \write_burst_counter_reg_n_0_[2] ;
  wire \write_burst_counter_reg_n_0_[3] ;
  wire \write_burst_counter_reg_n_0_[4] ;
  wire \write_burst_counter_reg_n_0_[5] ;
  wire write_index0;
  wire \write_index[4]_i_1_n_0 ;
  wire [4:0]write_index_reg;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire [3:2]NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXI_ARADDR_carry_O_UNCONNECTED;
  wire [3:2]NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXI_AWADDR_carry_O_UNCONNECTED;
  wire [3:1]\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_read_mismatch1_carry_O_UNCONNECTED;
  wire [3:0]NLW_read_mismatch1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_read_mismatch1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_read_mismatch1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBBBBFCFF88880000)) 
    ERROR_i_1
       (.I0(error_reg),
        .I1(mst_exec_state),
        .I2(init_txn_ff2),
        .I3(init_txn_ff),
        .I4(compare_done),
        .I5(m00_axi_error),
        .O(ERROR_i_1_n_0));
  FDRE ERROR_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(ERROR_i_1_n_0),
        .Q(m00_axi_error),
        .R(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h3044304430773044)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(writes_done),
        .I1(mst_exec_state),
        .I2(reads_done),
        .I3(compare_done),
        .I4(init_txn_ff),
        .I5(init_txn_ff2),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(writes_done),
        .I1(mst_exec_state),
        .I2(compare_done),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,INIT_WRITE:01,INIT_READ:10,INIT_COMPARE:11" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state),
        .R(compare_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:00,INIT_WRITE:01,INIT_READ:10,INIT_COMPARE:11" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(compare_done),
        .R(compare_done_i_1_n_0));
  CARRY4 M_AXI_ARADDR_carry
       (.CI(1'b0),
        .CO({NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED[3:2],M_AXI_ARADDR_carry_n_2,M_AXI_ARADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_araddr_reg[30],1'b0}),
        .O({NLW_M_AXI_ARADDR_carry_O_UNCONNECTED[3],m00_axi_araddr[25:23]}),
        .S({1'b0,axi_araddr_reg[31],M_AXI_ARADDR_carry_i_1_n_0,axi_araddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_ARADDR_carry_i_1
       (.I0(axi_araddr_reg[30]),
        .O(M_AXI_ARADDR_carry_i_1_n_0));
  CARRY4 M_AXI_AWADDR_carry
       (.CI(1'b0),
        .CO({NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED[3:2],M_AXI_AWADDR_carry_n_2,M_AXI_AWADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_awaddr_reg[30],1'b0}),
        .O({NLW_M_AXI_AWADDR_carry_O_UNCONNECTED[3],m00_axi_awaddr[25:23]}),
        .S({1'b0,axi_awaddr_reg[31],M_AXI_AWADDR_carry_i_1_n_0,axi_awaddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWADDR_carry_i_1
       (.I0(axi_awaddr_reg[30]),
        .O(M_AXI_AWADDR_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[28]_i_1 
       (.I0(axi_arvalid_reg_0),
        .I1(m00_axi_arready),
        .O(axi_arvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[9]_i_2 
       (.I0(m00_axi_araddr[0]),
        .O(\axi_araddr[9]_i_2_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_7 ),
        .Q(m00_axi_araddr[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_6 ),
        .Q(m00_axi_araddr[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_5 ),
        .Q(m00_axi_araddr[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_4 ),
        .Q(m00_axi_araddr[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[13]_i_1 
       (.CI(\axi_araddr_reg[9]_i_1_n_0 ),
        .CO({\axi_araddr_reg[13]_i_1_n_0 ,\axi_araddr_reg[13]_i_1_n_1 ,\axi_araddr_reg[13]_i_1_n_2 ,\axi_araddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[13]_i_1_n_4 ,\axi_araddr_reg[13]_i_1_n_5 ,\axi_araddr_reg[13]_i_1_n_6 ,\axi_araddr_reg[13]_i_1_n_7 }),
        .S(m00_axi_araddr[7:4]));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_7 ),
        .Q(m00_axi_araddr[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_6 ),
        .Q(m00_axi_araddr[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_5 ),
        .Q(m00_axi_araddr[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_4 ),
        .Q(m00_axi_araddr[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[17]_i_1 
       (.CI(\axi_araddr_reg[13]_i_1_n_0 ),
        .CO({\axi_araddr_reg[17]_i_1_n_0 ,\axi_araddr_reg[17]_i_1_n_1 ,\axi_araddr_reg[17]_i_1_n_2 ,\axi_araddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[17]_i_1_n_4 ,\axi_araddr_reg[17]_i_1_n_5 ,\axi_araddr_reg[17]_i_1_n_6 ,\axi_araddr_reg[17]_i_1_n_7 }),
        .S(m00_axi_araddr[11:8]));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_7 ),
        .Q(m00_axi_araddr[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_6 ),
        .Q(m00_axi_araddr[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_5 ),
        .Q(m00_axi_araddr[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_4 ),
        .Q(m00_axi_araddr[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[21]_i_1 
       (.CI(\axi_araddr_reg[17]_i_1_n_0 ),
        .CO({\axi_araddr_reg[21]_i_1_n_0 ,\axi_araddr_reg[21]_i_1_n_1 ,\axi_araddr_reg[21]_i_1_n_2 ,\axi_araddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[21]_i_1_n_4 ,\axi_araddr_reg[21]_i_1_n_5 ,\axi_araddr_reg[21]_i_1_n_6 ,\axi_araddr_reg[21]_i_1_n_7 }),
        .S(m00_axi_araddr[15:12]));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_7 ),
        .Q(m00_axi_araddr[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_6 ),
        .Q(m00_axi_araddr[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_5 ),
        .Q(m00_axi_araddr[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_4 ),
        .Q(m00_axi_araddr[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[25]_i_1 
       (.CI(\axi_araddr_reg[21]_i_1_n_0 ),
        .CO({\axi_araddr_reg[25]_i_1_n_0 ,\axi_araddr_reg[25]_i_1_n_1 ,\axi_araddr_reg[25]_i_1_n_2 ,\axi_araddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[25]_i_1_n_4 ,\axi_araddr_reg[25]_i_1_n_5 ,\axi_araddr_reg[25]_i_1_n_6 ,\axi_araddr_reg[25]_i_1_n_7 }),
        .S(m00_axi_araddr[19:16]));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_2_n_7 ),
        .Q(m00_axi_araddr[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_2_n_6 ),
        .Q(m00_axi_araddr[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_2_n_5 ),
        .Q(m00_axi_araddr[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[28]_i_2 
       (.CI(\axi_araddr_reg[25]_i_1_n_0 ),
        .CO({\axi_araddr_reg[28]_i_2_n_0 ,\axi_araddr_reg[28]_i_2_n_1 ,\axi_araddr_reg[28]_i_2_n_2 ,\axi_araddr_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[28]_i_2_n_4 ,\axi_araddr_reg[28]_i_2_n_5 ,\axi_araddr_reg[28]_i_2_n_6 ,\axi_araddr_reg[28]_i_2_n_7 }),
        .S({axi_araddr_reg[29],m00_axi_araddr[22:20]}));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_2_n_4 ),
        .Q(axi_araddr_reg[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[30]_i_1_n_7 ),
        .Q(axi_araddr_reg[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[30]_i_1 
       (.CI(\axi_araddr_reg[28]_i_2_n_0 ),
        .CO({\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\axi_araddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED [3:2],\axi_araddr_reg[30]_i_1_n_6 ,\axi_araddr_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,axi_araddr_reg[31:30]}));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[30]_i_1_n_6 ),
        .Q(axi_araddr_reg[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_7 ),
        .Q(m00_axi_araddr[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_6 ),
        .Q(m00_axi_araddr[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_5 ),
        .Q(m00_axi_araddr[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[9]_i_1_n_4 ),
        .Q(m00_axi_araddr[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[9]_i_1_n_0 ,\axi_araddr_reg[9]_i_1_n_1 ,\axi_araddr_reg[9]_i_1_n_2 ,\axi_araddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_araddr_reg[9]_i_1_n_4 ,\axi_araddr_reg[9]_i_1_n_5 ,\axi_araddr_reg[9]_i_1_n_6 ,\axi_araddr_reg[9]_i_1_n_7 }),
        .S({m00_axi_araddr[3:1],\axi_araddr[9]_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_arvalid_i_1
       (.I0(start_single_burst_read_reg_n_0),
        .I1(m00_axi_arready),
        .I2(axi_arvalid_reg_0),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_awaddr[28]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .O(\axi_awaddr[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[28]_i_2 
       (.I0(axi_awvalid_reg_0),
        .I1(m00_axi_awready),
        .O(axi_awvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[9]_i_2 
       (.I0(m00_axi_awaddr[0]),
        .O(\axi_awaddr[9]_i_2_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_7 ),
        .Q(m00_axi_awaddr[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_6 ),
        .Q(m00_axi_awaddr[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_5 ),
        .Q(m00_axi_awaddr[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[13]_i_1_n_4 ),
        .Q(m00_axi_awaddr[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[13]_i_1 
       (.CI(\axi_awaddr_reg[9]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[13]_i_1_n_0 ,\axi_awaddr_reg[13]_i_1_n_1 ,\axi_awaddr_reg[13]_i_1_n_2 ,\axi_awaddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[13]_i_1_n_4 ,\axi_awaddr_reg[13]_i_1_n_5 ,\axi_awaddr_reg[13]_i_1_n_6 ,\axi_awaddr_reg[13]_i_1_n_7 }),
        .S(m00_axi_awaddr[7:4]));
  FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_7 ),
        .Q(m00_axi_awaddr[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_6 ),
        .Q(m00_axi_awaddr[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_5 ),
        .Q(m00_axi_awaddr[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[17]_i_1_n_4 ),
        .Q(m00_axi_awaddr[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[17]_i_1 
       (.CI(\axi_awaddr_reg[13]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[17]_i_1_n_0 ,\axi_awaddr_reg[17]_i_1_n_1 ,\axi_awaddr_reg[17]_i_1_n_2 ,\axi_awaddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[17]_i_1_n_4 ,\axi_awaddr_reg[17]_i_1_n_5 ,\axi_awaddr_reg[17]_i_1_n_6 ,\axi_awaddr_reg[17]_i_1_n_7 }),
        .S(m00_axi_awaddr[11:8]));
  FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_7 ),
        .Q(m00_axi_awaddr[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_6 ),
        .Q(m00_axi_awaddr[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_5 ),
        .Q(m00_axi_awaddr[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[21]_i_1_n_4 ),
        .Q(m00_axi_awaddr[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[21]_i_1 
       (.CI(\axi_awaddr_reg[17]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[21]_i_1_n_0 ,\axi_awaddr_reg[21]_i_1_n_1 ,\axi_awaddr_reg[21]_i_1_n_2 ,\axi_awaddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[21]_i_1_n_4 ,\axi_awaddr_reg[21]_i_1_n_5 ,\axi_awaddr_reg[21]_i_1_n_6 ,\axi_awaddr_reg[21]_i_1_n_7 }),
        .S(m00_axi_awaddr[15:12]));
  FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_7 ),
        .Q(m00_axi_awaddr[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_6 ),
        .Q(m00_axi_awaddr[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_5 ),
        .Q(m00_axi_awaddr[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[25]_i_1_n_4 ),
        .Q(m00_axi_awaddr[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[25]_i_1 
       (.CI(\axi_awaddr_reg[21]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[25]_i_1_n_0 ,\axi_awaddr_reg[25]_i_1_n_1 ,\axi_awaddr_reg[25]_i_1_n_2 ,\axi_awaddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[25]_i_1_n_4 ,\axi_awaddr_reg[25]_i_1_n_5 ,\axi_awaddr_reg[25]_i_1_n_6 ,\axi_awaddr_reg[25]_i_1_n_7 }),
        .S(m00_axi_awaddr[19:16]));
  FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[28]_i_3_n_7 ),
        .Q(m00_axi_awaddr[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[28]_i_3_n_6 ),
        .Q(m00_axi_awaddr[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[28]_i_3_n_5 ),
        .Q(m00_axi_awaddr[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[28]_i_3 
       (.CI(\axi_awaddr_reg[25]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[28]_i_3_n_0 ,\axi_awaddr_reg[28]_i_3_n_1 ,\axi_awaddr_reg[28]_i_3_n_2 ,\axi_awaddr_reg[28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[28]_i_3_n_4 ,\axi_awaddr_reg[28]_i_3_n_5 ,\axi_awaddr_reg[28]_i_3_n_6 ,\axi_awaddr_reg[28]_i_3_n_7 }),
        .S({axi_awaddr_reg[29],m00_axi_awaddr[22:20]}));
  FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[28]_i_3_n_4 ),
        .Q(axi_awaddr_reg[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[30]_i_1_n_7 ),
        .Q(axi_awaddr_reg[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[30]_i_1 
       (.CI(\axi_awaddr_reg[28]_i_3_n_0 ),
        .CO({\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\axi_awaddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED [3:2],\axi_awaddr_reg[30]_i_1_n_6 ,\axi_awaddr_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,axi_awaddr_reg[31:30]}));
  FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[30]_i_1_n_6 ),
        .Q(axi_awaddr_reg[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_7 ),
        .Q(m00_axi_awaddr[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_6 ),
        .Q(m00_axi_awaddr[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_5 ),
        .Q(m00_axi_awaddr[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\axi_awaddr_reg[9]_i_1_n_4 ),
        .Q(m00_axi_awaddr[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_awaddr_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[9]_i_1_n_0 ,\axi_awaddr_reg[9]_i_1_n_1 ,\axi_awaddr_reg[9]_i_1_n_2 ,\axi_awaddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_awaddr_reg[9]_i_1_n_4 ,\axi_awaddr_reg[9]_i_1_n_5 ,\axi_awaddr_reg[9]_i_1_n_6 ,\axi_awaddr_reg[9]_i_1_n_7 }),
        .S({m00_axi_awaddr[3:1],\axi_awaddr[9]_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_awvalid_i_1
       (.I0(start_single_burst_write_reg_n_0),
        .I1(m00_axi_awready),
        .I2(axi_awvalid_reg_0),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(axi_awvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(m00_axi_bvalid),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B0B000B0B0B000)) 
    axi_rready_i_1
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .I3(m00_axi_rvalid),
        .I4(axi_rready_reg_0),
        .I5(m00_axi_rlast),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wdata[31]_i_1 
       (.I0(axi_wvalid_reg_0),
        .I1(m00_axi_wready),
        .O(p_13_in));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_wdata[3]_i_2 
       (.I0(m00_axi_wdata[0]),
        .O(\axi_wdata[3]_i_2_n_0 ));
  FDSE \axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[3]_i_1_n_7 ),
        .Q(m00_axi_wdata[0]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[11]_i_1_n_5 ),
        .Q(m00_axi_wdata[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[11]_i_1_n_4 ),
        .Q(m00_axi_wdata[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[11]_i_1 
       (.CI(\axi_wdata_reg[7]_i_1_n_0 ),
        .CO({\axi_wdata_reg[11]_i_1_n_0 ,\axi_wdata_reg[11]_i_1_n_1 ,\axi_wdata_reg[11]_i_1_n_2 ,\axi_wdata_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[11]_i_1_n_4 ,\axi_wdata_reg[11]_i_1_n_5 ,\axi_wdata_reg[11]_i_1_n_6 ,\axi_wdata_reg[11]_i_1_n_7 }),
        .S(m00_axi_wdata[11:8]));
  FDRE \axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[15]_i_1_n_7 ),
        .Q(m00_axi_wdata[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[15]_i_1_n_6 ),
        .Q(m00_axi_wdata[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[15]_i_1_n_5 ),
        .Q(m00_axi_wdata[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[15]_i_1_n_4 ),
        .Q(m00_axi_wdata[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[15]_i_1 
       (.CI(\axi_wdata_reg[11]_i_1_n_0 ),
        .CO({\axi_wdata_reg[15]_i_1_n_0 ,\axi_wdata_reg[15]_i_1_n_1 ,\axi_wdata_reg[15]_i_1_n_2 ,\axi_wdata_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[15]_i_1_n_4 ,\axi_wdata_reg[15]_i_1_n_5 ,\axi_wdata_reg[15]_i_1_n_6 ,\axi_wdata_reg[15]_i_1_n_7 }),
        .S(m00_axi_wdata[15:12]));
  FDRE \axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[19]_i_1_n_7 ),
        .Q(m00_axi_wdata[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[19]_i_1_n_6 ),
        .Q(m00_axi_wdata[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[19]_i_1_n_5 ),
        .Q(m00_axi_wdata[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[19]_i_1_n_4 ),
        .Q(m00_axi_wdata[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[19]_i_1 
       (.CI(\axi_wdata_reg[15]_i_1_n_0 ),
        .CO({\axi_wdata_reg[19]_i_1_n_0 ,\axi_wdata_reg[19]_i_1_n_1 ,\axi_wdata_reg[19]_i_1_n_2 ,\axi_wdata_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[19]_i_1_n_4 ,\axi_wdata_reg[19]_i_1_n_5 ,\axi_wdata_reg[19]_i_1_n_6 ,\axi_wdata_reg[19]_i_1_n_7 }),
        .S(m00_axi_wdata[19:16]));
  FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[3]_i_1_n_6 ),
        .Q(m00_axi_wdata[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[23]_i_1_n_7 ),
        .Q(m00_axi_wdata[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[23]_i_1_n_6 ),
        .Q(m00_axi_wdata[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[23]_i_1_n_5 ),
        .Q(m00_axi_wdata[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[23]_i_1_n_4 ),
        .Q(m00_axi_wdata[23]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[23]_i_1 
       (.CI(\axi_wdata_reg[19]_i_1_n_0 ),
        .CO({\axi_wdata_reg[23]_i_1_n_0 ,\axi_wdata_reg[23]_i_1_n_1 ,\axi_wdata_reg[23]_i_1_n_2 ,\axi_wdata_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[23]_i_1_n_4 ,\axi_wdata_reg[23]_i_1_n_5 ,\axi_wdata_reg[23]_i_1_n_6 ,\axi_wdata_reg[23]_i_1_n_7 }),
        .S(m00_axi_wdata[23:20]));
  FDRE \axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[27]_i_1_n_7 ),
        .Q(m00_axi_wdata[24]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[27]_i_1_n_6 ),
        .Q(m00_axi_wdata[25]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[27]_i_1_n_5 ),
        .Q(m00_axi_wdata[26]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[27]_i_1_n_4 ),
        .Q(m00_axi_wdata[27]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[27]_i_1 
       (.CI(\axi_wdata_reg[23]_i_1_n_0 ),
        .CO({\axi_wdata_reg[27]_i_1_n_0 ,\axi_wdata_reg[27]_i_1_n_1 ,\axi_wdata_reg[27]_i_1_n_2 ,\axi_wdata_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[27]_i_1_n_4 ,\axi_wdata_reg[27]_i_1_n_5 ,\axi_wdata_reg[27]_i_1_n_6 ,\axi_wdata_reg[27]_i_1_n_7 }),
        .S(m00_axi_wdata[27:24]));
  FDRE \axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[31]_i_2_n_7 ),
        .Q(m00_axi_wdata[28]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[31]_i_2_n_6 ),
        .Q(m00_axi_wdata[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[3]_i_1_n_5 ),
        .Q(m00_axi_wdata[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[31]_i_2_n_5 ),
        .Q(m00_axi_wdata[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[31]_i_2_n_4 ),
        .Q(m00_axi_wdata[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[31]_i_2 
       (.CI(\axi_wdata_reg[27]_i_1_n_0 ),
        .CO({\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED [3],\axi_wdata_reg[31]_i_2_n_1 ,\axi_wdata_reg[31]_i_2_n_2 ,\axi_wdata_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[31]_i_2_n_4 ,\axi_wdata_reg[31]_i_2_n_5 ,\axi_wdata_reg[31]_i_2_n_6 ,\axi_wdata_reg[31]_i_2_n_7 }),
        .S(m00_axi_wdata[31:28]));
  FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[3]_i_1_n_4 ),
        .Q(m00_axi_wdata[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\axi_wdata_reg[3]_i_1_n_0 ,\axi_wdata_reg[3]_i_1_n_1 ,\axi_wdata_reg[3]_i_1_n_2 ,\axi_wdata_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_wdata_reg[3]_i_1_n_4 ,\axi_wdata_reg[3]_i_1_n_5 ,\axi_wdata_reg[3]_i_1_n_6 ,\axi_wdata_reg[3]_i_1_n_7 }),
        .S({m00_axi_wdata[3:1],\axi_wdata[3]_i_2_n_0 }));
  FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[7]_i_1_n_7 ),
        .Q(m00_axi_wdata[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[7]_i_1_n_6 ),
        .Q(m00_axi_wdata[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[7]_i_1_n_5 ),
        .Q(m00_axi_wdata[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[7]_i_1_n_4 ),
        .Q(m00_axi_wdata[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \axi_wdata_reg[7]_i_1 
       (.CI(\axi_wdata_reg[3]_i_1_n_0 ),
        .CO({\axi_wdata_reg[7]_i_1_n_0 ,\axi_wdata_reg[7]_i_1_n_1 ,\axi_wdata_reg[7]_i_1_n_2 ,\axi_wdata_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[7]_i_1_n_4 ,\axi_wdata_reg[7]_i_1_n_5 ,\axi_wdata_reg[7]_i_1_n_6 ,\axi_wdata_reg[7]_i_1_n_7 }),
        .S(m00_axi_wdata[7:4]));
  FDRE \axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[11]_i_1_n_7 ),
        .Q(m00_axi_wdata[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(p_13_in),
        .D(\axi_wdata_reg[11]_i_1_n_6 ),
        .Q(m00_axi_wdata[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    axi_wlast_i_1
       (.I0(axi_wlast0),
        .I1(m00_axi_wready),
        .I2(axi_wvalid_reg_0),
        .I3(m00_axi_wlast),
        .O(axi_wlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    axi_wlast_i_2
       (.I0(p_13_in),
        .I1(write_index_reg[3]),
        .I2(write_index_reg[4]),
        .I3(write_index_reg[2]),
        .I4(write_index_reg[1]),
        .I5(write_index_reg[0]),
        .O(axi_wlast0));
  FDRE axi_wlast_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wlast_i_1_n_0),
        .Q(m00_axi_wlast),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2EEE)) 
    axi_wvalid_i_1
       (.I0(start_single_burst_write_reg_n_0),
        .I1(axi_wvalid_reg_0),
        .I2(m00_axi_wready),
        .I3(m00_axi_wlast),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_wvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    burst_read_active_i_1
       (.I0(start_single_burst_read_reg_n_0),
        .I1(m00_axi_rlast),
        .I2(axi_rready_reg_0),
        .I3(m00_axi_rvalid),
        .I4(burst_read_active),
        .O(burst_read_active_i_1_n_0));
  FDRE burst_read_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(burst_read_active_i_1_n_0),
        .Q(burst_read_active),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    burst_write_active_i_1
       (.I0(start_single_burst_write_reg_n_0),
        .I1(m00_axi_bvalid),
        .I2(M_AXI_BREADY),
        .I3(burst_write_active),
        .O(burst_write_active_i_1_n_0));
  FDRE burst_write_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(burst_write_active_i_1_n_0),
        .Q(burst_write_active),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    compare_done_i_1
       (.I0(m00_axi_aresetn),
        .O(compare_done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEFAA00)) 
    compare_done_i_2
       (.I0(mst_exec_state),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .I3(compare_done),
        .I4(m00_axi_txn_done),
        .O(compare_done_i_2_n_0));
  FDRE compare_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(compare_done_i_2_n_0),
        .Q(m00_axi_txn_done),
        .R(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    error_reg_i_1
       (.I0(p_9_in),
        .I1(m00_axi_rresp),
        .I2(p_7_in),
        .I3(m00_axi_bresp),
        .I4(read_mismatch),
        .I5(error_reg),
        .O(error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error_reg_i_2
       (.I0(M_AXI_BREADY),
        .I1(m00_axi_bvalid),
        .O(p_7_in));
  FDRE error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(error_reg_i_1_n_0),
        .Q(error_reg),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \expected_rdata[0]_i_1 
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rvalid),
        .O(p_9_in));
  LUT1 #(
    .INIT(2'h1)) 
    \expected_rdata[0]_i_3 
       (.I0(expected_rdata_reg[0]),
        .O(\expected_rdata[0]_i_3_n_0 ));
  FDSE \expected_rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[0]_i_2_n_7 ),
        .Q(expected_rdata_reg[0]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\expected_rdata_reg[0]_i_2_n_0 ,\expected_rdata_reg[0]_i_2_n_1 ,\expected_rdata_reg[0]_i_2_n_2 ,\expected_rdata_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\expected_rdata_reg[0]_i_2_n_4 ,\expected_rdata_reg[0]_i_2_n_5 ,\expected_rdata_reg[0]_i_2_n_6 ,\expected_rdata_reg[0]_i_2_n_7 }),
        .S({expected_rdata_reg[3:1],\expected_rdata[0]_i_3_n_0 }));
  FDRE \expected_rdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[8]_i_1_n_5 ),
        .Q(expected_rdata_reg[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[8]_i_1_n_4 ),
        .Q(expected_rdata_reg[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[12]_i_1_n_7 ),
        .Q(expected_rdata_reg[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[12]_i_1 
       (.CI(\expected_rdata_reg[8]_i_1_n_0 ),
        .CO({\expected_rdata_reg[12]_i_1_n_0 ,\expected_rdata_reg[12]_i_1_n_1 ,\expected_rdata_reg[12]_i_1_n_2 ,\expected_rdata_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[12]_i_1_n_4 ,\expected_rdata_reg[12]_i_1_n_5 ,\expected_rdata_reg[12]_i_1_n_6 ,\expected_rdata_reg[12]_i_1_n_7 }),
        .S(expected_rdata_reg[15:12]));
  FDRE \expected_rdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[12]_i_1_n_6 ),
        .Q(expected_rdata_reg[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[12]_i_1_n_5 ),
        .Q(expected_rdata_reg[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[12]_i_1_n_4 ),
        .Q(expected_rdata_reg[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[16]_i_1_n_7 ),
        .Q(expected_rdata_reg[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[16]_i_1 
       (.CI(\expected_rdata_reg[12]_i_1_n_0 ),
        .CO({\expected_rdata_reg[16]_i_1_n_0 ,\expected_rdata_reg[16]_i_1_n_1 ,\expected_rdata_reg[16]_i_1_n_2 ,\expected_rdata_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[16]_i_1_n_4 ,\expected_rdata_reg[16]_i_1_n_5 ,\expected_rdata_reg[16]_i_1_n_6 ,\expected_rdata_reg[16]_i_1_n_7 }),
        .S(expected_rdata_reg[19:16]));
  FDRE \expected_rdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[16]_i_1_n_6 ),
        .Q(expected_rdata_reg[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[16]_i_1_n_5 ),
        .Q(expected_rdata_reg[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[16]_i_1_n_4 ),
        .Q(expected_rdata_reg[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[0]_i_2_n_6 ),
        .Q(expected_rdata_reg[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[20]_i_1_n_7 ),
        .Q(expected_rdata_reg[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[20]_i_1 
       (.CI(\expected_rdata_reg[16]_i_1_n_0 ),
        .CO({\expected_rdata_reg[20]_i_1_n_0 ,\expected_rdata_reg[20]_i_1_n_1 ,\expected_rdata_reg[20]_i_1_n_2 ,\expected_rdata_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[20]_i_1_n_4 ,\expected_rdata_reg[20]_i_1_n_5 ,\expected_rdata_reg[20]_i_1_n_6 ,\expected_rdata_reg[20]_i_1_n_7 }),
        .S(expected_rdata_reg[23:20]));
  FDRE \expected_rdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[20]_i_1_n_6 ),
        .Q(expected_rdata_reg[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[20]_i_1_n_5 ),
        .Q(expected_rdata_reg[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[20]_i_1_n_4 ),
        .Q(expected_rdata_reg[23]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[24]_i_1_n_7 ),
        .Q(expected_rdata_reg[24]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[24]_i_1 
       (.CI(\expected_rdata_reg[20]_i_1_n_0 ),
        .CO({\expected_rdata_reg[24]_i_1_n_0 ,\expected_rdata_reg[24]_i_1_n_1 ,\expected_rdata_reg[24]_i_1_n_2 ,\expected_rdata_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[24]_i_1_n_4 ,\expected_rdata_reg[24]_i_1_n_5 ,\expected_rdata_reg[24]_i_1_n_6 ,\expected_rdata_reg[24]_i_1_n_7 }),
        .S(expected_rdata_reg[27:24]));
  FDRE \expected_rdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[24]_i_1_n_6 ),
        .Q(expected_rdata_reg[25]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[24]_i_1_n_5 ),
        .Q(expected_rdata_reg[26]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[24]_i_1_n_4 ),
        .Q(expected_rdata_reg[27]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[28]_i_1_n_7 ),
        .Q(expected_rdata_reg[28]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[28]_i_1 
       (.CI(\expected_rdata_reg[24]_i_1_n_0 ),
        .CO({\NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED [3],\expected_rdata_reg[28]_i_1_n_1 ,\expected_rdata_reg[28]_i_1_n_2 ,\expected_rdata_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[28]_i_1_n_4 ,\expected_rdata_reg[28]_i_1_n_5 ,\expected_rdata_reg[28]_i_1_n_6 ,\expected_rdata_reg[28]_i_1_n_7 }),
        .S(expected_rdata_reg[31:28]));
  FDRE \expected_rdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[28]_i_1_n_6 ),
        .Q(expected_rdata_reg[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[0]_i_2_n_5 ),
        .Q(expected_rdata_reg[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[28]_i_1_n_5 ),
        .Q(expected_rdata_reg[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[28]_i_1_n_4 ),
        .Q(expected_rdata_reg[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[0]_i_2_n_4 ),
        .Q(expected_rdata_reg[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[4]_i_1_n_7 ),
        .Q(expected_rdata_reg[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[4]_i_1 
       (.CI(\expected_rdata_reg[0]_i_2_n_0 ),
        .CO({\expected_rdata_reg[4]_i_1_n_0 ,\expected_rdata_reg[4]_i_1_n_1 ,\expected_rdata_reg[4]_i_1_n_2 ,\expected_rdata_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[4]_i_1_n_4 ,\expected_rdata_reg[4]_i_1_n_5 ,\expected_rdata_reg[4]_i_1_n_6 ,\expected_rdata_reg[4]_i_1_n_7 }),
        .S(expected_rdata_reg[7:4]));
  FDRE \expected_rdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[4]_i_1_n_6 ),
        .Q(expected_rdata_reg[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[4]_i_1_n_5 ),
        .Q(expected_rdata_reg[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[4]_i_1_n_4 ),
        .Q(expected_rdata_reg[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[8]_i_1_n_7 ),
        .Q(expected_rdata_reg[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 \expected_rdata_reg[8]_i_1 
       (.CI(\expected_rdata_reg[4]_i_1_n_0 ),
        .CO({\expected_rdata_reg[8]_i_1_n_0 ,\expected_rdata_reg[8]_i_1_n_1 ,\expected_rdata_reg[8]_i_1_n_2 ,\expected_rdata_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[8]_i_1_n_4 ,\expected_rdata_reg[8]_i_1_n_5 ,\expected_rdata_reg[8]_i_1_n_6 ,\expected_rdata_reg[8]_i_1_n_7 }),
        .S(expected_rdata_reg[11:8]));
  FDRE \expected_rdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(p_9_in),
        .D(\expected_rdata_reg[8]_i_1_n_6 ),
        .Q(expected_rdata_reg[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(compare_done_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn),
        .Q(init_txn_ff),
        .R(compare_done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[0]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_burst_counter[1]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[0] ),
        .I1(\read_burst_counter_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_burst_counter[2]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[0] ),
        .I1(\read_burst_counter_reg_n_0_[1] ),
        .I2(\read_burst_counter_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_burst_counter[3]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[1] ),
        .I1(\read_burst_counter_reg_n_0_[0] ),
        .I2(\read_burst_counter_reg_n_0_[2] ),
        .I3(\read_burst_counter_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_burst_counter[4]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[2] ),
        .I1(\read_burst_counter_reg_n_0_[0] ),
        .I2(\read_burst_counter_reg_n_0_[1] ),
        .I3(\read_burst_counter_reg_n_0_[3] ),
        .I4(\read_burst_counter_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_burst_counter[5]_i_1 
       (.I0(\read_burst_counter_reg_n_0_[3] ),
        .I1(\read_burst_counter_reg_n_0_[1] ),
        .I2(\read_burst_counter_reg_n_0_[0] ),
        .I3(\read_burst_counter_reg_n_0_[2] ),
        .I4(\read_burst_counter_reg_n_0_[4] ),
        .I5(\read_burst_counter_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h08)) 
    \read_burst_counter[6]_i_1 
       (.I0(m00_axi_arready),
        .I1(axi_arvalid_reg_0),
        .I2(p_0_in_0),
        .O(read_burst_counter));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_burst_counter[6]_i_2 
       (.I0(\read_burst_counter_reg_n_0_[4] ),
        .I1(\read_burst_counter_reg_n_0_[2] ),
        .I2(\read_burst_counter_reg_n_0_[0] ),
        .I3(\read_burst_counter_reg_n_0_[1] ),
        .I4(\read_burst_counter_reg_n_0_[3] ),
        .I5(\read_burst_counter_reg_n_0_[5] ),
        .O(p_0_in__0[6]));
  FDRE \read_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[0]),
        .Q(\read_burst_counter_reg_n_0_[0] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[1]),
        .Q(\read_burst_counter_reg_n_0_[1] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[2]),
        .Q(\read_burst_counter_reg_n_0_[2] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[3]),
        .Q(\read_burst_counter_reg_n_0_[3] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[4]),
        .Q(\read_burst_counter_reg_n_0_[4] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[5] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[5]),
        .Q(\read_burst_counter_reg_n_0_[5] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[6] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__0[6]),
        .Q(p_0_in_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_index[0]_i_1 
       (.I0(read_index_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_index[1]_i_1 
       (.I0(read_index_reg[0]),
        .I1(read_index_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_index[2]_i_1 
       (.I0(read_index_reg[0]),
        .I1(read_index_reg[1]),
        .I2(read_index_reg[2]),
        .O(\read_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_index[3]_i_1 
       (.I0(read_index_reg[1]),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[2]),
        .I3(read_index_reg[3]),
        .O(p_0_in__1[3]));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \read_index[4]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .I3(start_single_burst_read_reg_n_0),
        .O(\read_index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \read_index[4]_i_2 
       (.I0(read_index_reg[0]),
        .I1(read_index_reg[3]),
        .I2(read_index_reg[1]),
        .I3(read_index_reg[2]),
        .I4(read_index_reg[4]),
        .I5(p_9_in),
        .O(read_index0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_index[4]_i_3 
       (.I0(read_index_reg[2]),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[1]),
        .I3(read_index_reg[3]),
        .I4(read_index_reg[4]),
        .O(p_0_in__1[4]));
  FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in__1[0]),
        .Q(read_index_reg[0]),
        .R(\read_index[4]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in__1[1]),
        .Q(read_index_reg[1]),
        .R(\read_index[4]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(\read_index[2]_i_1_n_0 ),
        .Q(read_index_reg[2]),
        .R(\read_index[4]_i_1_n_0 ));
  FDRE \read_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in__1[3]),
        .Q(read_index_reg[3]),
        .R(\read_index[4]_i_1_n_0 ));
  FDRE \read_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in__1[4]),
        .Q(read_index_reg[4]),
        .R(\read_index[4]_i_1_n_0 ));
  CARRY4 read_mismatch1_carry
       (.CI(1'b0),
        .CO({read_mismatch1_carry_n_0,read_mismatch1_carry_n_1,read_mismatch1_carry_n_2,read_mismatch1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry_O_UNCONNECTED[3:0]),
        .S({read_mismatch1_carry_i_1_n_0,read_mismatch1_carry_i_2_n_0,read_mismatch1_carry_i_3_n_0,read_mismatch1_carry_i_4_n_0}));
  CARRY4 read_mismatch1_carry__0
       (.CI(read_mismatch1_carry_n_0),
        .CO({read_mismatch1_carry__0_n_0,read_mismatch1_carry__0_n_1,read_mismatch1_carry__0_n_2,read_mismatch1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry__0_O_UNCONNECTED[3:0]),
        .S({read_mismatch1_carry__0_i_1_n_0,read_mismatch1_carry__0_i_2_n_0,read_mismatch1_carry__0_i_3_n_0,read_mismatch1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_1
       (.I0(m00_axi_rdata[21]),
        .I1(expected_rdata_reg[21]),
        .I2(expected_rdata_reg[23]),
        .I3(m00_axi_rdata[23]),
        .I4(expected_rdata_reg[22]),
        .I5(m00_axi_rdata[22]),
        .O(read_mismatch1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_2
       (.I0(m00_axi_rdata[18]),
        .I1(expected_rdata_reg[18]),
        .I2(expected_rdata_reg[20]),
        .I3(m00_axi_rdata[20]),
        .I4(expected_rdata_reg[19]),
        .I5(m00_axi_rdata[19]),
        .O(read_mismatch1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_3
       (.I0(m00_axi_rdata[15]),
        .I1(expected_rdata_reg[15]),
        .I2(expected_rdata_reg[17]),
        .I3(m00_axi_rdata[17]),
        .I4(expected_rdata_reg[16]),
        .I5(m00_axi_rdata[16]),
        .O(read_mismatch1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_4
       (.I0(m00_axi_rdata[12]),
        .I1(expected_rdata_reg[12]),
        .I2(expected_rdata_reg[14]),
        .I3(m00_axi_rdata[14]),
        .I4(expected_rdata_reg[13]),
        .I5(m00_axi_rdata[13]),
        .O(read_mismatch1_carry__0_i_4_n_0));
  CARRY4 read_mismatch1_carry__1
       (.CI(read_mismatch1_carry__0_n_0),
        .CO({NLW_read_mismatch1_carry__1_CO_UNCONNECTED[3],read_mismatch1,read_mismatch1_carry__1_n_2,read_mismatch1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,read_mismatch1_carry__1_i_1_n_0,read_mismatch1_carry__1_i_2_n_0,read_mismatch1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    read_mismatch1_carry__1_i_1
       (.I0(m00_axi_rdata[30]),
        .I1(expected_rdata_reg[30]),
        .I2(m00_axi_rdata[31]),
        .I3(expected_rdata_reg[31]),
        .O(read_mismatch1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__1_i_2
       (.I0(m00_axi_rdata[27]),
        .I1(expected_rdata_reg[27]),
        .I2(expected_rdata_reg[29]),
        .I3(m00_axi_rdata[29]),
        .I4(expected_rdata_reg[28]),
        .I5(m00_axi_rdata[28]),
        .O(read_mismatch1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__1_i_3
       (.I0(m00_axi_rdata[24]),
        .I1(expected_rdata_reg[24]),
        .I2(expected_rdata_reg[26]),
        .I3(m00_axi_rdata[26]),
        .I4(expected_rdata_reg[25]),
        .I5(m00_axi_rdata[25]),
        .O(read_mismatch1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_1
       (.I0(m00_axi_rdata[9]),
        .I1(expected_rdata_reg[9]),
        .I2(expected_rdata_reg[11]),
        .I3(m00_axi_rdata[11]),
        .I4(expected_rdata_reg[10]),
        .I5(m00_axi_rdata[10]),
        .O(read_mismatch1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_2
       (.I0(m00_axi_rdata[6]),
        .I1(expected_rdata_reg[6]),
        .I2(expected_rdata_reg[8]),
        .I3(m00_axi_rdata[8]),
        .I4(expected_rdata_reg[7]),
        .I5(m00_axi_rdata[7]),
        .O(read_mismatch1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_3
       (.I0(m00_axi_rdata[3]),
        .I1(expected_rdata_reg[3]),
        .I2(expected_rdata_reg[5]),
        .I3(m00_axi_rdata[5]),
        .I4(expected_rdata_reg[4]),
        .I5(m00_axi_rdata[4]),
        .O(read_mismatch1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_4
       (.I0(m00_axi_rdata[0]),
        .I1(expected_rdata_reg[0]),
        .I2(expected_rdata_reg[2]),
        .I3(m00_axi_rdata[2]),
        .I4(expected_rdata_reg[1]),
        .I5(m00_axi_rdata[1]),
        .O(read_mismatch1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    read_mismatch_i_1
       (.I0(read_mismatch1),
        .I1(m00_axi_rvalid),
        .I2(axi_rready_reg_0),
        .O(read_mismatch0));
  FDRE read_mismatch_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_mismatch0),
        .Q(read_mismatch),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    reads_done_i_1
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_0),
        .I2(reads_done2),
        .I3(p_0_in_0),
        .I4(reads_done),
        .O(reads_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    reads_done_i_2
       (.I0(read_index_reg[4]),
        .I1(read_index_reg[1]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[3]),
        .I4(read_index_reg[2]),
        .O(reads_done2));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
    start_single_burst_read_i_1
       (.I0(burst_read_active),
        .I1(axi_arvalid_reg_0),
        .I2(mst_exec_state),
        .I3(compare_done),
        .I4(reads_done),
        .I5(start_single_burst_read_reg_n_0),
        .O(start_single_burst_read_i_1_n_0));
  FDRE start_single_burst_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read_reg_n_0),
        .R(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
    start_single_burst_write_i_1
       (.I0(axi_awvalid_reg_0),
        .I1(burst_write_active),
        .I2(compare_done),
        .I3(mst_exec_state),
        .I4(writes_done),
        .I5(start_single_burst_write_reg_n_0),
        .O(start_single_burst_write_i_1_n_0));
  FDRE start_single_burst_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_burst_write_i_1_n_0),
        .Q(start_single_burst_write_reg_n_0),
        .R(compare_done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_burst_counter[0]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_burst_counter[1]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[0] ),
        .I1(\write_burst_counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_burst_counter[2]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[0] ),
        .I1(\write_burst_counter_reg_n_0_[1] ),
        .I2(\write_burst_counter_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_burst_counter[3]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[1] ),
        .I1(\write_burst_counter_reg_n_0_[0] ),
        .I2(\write_burst_counter_reg_n_0_[2] ),
        .I3(\write_burst_counter_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_burst_counter[4]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[2] ),
        .I1(\write_burst_counter_reg_n_0_[0] ),
        .I2(\write_burst_counter_reg_n_0_[1] ),
        .I3(\write_burst_counter_reg_n_0_[3] ),
        .I4(\write_burst_counter_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_burst_counter[5]_i_1 
       (.I0(\write_burst_counter_reg_n_0_[3] ),
        .I1(\write_burst_counter_reg_n_0_[1] ),
        .I2(\write_burst_counter_reg_n_0_[0] ),
        .I3(\write_burst_counter_reg_n_0_[2] ),
        .I4(\write_burst_counter_reg_n_0_[4] ),
        .I5(\write_burst_counter_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h08)) 
    \write_burst_counter[6]_i_1 
       (.I0(m00_axi_awready),
        .I1(axi_awvalid_reg_0),
        .I2(p_0_in3_in),
        .O(write_burst_counter));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_burst_counter[6]_i_2 
       (.I0(\write_burst_counter_reg_n_0_[4] ),
        .I1(\write_burst_counter_reg_n_0_[2] ),
        .I2(\write_burst_counter_reg_n_0_[0] ),
        .I3(\write_burst_counter_reg_n_0_[1] ),
        .I4(\write_burst_counter_reg_n_0_[3] ),
        .I5(\write_burst_counter_reg_n_0_[5] ),
        .O(p_0_in[6]));
  FDRE \write_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[0]),
        .Q(\write_burst_counter_reg_n_0_[0] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[1]),
        .Q(\write_burst_counter_reg_n_0_[1] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[2]),
        .Q(\write_burst_counter_reg_n_0_[2] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[3]),
        .Q(\write_burst_counter_reg_n_0_[3] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[4]),
        .Q(\write_burst_counter_reg_n_0_[4] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[5] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[5]),
        .Q(\write_burst_counter_reg_n_0_[5] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[6] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[6]),
        .Q(p_0_in3_in),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[0]_i_1 
       (.I0(write_index_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[1]_i_1 
       (.I0(write_index_reg[0]),
        .I1(write_index_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_index[2]_i_1 
       (.I0(write_index_reg[0]),
        .I1(write_index_reg[1]),
        .I2(write_index_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_index[3]_i_1 
       (.I0(write_index_reg[1]),
        .I1(write_index_reg[0]),
        .I2(write_index_reg[2]),
        .I3(write_index_reg[3]),
        .O(p_0_in__2[3]));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \write_index[4]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .I3(start_single_burst_write_reg_n_0),
        .O(\write_index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \write_index[4]_i_2 
       (.I0(write_index_reg[0]),
        .I1(write_index_reg[3]),
        .I2(write_index_reg[1]),
        .I3(write_index_reg[2]),
        .I4(write_index_reg[4]),
        .I5(p_13_in),
        .O(write_index0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_index[4]_i_3 
       (.I0(write_index_reg[2]),
        .I1(write_index_reg[0]),
        .I2(write_index_reg[1]),
        .I3(write_index_reg[3]),
        .I4(write_index_reg[4]),
        .O(p_0_in__2[4]));
  FDRE \write_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[0]),
        .Q(write_index_reg[0]),
        .R(\write_index[4]_i_1_n_0 ));
  FDRE \write_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[1]),
        .Q(write_index_reg[1]),
        .R(\write_index[4]_i_1_n_0 ));
  FDRE \write_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[2]),
        .Q(write_index_reg[2]),
        .R(\write_index[4]_i_1_n_0 ));
  FDRE \write_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[3]),
        .Q(write_index_reg[3]),
        .R(\write_index[4]_i_1_n_0 ));
  FDRE \write_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[4]),
        .Q(write_index_reg[4]),
        .R(\write_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done_i_1
       (.I0(p_0_in3_in),
        .I1(M_AXI_BREADY),
        .I2(m00_axi_bvalid),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(\axi_awaddr[28]_i_1_n_0 ));
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