// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Mar  3 22:36:15 2020
// Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_SenderSolver_d_0_0/design_1_SenderSolver_d_0_0_stub.v
// Design      : design_1_SenderSolver_d_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SenderSolver_d,Vivado 2019.1.3" *)
module design_1_SenderSolver_d_0_0(request_valid_i, CLK, RESET, addr_i, 
  request_mode, rsp_valid, CacheResult, r_data, w_data, w_valid, w_addr, r_memory_data, 
  r_memory_valid, addr, request_valid)
/* synthesis syn_black_box black_box_pad_pin="request_valid_i,CLK,RESET,addr_i[31:0],request_mode[1:0],rsp_valid,CacheResult[108:0],r_data[31:0],w_data[31:0],w_valid,w_addr[31:0],r_memory_data[108:0],r_memory_valid,addr[31:0],request_valid" */;
  input request_valid_i;
  input CLK;
  input RESET;
  input [31:0]addr_i;
  input [1:0]request_mode;
  input rsp_valid;
  input [108:0]CacheResult;
  input [31:0]r_data;
  output [31:0]w_data;
  output w_valid;
  output [31:0]w_addr;
  output [108:0]r_memory_data;
  output r_memory_valid;
  output [31:0]addr;
  output request_valid;
endmodule
