module ID_EX_Register(
  input CLK,
  input RESET,
  input Enable,
  input [31:0] SrcA_i,
  input [31:0] SrcB_i,
  input [20:0] EX_control_i,
  input [6:0] MEM_control_i,
  input [3:0] WB_control_i,
  input [31:0] U_type_immediate_i,
  input [31:0] J_type_immediate_i,
  input [31:0] I_type_immediate_i,
  input [31:0] B_type_immediate_i,
  input [31:0] S_type_immediate_i,
  input [4:0] RegDst_i,
  input [31:0] PC_i,
  input ALUSrcB_S_type_i,
  input [4:0] RegisterRs1_i,
  input [4:0] RegisterRs2_i,
  output [20:0] EX_control,
  output [6:0] MEM_control,
  output [3:0] WB_control,
  output [31:0] U_type_immediate,
  output [31:0] J_type_immediate,
  output [31:0] I_type_immediate,
  output [4:0] RegDst,
  output [31:0] PC,
  output [31:0] SrcA,
  output [31:0] SrcB,
  output [31:0] B_type_immediate,
  output [31:0] S_type_immediate,
  output [4:0] RegisterRs1,
  output [4:0] RegisterRs2,
  output ALUSrcB_S_type
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The source which is necessary for further operation in pipeline
  reg [31:0] SrcA_r;
  reg [31:0] SrcB_r;
  reg [31:0] PC_r;
  reg [31:0] I_type_immediate_r;
  reg [31:0] U_type_immediate_r;
  reg [31:0] J_type_immediate_r;
  reg [4:0] RegDst_r;
  reg [31:0] S_type_immediate_r;
  reg [31:0] B_type_immediate_r;
  reg ALUSrcB_S_type_r;
  reg [4:0] RegisterRs1_r;
  reg [4:0] RegisterRs2_r;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The Control logic which is necessary for further operation in pipeline
  //
  // EX_control:
  //  --------------------------------------------------------------------------
  //  |  [20:14]  |  [13:11]  |  [10:4]  |    [3]    |   [2:1]   |     [0]     |
  //  --------------------------------------------------------------------------
  //  |   Aluop   |  Funct3   |  Funct7  |  ALUSrcA  |  ALUSrcB  |  ALUResultSrc|
  //  --------------------------------------------------------------------------
  //
  // MEM_control:
  //  --------------------------------------------------------------
  //  |   [6]    |  [5]   |    [4]    |   [3]    |      [2:0]      |  
  //  --------------------------------------------------------------
  //  | MemWrite |  Jump  |  JumpSrc  |  Branch  | LoadOrStoreTYPE |
  //  --------------------------------------------------------------
  //
  // WB_control:
  //  ------------------------------------
  //  |   [3]    |     [2]    |  [1:0]   |
  //  ------------------------------------
  //  | RegWrite |  MemtoReg  |  RegSrc  |
  //  ------------------------------------

  reg [20:0] EX_control_r;
  reg [6:0] MEM_control_r;
  reg [3:0] WB_control_r; 


  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      SrcA_r <= 32'b0;
      PC_r <= 32'b0;
      I_type_immediate_r <= 32'b0;
      U_type_immediate_r <= 32'b0;
      J_type_immediate_r <= 32'b0;
      SrcB_r <= 32'b0;
      RegDst_r <= 5'b0;
      EX_control_r <= 21'b0;
      MEM_control_r <= 7'b0;
      WB_control_r <= 4'b0;
      S_type_immediate_r <= 32'b0;
      B_type_immediate_r <= 32'b0;
      ALUSrcB_S_type_r <= 1'b0;
      RegisterRs1_r <= 5'b0;
      RegisterRs2_r <= 5'b0;
    end
    else if (Enable) begin
      SrcA_r <= SrcA_i;
      PC_r <= PC_i;
      I_type_immediate_r <= I_type_immediate_i;
      U_type_immediate_r <= U_type_immediate_i;
      J_type_immediate_r <= J_type_immediate_i;
      SrcB_r <= SrcB_i;
      RegDst_r <= RegDst_i;
      EX_control_r <= EX_control_i;
      MEM_control_r <= MEM_control_i;
      WB_control_r <= WB_control_i;
      S_type_immediate_r <= S_type_immediate_i;
      B_type_immediate_r <= B_type_immediate_i;
      ALUSrcB_S_type_r <= ALUSrcB_S_type_i;
      RegisterRs1_r <= RegisterRs1_i;
      RegisterRs2_r <= RegisterRs2_i;
    end
  end

  assign SrcA = SrcA_r;
  assign PC = PC_r;
  assign I_type_immediate = I_type_immediate_r;
  assign U_type_immediate = U_type_immediate_r;
  assign J_type_immediate = J_type_immediate_r;
  assign SrcB = SrcB_r;
  assign RegDst = RegDst_r;
  assign EX_control = EX_control_r;
  assign MEM_control = MEM_control_r;
  assign WB_control = WB_control_r;
  assign S_type_immediate = S_type_immediate_r;
  assign B_type_immediate = B_type_immediate_r;
  assign ALUSrcB_S_type = ALUSrcB_S_type_r;
  assign RegisterRs2 = RegisterRs2_r;
  assign RegisterRs1 = RegisterRs1_r;

endmodule // 