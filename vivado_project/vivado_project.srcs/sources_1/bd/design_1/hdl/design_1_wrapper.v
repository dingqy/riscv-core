//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
//Date        : Tue Mar  3 22:34:28 2020
//Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK,
    DDR2_addr,
    DDR2_ba,
    DDR2_cas_n,
    DDR2_ck_n,
    DDR2_ck_p,
    DDR2_cke,
    DDR2_cs_n,
    DDR2_dm,
    DDR2_dq,
    DDR2_dqs_n,
    DDR2_dqs_p,
    DDR2_odt,
    DDR2_ras_n,
    DDR2_we_n,
    FIFO_empty_d,
    FIFO_empty_i,
    addr_d,
    r_addr_i,
    r_data_d,
    r_data_i,
    r_rsp_i,
    r_valid_d,
    r_valid_i,
    reset,
    rsp_d,
    rsp_valid_d,
    rsp_valid_i,
    w_data_d,
    w_valid_d);
  input CLK;
  output [12:0]DDR2_addr;
  output [2:0]DDR2_ba;
  output DDR2_cas_n;
  output [0:0]DDR2_ck_n;
  output [0:0]DDR2_ck_p;
  output [0:0]DDR2_cke;
  output [0:0]DDR2_cs_n;
  output [1:0]DDR2_dm;
  inout [15:0]DDR2_dq;
  inout [1:0]DDR2_dqs_n;
  inout [1:0]DDR2_dqs_p;
  output [0:0]DDR2_odt;
  output DDR2_ras_n;
  output DDR2_we_n;
  input FIFO_empty_d;
  input FIFO_empty_i;
  input [31:0]addr_d;
  input [31:0]r_addr_i;
  output [31:0]r_data_d;
  output [31:0]r_data_i;
  output [1:0]r_rsp_i;
  input r_valid_d;
  input r_valid_i;
  input reset;
  output [1:0]rsp_d;
  output rsp_valid_d;
  output rsp_valid_i;
  input [31:0]w_data_d;
  input w_valid_d;

  wire CLK;
  wire [12:0]DDR2_addr;
  wire [2:0]DDR2_ba;
  wire DDR2_cas_n;
  wire [0:0]DDR2_ck_n;
  wire [0:0]DDR2_ck_p;
  wire [0:0]DDR2_cke;
  wire [0:0]DDR2_cs_n;
  wire [1:0]DDR2_dm;
  wire [15:0]DDR2_dq;
  wire [1:0]DDR2_dqs_n;
  wire [1:0]DDR2_dqs_p;
  wire [0:0]DDR2_odt;
  wire DDR2_ras_n;
  wire DDR2_we_n;
  wire FIFO_empty_d;
  wire FIFO_empty_i;
  wire [31:0]addr_d;
  wire [31:0]r_addr_i;
  wire [31:0]r_data_d;
  wire [31:0]r_data_i;
  wire [1:0]r_rsp_i;
  wire r_valid_d;
  wire r_valid_i;
  wire reset;
  wire [1:0]rsp_d;
  wire rsp_valid_d;
  wire rsp_valid_i;
  wire [31:0]w_data_d;
  wire w_valid_d;

  design_1 design_1_i
       (.CLK(CLK),
        .DDR2_addr(DDR2_addr),
        .DDR2_ba(DDR2_ba),
        .DDR2_cas_n(DDR2_cas_n),
        .DDR2_ck_n(DDR2_ck_n),
        .DDR2_ck_p(DDR2_ck_p),
        .DDR2_cke(DDR2_cke),
        .DDR2_cs_n(DDR2_cs_n),
        .DDR2_dm(DDR2_dm),
        .DDR2_dq(DDR2_dq),
        .DDR2_dqs_n(DDR2_dqs_n),
        .DDR2_dqs_p(DDR2_dqs_p),
        .DDR2_odt(DDR2_odt),
        .DDR2_ras_n(DDR2_ras_n),
        .DDR2_we_n(DDR2_we_n),
        .FIFO_empty_d(FIFO_empty_d),
        .FIFO_empty_i(FIFO_empty_i),
        .addr_d(addr_d),
        .r_addr_i(r_addr_i),
        .r_data_d(r_data_d),
        .r_data_i(r_data_i),
        .r_rsp_i(r_rsp_i),
        .r_valid_d(r_valid_d),
        .r_valid_i(r_valid_i),
        .reset(reset),
        .rsp_d(rsp_d),
        .rsp_valid_d(rsp_valid_d),
        .rsp_valid_i(rsp_valid_i),
        .w_data_d(w_data_d),
        .w_valid_d(w_valid_d));
endmodule
