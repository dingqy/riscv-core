module EX_MEM_Register(
  input CLK,
  input RESET,
  input [6:0] MEM_control_i,
  input [3:0] WB_control_i,
  input [31:0] ALUResult_i,
  input [31:0] StoreData_i,
  input branchCmp_i,
  input zero_division_i,
  input overflow_signed_div_i,
  input [4:0] RegDst_i,
  input [31:0] PC_i,
  input [31:0] BranchTargetAddress_i,
  output [3:0] WB_control,
  output [31:0] ALUResult,
  output [31:0] StoreData,
  output branchCmp,
  output zero_division,
  output overflow_signed_div,
  output [4:0] RegDst,
  output [31:0] PC,
  output [6:0] MEM_control,
  output [31:0] BranchTargetAddress
);

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The source which is necessary for further operation in pipeline
  reg [31:0] ALUResult_r;
  reg [31:0] StoreData_r;
  reg branchCmp_r;
  reg zero_division_r;
  reg [4:0] RegDst_r;
  reg overflow_signed_div_r;
  reg [31:0] PC_r;
  reg [31:0] BranchTargetAddress_r;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The Control logic which is necessary for further operation in pipeline
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
  reg [6:0] MEM_control_r;
  reg [3:0] WB_control_r;


  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      MEM_control_r <= 7'b0;
      WB_control_r <= 4'b0;
      ALUResult_r <= 32'b0;
      StoreData_r <= 32'b0;
      branchCmp_r <= 1'b0;
      zero_division_r <= 1'b0;
      overflow_signed_div_r <= 1'b0;
      RegDst_r <= 5'b0;
      PC_r <= 32'b0;
      BranchTargetAddress_r <= 32'b0;
    end
    else begin
      MEM_control_r <= MEM_control_i;
      WB_control_r <= WB_control_i;
      ALUResult_r <= ALUResult_i;
      StoreData_r <= StoreData_i;
      branchCmp_r <= branchCmp_i;
      zero_division_r <= zero_division_i;
      overflow_signed_div_r <= overflow_signed_div_i;
      RegDst_r <= RegDst_i;
      PC_r <= PC_i;
      BranchTargetAddress_r <= BranchTargetAddress_i;
    end
  end

  assign MEM_control = MEM_control_r;
  assign WB_control = WB_control_r;
  assign ALUResult = ALUResult_r;
  assign StoreData = StoreData_r;
  assign branchCmp = branchCmp_r;
  assign zero_division = zero_division_r;
  assign overflow_signed_div = overflow_signed_div_r;
  assign RegDst = RegDst_r;
  assign PC = PC_r;
  assign MEM_control = MEM_control_r;
  assign BranchTargetAddress = BranchTargetAddress_r;

endmodule // 