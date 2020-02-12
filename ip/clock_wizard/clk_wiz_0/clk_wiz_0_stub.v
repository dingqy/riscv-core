// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Feb 11 21:50:14 2020
// Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/ip/clock_wizard/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_out_200MHz, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out_200MHz,resetn,locked,clk_in1" */;
  output clk_out_200MHz;
  input resetn;
  output locked;
  input clk_in1;
endmodule
