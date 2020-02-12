module EX_MEM_Register(
  input CLK,
  input RESET,
  input [5:0] MEM_control_i,
  input [4:0] WB_control_i,
  input [31:0] ALUResult_i,
  input [31:0] StoreData_i,
  input branchCmp_i,
  input zero_division_i,
  input overflow_signed_div_i,
  input [4:0] RegDst_i,
  output [4:0] WB_control,
  output [31:0] ALUResult,
  output [31:0] StoreData,
  output branchCmp,
  output zero_division,
  output overflow_signed_div,
  output [4:0] RegDst
);

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The source which is necessary for further operation in pipeline
  reg [31:0] ALUResult_r;
  reg [31:0] StoreData_r;
  reg branchCmp_r;
  reg zero_division_r;
  reg [4:0] RegDst_r;
  reg overflow_signed_div_r;

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
  reg [5:0] MEM_control_r;
  reg [4:0] WB_control_r;


  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      MEM_control_r <= 6'b0;
      WB_control_r <= 5'b0;
      ALUResult_r <= 32'b0;
      StoreData_r <= 32'b0;
      branchCmp_r <= 1'b0;
      zero_division_r <= 1'b0;
      overflow_signed_div_r <= 1'b0;
      RegDst_r <= 5'b0;
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

endmodule // 