// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:DataCache:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_DataCache_0_0 (
  CLK,
  RESET,
  addr,
  r_valid,
  w_valid,
  w_data,
  FIFO_empty,
  r_memory_write,
  r_memory_valid_input,
  r_memory_addr,
  request_valid,
  r_data,
  Cache_result,
  rsp,
  request_mode,
  rsp_valid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire RESET;
input wire [31 : 0] addr;
input wire r_valid;
input wire w_valid;
input wire [31 : 0] w_data;
input wire FIFO_empty;
input wire [108 : 0] r_memory_write;
input wire r_memory_valid_input;
output wire [31 : 0] r_memory_addr;
output wire request_valid;
output wire [31 : 0] r_data;
output wire [108 : 0] Cache_result;
output wire [1 : 0] rsp;
output wire [1 : 0] request_mode;
output wire rsp_valid;

  DataCache inst (
    .CLK(CLK),
    .RESET(RESET),
    .addr(addr),
    .r_valid(r_valid),
    .w_valid(w_valid),
    .w_data(w_data),
    .FIFO_empty(FIFO_empty),
    .r_memory_write(r_memory_write),
    .r_memory_valid_input(r_memory_valid_input),
    .r_memory_addr(r_memory_addr),
    .request_valid(request_valid),
    .r_data(r_data),
    .Cache_result(Cache_result),
    .rsp(rsp),
    .request_mode(request_mode),
    .rsp_valid(rsp_valid)
  );
endmodule