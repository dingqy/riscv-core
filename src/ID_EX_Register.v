module ID_EX_Register(
  input CLK,
  input RESET,
  input [31:0] SrcA_i,
  input [31:0] SrcB_i,
  input [20:0] EX_control_i,
  input [5:0] MEM_control_i,
  input [4:0] WB_control_i,
  input [31:0] U_type_immediate_i,
  input [31:0] JAL_immediate_i,
  input [31:0] I_type_immediate_i,
  input [4:0] RegDst_i,
  input [31:0] PC_i,
  output [20:0] EX_control,
  output [5:0] MEM_control,
  output [4:0] WB_control,
  output [31:0] U_type_immediate,
  output [31:0] JAL_immediate,
  output [31:0] I_type_immediate,
  output [4:0] RegDst,
  output [31:0] PC,
  output [31:0] SrcA,
  output [31:0] SrcB
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The source which is necessary for further operation in pipeline
  reg [31:0] SrcA_r;
  reg [31:0] SrcB_r;
  reg [31:0] PC_r;
  reg [31:0] I_type_immediate_r;
  reg [31:0] U_type_immediate_r;
  reg [31:0] JAL_immediate_r;
  reg [4:0] RegDst_r;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The Control logic which is necessary for further operation in pipeline
  //
  // EX_control:
  //  --------------------------------------------------------------------------
  //  |  [20:14]  |  [13:11]  |  [10:4]  |    [3]    |   [2:1]   |     [0]     |
  //  --------------------------------------------------------------------------
  //  |   Aluop   |  Funct3   |  Funct7  |  ALUSrcA  |  ALUSrcB  |  ALUResult  |
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
      JAL_immediate_r <= 32'b0;
      SrcB_r <= 32'b0;
      RegDst_r <= 5'b0;
      EX_control_r <= 21'b0;
      MEM_control_r <= 6'b0;
      WB_control_r <= 5'b0;
    end
    else begin
      SrcA_r <= SrcA_i;
      PC_r <= PC_i;
      I_type_immediate_r <= I_type_immediate_i;
      U_type_immediate_r <= U_type_immediate_i;
      JAL_immediate_r <= JAL_immediate_i;
      SrcB_r <= SrcB_i;
      RegDst_r <= RegDst_i;
      EX_control_r <= EX_control_i;
      MEM_control_r <= MEM_control_i;
      WB_control_r <= WB_control_i;
    end
  end

  assign SrcA = SrcA_r;
  assign PC = PC_r;
  assign I_type_immediate = I_type_immediate_r;
  assign U_type_immediate = U_type_immediate_r;
  assign JAL_immediate = JAL_immediate_r;
  assign SrcB = SrcB_r;
  assign RegDst = RegDst_r;
  assign EX_control = EX_control_r;
  assign MEM_control = MEM_control_r;
  assign WB_control = WB_control_r;

endmodule // 