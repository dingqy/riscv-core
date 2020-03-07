// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Mar  3 22:36:15 2020
// Host        : DESKTOP-R2IVILV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_SenderSolver_d_0_0/design_1_SenderSolver_d_0_0_sim_netlist.v
// Design      : design_1_SenderSolver_d_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SenderSolver_d_0_0,SenderSolver_d,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SenderSolver_d,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module design_1_SenderSolver_d_0_0
   (request_valid_i,
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
    request_valid);
  input request_valid_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_CLK, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
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

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [108:0]CacheResult;
  wire RESET;
  wire [31:0]addr;
  wire [31:0]addr_i;
  wire [31:0]r_data;
  wire [107:0]\^r_memory_data ;
  wire request_valid;
  wire request_valid_i;
  wire rsp_valid;
  wire [31:12]\^w_addr ;
  wire [31:0]w_data;

  assign r_memory_data[108] = \<const1> ;
  assign r_memory_data[107:0] = \^r_memory_data [107:0];
  assign r_memory_valid = rsp_valid;
  assign w_addr[31:12] = \^w_addr [31:12];
  assign w_addr[11:2] = addr[11:2];
  assign w_addr[1] = \<const0> ;
  assign w_addr[0] = \<const0> ;
  assign w_valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_SenderSolver_d_0_0_SenderSolver_d inst
       (.CLK(CLK),
        .CacheResult(CacheResult),
        .RESET(RESET),
        .addr(addr),
        .addr_i(addr_i),
        .r_data(r_data),
        .r_memory_data(\^r_memory_data ),
        .request_valid(request_valid),
        .request_valid_i(request_valid_i),
        .w_addr(\^w_addr ),
        .w_data(w_data));
endmodule

