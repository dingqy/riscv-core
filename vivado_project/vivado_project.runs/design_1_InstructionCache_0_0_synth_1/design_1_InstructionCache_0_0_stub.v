// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Mar  3 22:36:17 2020
// Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_InstructionCache_0_0_stub.v
// Design      : design_1_InstructionCache_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "InstructionCache,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, RESET, r_addr, r_valid, FIFO_empty, 
  r_memory_write, r_memory_valid_input, r_memory_addr, request_valid, r_data, Cache_result, 
  r_rsp, r_rsp_valid)
/* synthesis syn_black_box black_box_pad_pin="CLK,RESET,r_addr[31:0],r_valid,FIFO_empty,r_memory_write[108:0],r_memory_valid_input,r_memory_addr[31:0],request_valid,r_data[31:0],Cache_result[108:0],r_rsp[1:0],r_rsp_valid" */;
  input CLK;
  input RESET;
  input [31:0]r_addr;
  input r_valid;
  input FIFO_empty;
  input [108:0]r_memory_write;
  input r_memory_valid_input;
  output [31:0]r_memory_addr;
  output request_valid;
  output [31:0]r_data;
  output [108:0]Cache_result;
  output [1:0]r_rsp;
  output r_rsp_valid;
endmodule
