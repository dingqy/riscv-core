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


// IP VLNV: xilinx.com:module_ref:SenderSolver_d:1.0
// IP Revision: 1

(* X_CORE_INFO = "SenderSolver_d,Vivado 2019.1.3" *)
(* CHECK_LICENSE_TYPE = "design_1_SenderSolver_d_0_0,SenderSolver_d,{}" *)
(* CORE_GENERATION_INFO = "design_1_SenderSolver_d_0_0,SenderSolver_d,{x_ipProduct=Vivado 2019.1.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SenderSolver_d,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_SenderSolver_d_0_0 (
  request_valid_i,
  CLK,
  RESET,
  addr_i,
  request_mode,
  rsp_valid,
  CacheResult,
  r_data,
  w_data,
  w_valid,
  w_addr,
  r_memory_data,
  r_memory_valid,
  addr,
  request_valid
);

input wire request_valid_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire RESET;
input wire [31 : 0] addr_i;
input wire [1 : 0] request_mode;
input wire rsp_valid;
input wire [108 : 0] CacheResult;
input wire [31 : 0] r_data;
output wire [31 : 0] w_data;
output wire w_valid;
output wire [31 : 0] w_addr;
output wire [108 : 0] r_memory_data;
output wire r_memory_valid;
output wire [31 : 0] addr;
output wire request_valid;

  SenderSolver_d inst (
    .request_valid_i(request_valid_i),
    .CLK(CLK),
    .RESET(RESET),
    .addr_i(addr_i),
    .request_mode(request_mode),
    .rsp_valid(rsp_valid),
    .CacheResult(CacheResult),
    .r_data(r_data),
    .w_data(w_data),
    .w_valid(w_valid),
    .w_addr(w_addr),
    .r_memory_data(r_memory_data),
    .r_memory_valid(r_memory_valid),
    .addr(addr),
    .request_valid(request_valid)
  );
endmodule