(* ORIG_REF_NAME = "SenderSolver_d" *) 
module design_1_SenderSolver_d_0_0_SenderSolver_d
   (r_memory_data,
    addr,
    w_addr,
    request_valid,
    w_data,
    CacheResult,
    r_data,
    request_valid_i,
    addr_i,
    CLK,
    RESET);
  output [107:0]r_memory_data;
  output [31:0]addr;
  output [19:0]w_addr;
  output request_valid;
  output [31:0]w_data;
  input [108:0]CacheResult;
  input [31:0]r_data;
  input request_valid_i;
  input [31:0]addr_i;
  input CLK;
  input RESET;

  wire CLK;
  wire [108:0]CacheResult;
  wire \CacheResult_r[105]_i_1_n_0 ;
  wire \CacheResult_r_reg_n_0_[106] ;
  wire \CacheResult_r_reg_n_0_[107] ;
  wire \CacheResult_r_reg_n_0_[54] ;
  wire \CacheResult_r_reg_n_0_[55] ;
  wire \CacheResult_r_reg_n_0_[56] ;
  wire \CacheResult_r_reg_n_0_[57] ;
  wire \CacheResult_r_reg_n_0_[58] ;
  wire \CacheResult_r_reg_n_0_[59] ;
  wire \CacheResult_r_reg_n_0_[60] ;
  wire \CacheResult_r_reg_n_0_[61] ;
  wire \CacheResult_r_reg_n_0_[62] ;
  wire \CacheResult_r_reg_n_0_[63] ;
  wire \CacheResult_r_reg_n_0_[64] ;
  wire \CacheResult_r_reg_n_0_[65] ;
  wire \CacheResult_r_reg_n_0_[66] ;
  wire \CacheResult_r_reg_n_0_[67] ;
  wire \CacheResult_r_reg_n_0_[68] ;
  wire \CacheResult_r_reg_n_0_[69] ;
  wire \CacheResult_r_reg_n_0_[70] ;
  wire \CacheResult_r_reg_n_0_[71] ;
  wire \CacheResult_r_reg_n_0_[72] ;
  wire \CacheResult_r_reg_n_0_[73] ;
  wire \CacheResult_r_reg_n_0_[74] ;
  wire \CacheResult_r_reg_n_0_[75] ;
  wire \CacheResult_r_reg_n_0_[76] ;
  wire \CacheResult_r_reg_n_0_[77] ;
  wire \CacheResult_r_reg_n_0_[78] ;
  wire \CacheResult_r_reg_n_0_[79] ;
  wire \CacheResult_r_reg_n_0_[80] ;
  wire \CacheResult_r_reg_n_0_[81] ;
  wire \CacheResult_r_reg_n_0_[82] ;
  wire \CacheResult_r_reg_n_0_[83] ;
  wire \CacheResult_r_reg_n_0_[84] ;
  wire \CacheResult_r_reg_n_0_[85] ;
  wire RESET;
  wire [31:0]addr;
  wire [31:0]addr_i;
  wire p_1_in;
  wire [52:0]p_2_in;
  wire p_3_in;
  wire [31:0]r_data;
  wire [107:0]r_memory_data;
  wire request_valid;
  wire request_valid_i;
  wire [19:0]w_addr;
  wire [31:0]w_data;

  LUT1 #(
    .INIT(2'h1)) 
    \CacheResult_r[105]_i_1 
       (.I0(RESET),
        .O(\CacheResult_r[105]_i_1_n_0 ));
  FDCE \CacheResult_r_reg[0] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[0]),
        .Q(p_2_in[0]));
  FDCE \CacheResult_r_reg[100] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[100]),
        .Q(w_addr[14]));
  FDCE \CacheResult_r_reg[101] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[101]),
        .Q(w_addr[15]));
  FDCE \CacheResult_r_reg[102] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[102]),
        .Q(w_addr[16]));
  FDCE \CacheResult_r_reg[103] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[103]),
        .Q(w_addr[17]));
  FDCE \CacheResult_r_reg[104] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[104]),
        .Q(w_addr[18]));
  FDCE \CacheResult_r_reg[105] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[105]),
        .Q(w_addr[19]));
  FDCE \CacheResult_r_reg[106] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[106]),
        .Q(\CacheResult_r_reg_n_0_[106] ));
  FDCE \CacheResult_r_reg[107] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[107]),
        .Q(\CacheResult_r_reg_n_0_[107] ));
  FDCE \CacheResult_r_reg[108] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[108]),
        .Q(p_3_in));
  FDCE \CacheResult_r_reg[10] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[10]),
        .Q(p_2_in[10]));
  FDCE \CacheResult_r_reg[11] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[11]),
        .Q(p_2_in[11]));
  FDCE \CacheResult_r_reg[12] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[12]),
        .Q(p_2_in[12]));
  FDCE \CacheResult_r_reg[13] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[13]),
        .Q(p_2_in[13]));
  FDCE \CacheResult_r_reg[14] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[14]),
        .Q(p_2_in[14]));
  FDCE \CacheResult_r_reg[15] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[15]),
        .Q(p_2_in[15]));
  FDCE \CacheResult_r_reg[16] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[16]),
        .Q(p_2_in[16]));
  FDCE \CacheResult_r_reg[17] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[17]),
        .Q(p_2_in[17]));
  FDCE \CacheResult_r_reg[18] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[18]),
        .Q(p_2_in[18]));
  FDCE \CacheResult_r_reg[19] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[19]),
        .Q(p_2_in[19]));
  FDCE \CacheResult_r_reg[1] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[1]),
        .Q(p_2_in[1]));
  FDCE \CacheResult_r_reg[20] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[20]),
        .Q(p_2_in[20]));
  FDCE \CacheResult_r_reg[21] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[21]),
        .Q(p_2_in[21]));
  FDCE \CacheResult_r_reg[22] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[22]),
        .Q(p_2_in[22]));
  FDCE \CacheResult_r_reg[23] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[23]),
        .Q(p_2_in[23]));
  FDCE \CacheResult_r_reg[24] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[24]),
        .Q(p_2_in[24]));
  FDCE \CacheResult_r_reg[25] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[25]),
        .Q(p_2_in[25]));
  FDCE \CacheResult_r_reg[26] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[26]),
        .Q(p_2_in[26]));
  FDCE \CacheResult_r_reg[27] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[27]),
        .Q(p_2_in[27]));
  FDCE \CacheResult_r_reg[28] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[28]),
        .Q(p_2_in[28]));
  FDCE \CacheResult_r_reg[29] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[29]),
        .Q(p_2_in[29]));
  FDCE \CacheResult_r_reg[2] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[2]),
        .Q(p_2_in[2]));
  FDCE \CacheResult_r_reg[30] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[30]),
        .Q(p_2_in[30]));
  FDCE \CacheResult_r_reg[31] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[31]),
        .Q(p_2_in[31]));
  FDCE \CacheResult_r_reg[32] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[32]),
        .Q(p_2_in[32]));
  FDCE \CacheResult_r_reg[33] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[33]),
        .Q(p_2_in[33]));
  FDCE \CacheResult_r_reg[34] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[34]),
        .Q(p_2_in[34]));
  FDCE \CacheResult_r_reg[35] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[35]),
        .Q(p_2_in[35]));
  FDCE \CacheResult_r_reg[36] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[36]),
        .Q(p_2_in[36]));
  FDCE \CacheResult_r_reg[37] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[37]),
        .Q(p_2_in[37]));
  FDCE \CacheResult_r_reg[38] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[38]),
        .Q(p_2_in[38]));
  FDCE \CacheResult_r_reg[39] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[39]),
        .Q(p_2_in[39]));
  FDCE \CacheResult_r_reg[3] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[3]),
        .Q(p_2_in[3]));
  FDCE \CacheResult_r_reg[40] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[40]),
        .Q(p_2_in[40]));
  FDCE \CacheResult_r_reg[41] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[41]),
        .Q(p_2_in[41]));
  FDCE \CacheResult_r_reg[42] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[42]),
        .Q(p_2_in[42]));
  FDCE \CacheResult_r_reg[43] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[43]),
        .Q(p_2_in[43]));
  FDCE \CacheResult_r_reg[44] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[44]),
        .Q(p_2_in[44]));
  FDCE \CacheResult_r_reg[45] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[45]),
        .Q(p_2_in[45]));
  FDCE \CacheResult_r_reg[46] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[46]),
        .Q(p_2_in[46]));
  FDCE \CacheResult_r_reg[47] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[47]),
        .Q(p_2_in[47]));
  FDCE \CacheResult_r_reg[48] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[48]),
        .Q(p_2_in[48]));
  FDCE \CacheResult_r_reg[49] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[49]),
        .Q(p_2_in[49]));
  FDCE \CacheResult_r_reg[4] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[4]),
        .Q(p_2_in[4]));
  FDCE \CacheResult_r_reg[50] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[50]),
        .Q(p_2_in[50]));
  FDCE \CacheResult_r_reg[51] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[51]),
        .Q(p_2_in[51]));
  FDCE \CacheResult_r_reg[52] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[52]),
        .Q(p_2_in[52]));
  FDCE \CacheResult_r_reg[53] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[53]),
        .Q(p_1_in));
  FDCE \CacheResult_r_reg[54] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[54]),
        .Q(\CacheResult_r_reg_n_0_[54] ));
  FDCE \CacheResult_r_reg[55] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[55]),
        .Q(\CacheResult_r_reg_n_0_[55] ));
  FDCE \CacheResult_r_reg[56] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[56]),
        .Q(\CacheResult_r_reg_n_0_[56] ));
  FDCE \CacheResult_r_reg[57] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[57]),
        .Q(\CacheResult_r_reg_n_0_[57] ));
  FDCE \CacheResult_r_reg[58] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[58]),
        .Q(\CacheResult_r_reg_n_0_[58] ));
  FDCE \CacheResult_r_reg[59] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[59]),
        .Q(\CacheResult_r_reg_n_0_[59] ));
  FDCE \CacheResult_r_reg[5] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[5]),
        .Q(p_2_in[5]));
  FDCE \CacheResult_r_reg[60] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[60]),
        .Q(\CacheResult_r_reg_n_0_[60] ));
  FDCE \CacheResult_r_reg[61] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[61]),
        .Q(\CacheResult_r_reg_n_0_[61] ));
  FDCE \CacheResult_r_reg[62] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[62]),
        .Q(\CacheResult_r_reg_n_0_[62] ));
  FDCE \CacheResult_r_reg[63] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[63]),
        .Q(\CacheResult_r_reg_n_0_[63] ));
  FDCE \CacheResult_r_reg[64] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[64]),
        .Q(\CacheResult_r_reg_n_0_[64] ));
  FDCE \CacheResult_r_reg[65] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[65]),
        .Q(\CacheResult_r_reg_n_0_[65] ));
  FDCE \CacheResult_r_reg[66] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[66]),
        .Q(\CacheResult_r_reg_n_0_[66] ));
  FDCE \CacheResult_r_reg[67] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[67]),
        .Q(\CacheResult_r_reg_n_0_[67] ));
  FDCE \CacheResult_r_reg[68] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[68]),
        .Q(\CacheResult_r_reg_n_0_[68] ));
  FDCE \CacheResult_r_reg[69] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[69]),
        .Q(\CacheResult_r_reg_n_0_[69] ));
  FDCE \CacheResult_r_reg[6] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[6]),
        .Q(p_2_in[6]));
  FDCE \CacheResult_r_reg[70] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[70]),
        .Q(\CacheResult_r_reg_n_0_[70] ));
  FDCE \CacheResult_r_reg[71] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[71]),
        .Q(\CacheResult_r_reg_n_0_[71] ));
  FDCE \CacheResult_r_reg[72] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[72]),
        .Q(\CacheResult_r_reg_n_0_[72] ));
  FDCE \CacheResult_r_reg[73] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[73]),
        .Q(\CacheResult_r_reg_n_0_[73] ));
  FDCE \CacheResult_r_reg[74] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[74]),
        .Q(\CacheResult_r_reg_n_0_[74] ));
  FDCE \CacheResult_r_reg[75] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[75]),
        .Q(\CacheResult_r_reg_n_0_[75] ));
  FDCE \CacheResult_r_reg[76] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[76]),
        .Q(\CacheResult_r_reg_n_0_[76] ));
  FDCE \CacheResult_r_reg[77] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[77]),
        .Q(\CacheResult_r_reg_n_0_[77] ));
  FDCE \CacheResult_r_reg[78] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[78]),
        .Q(\CacheResult_r_reg_n_0_[78] ));
  FDCE \CacheResult_r_reg[79] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[79]),
        .Q(\CacheResult_r_reg_n_0_[79] ));
  FDCE \CacheResult_r_reg[7] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[7]),
        .Q(p_2_in[7]));
  FDCE \CacheResult_r_reg[80] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[80]),
        .Q(\CacheResult_r_reg_n_0_[80] ));
  FDCE \CacheResult_r_reg[81] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[81]),
        .Q(\CacheResult_r_reg_n_0_[81] ));
  FDCE \CacheResult_r_reg[82] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[82]),
        .Q(\CacheResult_r_reg_n_0_[82] ));
  FDCE \CacheResult_r_reg[83] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[83]),
        .Q(\CacheResult_r_reg_n_0_[83] ));
  FDCE \CacheResult_r_reg[84] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[84]),
        .Q(\CacheResult_r_reg_n_0_[84] ));
  FDCE \CacheResult_r_reg[85] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[85]),
        .Q(\CacheResult_r_reg_n_0_[85] ));
  FDCE \CacheResult_r_reg[86] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[86]),
        .Q(w_addr[0]));
  FDCE \CacheResult_r_reg[87] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[87]),
        .Q(w_addr[1]));
  FDCE \CacheResult_r_reg[88] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[88]),
        .Q(w_addr[2]));
  FDCE \CacheResult_r_reg[89] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[89]),
        .Q(w_addr[3]));
  FDCE \CacheResult_r_reg[8] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[8]),
        .Q(p_2_in[8]));
  FDCE \CacheResult_r_reg[90] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[90]),
        .Q(w_addr[4]));
  FDCE \CacheResult_r_reg[91] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[91]),
        .Q(w_addr[5]));
  FDCE \CacheResult_r_reg[92] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[92]),
        .Q(w_addr[6]));
  FDCE \CacheResult_r_reg[93] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[93]),
        .Q(w_addr[7]));
  FDCE \CacheResult_r_reg[94] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[94]),
        .Q(w_addr[8]));
  FDCE \CacheResult_r_reg[95] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[95]),
        .Q(w_addr[9]));
  FDCE \CacheResult_r_reg[96] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[96]),
        .Q(w_addr[10]));
  FDCE \CacheResult_r_reg[97] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[97]),
        .Q(w_addr[11]));
  FDCE \CacheResult_r_reg[98] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[98]),
        .Q(w_addr[12]));
  FDCE \CacheResult_r_reg[99] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[99]),
        .Q(w_addr[13]));
  FDCE \CacheResult_r_reg[9] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(CacheResult[9]),
        .Q(p_2_in[9]));
  FDCE \addr_r_reg[0] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[0]),
        .Q(addr[0]));
  FDCE \addr_r_reg[10] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[10]),
        .Q(addr[10]));
  FDCE \addr_r_reg[11] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[11]),
        .Q(addr[11]));
  FDCE \addr_r_reg[12] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[12]),
        .Q(addr[12]));
  FDCE \addr_r_reg[13] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[13]),
        .Q(addr[13]));
  FDCE \addr_r_reg[14] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[14]),
        .Q(addr[14]));
  FDCE \addr_r_reg[15] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[15]),
        .Q(addr[15]));
  FDCE \addr_r_reg[16] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[16]),
        .Q(addr[16]));
  FDCE \addr_r_reg[17] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[17]),
        .Q(addr[17]));
  FDCE \addr_r_reg[18] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[18]),
        .Q(addr[18]));
  FDCE \addr_r_reg[19] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[19]),
        .Q(addr[19]));
  FDCE \addr_r_reg[1] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[1]),
        .Q(addr[1]));
  FDCE \addr_r_reg[20] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[20]),
        .Q(addr[20]));
  FDCE \addr_r_reg[21] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[21]),
        .Q(addr[21]));
  FDCE \addr_r_reg[22] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[22]),
        .Q(addr[22]));
  FDCE \addr_r_reg[23] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[23]),
        .Q(addr[23]));
  FDCE \addr_r_reg[24] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[24]),
        .Q(addr[24]));
  FDCE \addr_r_reg[25] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[25]),
        .Q(addr[25]));
  FDCE \addr_r_reg[26] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[26]),
        .Q(addr[26]));
  FDCE \addr_r_reg[27] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[27]),
        .Q(addr[27]));
  FDCE \addr_r_reg[28] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[28]),
        .Q(addr[28]));
  FDCE \addr_r_reg[29] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[29]),
        .Q(addr[29]));
  FDCE \addr_r_reg[2] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[2]),
        .Q(addr[2]));
  FDCE \addr_r_reg[30] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[30]),
        .Q(addr[30]));
  FDCE \addr_r_reg[31] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[31]),
        .Q(addr[31]));
  FDCE \addr_r_reg[3] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[3]),
        .Q(addr[3]));
  FDCE \addr_r_reg[4] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[4]),
        .Q(addr[4]));
  FDCE \addr_r_reg[5] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[5]),
        .Q(addr[5]));
  FDCE \addr_r_reg[6] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[6]),
        .Q(addr[6]));
  FDCE \addr_r_reg[7] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[7]),
        .Q(addr[7]));
  FDCE \addr_r_reg[8] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[8]),
        .Q(addr[8]));
  FDCE \addr_r_reg[9] 
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(addr_i[9]),
        .Q(addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[0]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[0]),
        .I4(r_data[0]),
        .O(r_memory_data[0]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[100]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[26]),
        .I4(w_addr[14]),
        .O(r_memory_data[100]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[101]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[27]),
        .I4(w_addr[15]),
        .O(r_memory_data[101]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[102]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[28]),
        .I4(w_addr[16]),
        .O(r_memory_data[102]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[103]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[29]),
        .I4(w_addr[17]),
        .O(r_memory_data[103]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[104]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[30]),
        .I4(w_addr[18]),
        .O(r_memory_data[104]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[105]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[31]),
        .I4(w_addr[19]),
        .O(r_memory_data[105]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8C00)) 
    \r_memory_data[106]_INST_0 
       (.I0(CacheResult[107]),
        .I1(\CacheResult_r_reg_n_0_[106] ),
        .I2(p_1_in),
        .I3(p_3_in),
        .O(r_memory_data[106]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \r_memory_data[107]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .O(r_memory_data[107]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[10]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[10]),
        .I4(r_data[10]),
        .O(r_memory_data[10]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[11]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[11]),
        .I4(r_data[11]),
        .O(r_memory_data[11]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[12]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[12]),
        .I4(r_data[12]),
        .O(r_memory_data[12]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[13]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[13]),
        .I4(r_data[13]),
        .O(r_memory_data[13]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[14]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[14]),
        .I4(r_data[14]),
        .O(r_memory_data[14]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[15]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[15]),
        .I4(r_data[15]),
        .O(r_memory_data[15]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[16]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[16]),
        .I4(r_data[16]),
        .O(r_memory_data[16]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[17]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[17]),
        .I4(r_data[17]),
        .O(r_memory_data[17]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[18]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[18]),
        .I4(r_data[18]),
        .O(r_memory_data[18]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[19]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[19]),
        .I4(r_data[19]),
        .O(r_memory_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[1]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[1]),
        .I4(r_data[1]),
        .O(r_memory_data[1]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[20]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[20]),
        .I4(r_data[20]),
        .O(r_memory_data[20]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[21]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[21]),
        .I4(r_data[21]),
        .O(r_memory_data[21]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[22]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[22]),
        .I4(r_data[22]),
        .O(r_memory_data[22]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[23]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[23]),
        .I4(r_data[23]),
        .O(r_memory_data[23]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[24]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[24]),
        .I4(r_data[24]),
        .O(r_memory_data[24]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[25]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[25]),
        .I4(r_data[25]),
        .O(r_memory_data[25]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[26]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[26]),
        .I4(r_data[26]),
        .O(r_memory_data[26]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[27]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[27]),
        .I4(r_data[27]),
        .O(r_memory_data[27]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[28]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[28]),
        .I4(r_data[28]),
        .O(r_memory_data[28]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[29]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[29]),
        .I4(r_data[29]),
        .O(r_memory_data[29]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[2]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[2]),
        .I4(r_data[2]),
        .O(r_memory_data[2]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[30]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[30]),
        .I4(r_data[30]),
        .O(r_memory_data[30]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[31]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[31]),
        .I4(r_data[31]),
        .O(r_memory_data[31]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[32]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[32]),
        .I4(addr[12]),
        .O(r_memory_data[32]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[33]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[33]),
        .I4(addr[13]),
        .O(r_memory_data[33]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[34]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[34]),
        .I4(addr[14]),
        .O(r_memory_data[34]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[35]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[35]),
        .I4(addr[15]),
        .O(r_memory_data[35]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[36]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[36]),
        .I4(addr[16]),
        .O(r_memory_data[36]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[37]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[37]),
        .I4(addr[17]),
        .O(r_memory_data[37]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[38]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[38]),
        .I4(addr[18]),
        .O(r_memory_data[38]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[39]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[39]),
        .I4(addr[19]),
        .O(r_memory_data[39]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[3]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[3]),
        .I4(r_data[3]),
        .O(r_memory_data[3]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[40]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[40]),
        .I4(addr[20]),
        .O(r_memory_data[40]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[41]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[41]),
        .I4(addr[21]),
        .O(r_memory_data[41]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[42]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[42]),
        .I4(addr[22]),
        .O(r_memory_data[42]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[43]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[43]),
        .I4(addr[23]),
        .O(r_memory_data[43]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[44]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[44]),
        .I4(addr[24]),
        .O(r_memory_data[44]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[45]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[45]),
        .I4(addr[25]),
        .O(r_memory_data[45]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[46]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[46]),
        .I4(addr[26]),
        .O(r_memory_data[46]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[47]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[47]),
        .I4(addr[27]),
        .O(r_memory_data[47]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[48]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[48]),
        .I4(addr[28]),
        .O(r_memory_data[48]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[49]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[49]),
        .I4(addr[29]),
        .O(r_memory_data[49]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[4]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[4]),
        .I4(r_data[4]),
        .O(r_memory_data[4]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[50]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[50]),
        .I4(addr[30]),
        .O(r_memory_data[50]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[51]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[51]),
        .I4(addr[31]),
        .O(r_memory_data[51]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4C0C)) 
    \r_memory_data[52]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_2_in[52]),
        .I2(p_3_in),
        .I3(p_1_in),
        .O(r_memory_data[52]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_memory_data[53]_INST_0 
       (.I0(p_3_in),
        .I1(p_1_in),
        .O(r_memory_data[53]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[54]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[0]),
        .I4(\CacheResult_r_reg_n_0_[54] ),
        .O(r_memory_data[54]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[55]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[1]),
        .I4(\CacheResult_r_reg_n_0_[55] ),
        .O(r_memory_data[55]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[56]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[2]),
        .I4(\CacheResult_r_reg_n_0_[56] ),
        .O(r_memory_data[56]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[57]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[3]),
        .I4(\CacheResult_r_reg_n_0_[57] ),
        .O(r_memory_data[57]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[58]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[4]),
        .I4(\CacheResult_r_reg_n_0_[58] ),
        .O(r_memory_data[58]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[59]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[5]),
        .I4(\CacheResult_r_reg_n_0_[59] ),
        .O(r_memory_data[59]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[5]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[5]),
        .I4(r_data[5]),
        .O(r_memory_data[5]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[60]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[6]),
        .I4(\CacheResult_r_reg_n_0_[60] ),
        .O(r_memory_data[60]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[61]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[7]),
        .I4(\CacheResult_r_reg_n_0_[61] ),
        .O(r_memory_data[61]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[62]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[8]),
        .I4(\CacheResult_r_reg_n_0_[62] ),
        .O(r_memory_data[62]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[63]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[9]),
        .I4(\CacheResult_r_reg_n_0_[63] ),
        .O(r_memory_data[63]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[64]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[10]),
        .I4(\CacheResult_r_reg_n_0_[64] ),
        .O(r_memory_data[64]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[65]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[11]),
        .I4(\CacheResult_r_reg_n_0_[65] ),
        .O(r_memory_data[65]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[66]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[12]),
        .I4(\CacheResult_r_reg_n_0_[66] ),
        .O(r_memory_data[66]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[67]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[13]),
        .I4(\CacheResult_r_reg_n_0_[67] ),
        .O(r_memory_data[67]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[68]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[14]),
        .I4(\CacheResult_r_reg_n_0_[68] ),
        .O(r_memory_data[68]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[69]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[15]),
        .I4(\CacheResult_r_reg_n_0_[69] ),
        .O(r_memory_data[69]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[6]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[6]),
        .I4(r_data[6]),
        .O(r_memory_data[6]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[70]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[16]),
        .I4(\CacheResult_r_reg_n_0_[70] ),
        .O(r_memory_data[70]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[71]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[17]),
        .I4(\CacheResult_r_reg_n_0_[71] ),
        .O(r_memory_data[71]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[72]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[18]),
        .I4(\CacheResult_r_reg_n_0_[72] ),
        .O(r_memory_data[72]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[73]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[19]),
        .I4(\CacheResult_r_reg_n_0_[73] ),
        .O(r_memory_data[73]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[74]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[20]),
        .I4(\CacheResult_r_reg_n_0_[74] ),
        .O(r_memory_data[74]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[75]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[21]),
        .I4(\CacheResult_r_reg_n_0_[75] ),
        .O(r_memory_data[75]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[76]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[22]),
        .I4(\CacheResult_r_reg_n_0_[76] ),
        .O(r_memory_data[76]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[77]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[23]),
        .I4(\CacheResult_r_reg_n_0_[77] ),
        .O(r_memory_data[77]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[78]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[24]),
        .I4(\CacheResult_r_reg_n_0_[78] ),
        .O(r_memory_data[78]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[79]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[25]),
        .I4(\CacheResult_r_reg_n_0_[79] ),
        .O(r_memory_data[79]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[7]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[7]),
        .I4(r_data[7]),
        .O(r_memory_data[7]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[80]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[26]),
        .I4(\CacheResult_r_reg_n_0_[80] ),
        .O(r_memory_data[80]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[81]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[27]),
        .I4(\CacheResult_r_reg_n_0_[81] ),
        .O(r_memory_data[81]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[82]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[28]),
        .I4(\CacheResult_r_reg_n_0_[82] ),
        .O(r_memory_data[82]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[83]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[29]),
        .I4(\CacheResult_r_reg_n_0_[83] ),
        .O(r_memory_data[83]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[84]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[30]),
        .I4(\CacheResult_r_reg_n_0_[84] ),
        .O(r_memory_data[84]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[85]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(r_data[31]),
        .I4(\CacheResult_r_reg_n_0_[85] ),
        .O(r_memory_data[85]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[86]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[12]),
        .I4(w_addr[0]),
        .O(r_memory_data[86]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[87]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[13]),
        .I4(w_addr[1]),
        .O(r_memory_data[87]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[88]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[14]),
        .I4(w_addr[2]),
        .O(r_memory_data[88]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[89]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[15]),
        .I4(w_addr[3]),
        .O(r_memory_data[89]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[8]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[8]),
        .I4(r_data[8]),
        .O(r_memory_data[8]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[90]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[16]),
        .I4(w_addr[4]),
        .O(r_memory_data[90]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[91]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[17]),
        .I4(w_addr[5]),
        .O(r_memory_data[91]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[92]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[18]),
        .I4(w_addr[6]),
        .O(r_memory_data[92]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[93]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[19]),
        .I4(w_addr[7]),
        .O(r_memory_data[93]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[94]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[20]),
        .I4(w_addr[8]),
        .O(r_memory_data[94]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[95]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[21]),
        .I4(w_addr[9]),
        .O(r_memory_data[95]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[96]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[22]),
        .I4(w_addr[10]),
        .O(r_memory_data[96]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[97]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[23]),
        .I4(w_addr[11]),
        .O(r_memory_data[97]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[98]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[24]),
        .I4(w_addr[12]),
        .O(r_memory_data[98]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[99]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(addr[25]),
        .I4(w_addr[13]),
        .O(r_memory_data[99]));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \r_memory_data[9]_INST_0 
       (.I0(CacheResult[107]),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_2_in[9]),
        .I4(r_data[9]),
        .O(r_memory_data[9]));
  FDCE request_valid_r_reg
       (.C(CLK),
        .CE(request_valid_i),
        .CLR(\CacheResult_r[105]_i_1_n_0 ),
        .D(request_valid_i),
        .Q(request_valid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[0]_INST_0 
       (.I0(p_2_in[0]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[54] ),
        .O(w_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[10]_INST_0 
       (.I0(p_2_in[10]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[64] ),
        .O(w_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[11]_INST_0 
       (.I0(p_2_in[11]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[65] ),
        .O(w_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[12]_INST_0 
       (.I0(p_2_in[12]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[66] ),
        .O(w_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[13]_INST_0 
       (.I0(p_2_in[13]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[67] ),
        .O(w_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[14]_INST_0 
       (.I0(p_2_in[14]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[68] ),
        .O(w_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[15]_INST_0 
       (.I0(p_2_in[15]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[69] ),
        .O(w_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[16]_INST_0 
       (.I0(p_2_in[16]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[70] ),
        .O(w_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[17]_INST_0 
       (.I0(p_2_in[17]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[71] ),
        .O(w_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[18]_INST_0 
       (.I0(p_2_in[18]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[72] ),
        .O(w_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[19]_INST_0 
       (.I0(p_2_in[19]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[73] ),
        .O(w_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[1]_INST_0 
       (.I0(p_2_in[1]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[55] ),
        .O(w_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[20]_INST_0 
       (.I0(p_2_in[20]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[74] ),
        .O(w_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[21]_INST_0 
       (.I0(p_2_in[21]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[75] ),
        .O(w_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[22]_INST_0 
       (.I0(p_2_in[22]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[76] ),
        .O(w_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[23]_INST_0 
       (.I0(p_2_in[23]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[77] ),
        .O(w_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[24]_INST_0 
       (.I0(p_2_in[24]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[78] ),
        .O(w_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[25]_INST_0 
       (.I0(p_2_in[25]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[79] ),
        .O(w_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[26]_INST_0 
       (.I0(p_2_in[26]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[80] ),
        .O(w_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[27]_INST_0 
       (.I0(p_2_in[27]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[81] ),
        .O(w_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[28]_INST_0 
       (.I0(p_2_in[28]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[82] ),
        .O(w_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[29]_INST_0 
       (.I0(p_2_in[29]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[83] ),
        .O(w_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[2]_INST_0 
       (.I0(p_2_in[2]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[56] ),
        .O(w_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[30]_INST_0 
       (.I0(p_2_in[30]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[84] ),
        .O(w_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[31]_INST_0 
       (.I0(p_2_in[31]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[85] ),
        .O(w_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[3]_INST_0 
       (.I0(p_2_in[3]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[57] ),
        .O(w_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[4]_INST_0 
       (.I0(p_2_in[4]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[58] ),
        .O(w_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[5]_INST_0 
       (.I0(p_2_in[5]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[59] ),
        .O(w_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[6]_INST_0 
       (.I0(p_2_in[6]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[60] ),
        .O(w_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[7]_INST_0 
       (.I0(p_2_in[7]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[61] ),
        .O(w_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[8]_INST_0 
       (.I0(p_2_in[8]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[62] ),
        .O(w_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[9]_INST_0 
       (.I0(p_2_in[9]),
        .I1(\CacheResult_r_reg_n_0_[107] ),
        .I2(\CacheResult_r_reg_n_0_[63] ),
        .O(w_data[9]));
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
