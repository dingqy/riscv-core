module MEM_WB_Register(
  input [4:0] WB_control_i,
  input [4:0] RegDst_i,
  input [31:0] ReadData_i,
  input [31:0] ALUResult_i,
  input [31:0] U_type_immediate_i,
  input [31:0] PC_i,
  output [4:0] WB_control,
  output [4:0] RegDst,
  output [31:0] ReadData,
  output [31:0] ALUResult,
  output [31:0] U_type_immediate,
  output [31:0] PC,
  input CLK,
  input RESET
);

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The source which is necessary for further operation in pipeline
  reg [4:0] RegDst_r;
  reg [31:0] ReadData_r;
  reg [31:0] ALUResult_r;
  reg [31:0] U_type_immediate_r;
  reg [31:0] PC_r;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The Control logic which is necessary for further operation in pipeline
  //
  // WB_control:
  //  ------------------------------------
  //  |   [3]    |     [2]    |  [1:0]   |
  //  ------------------------------------
  //  | RegWrite |  MemtoReg  |  RegSrc  |
  //  ------------------------------------
  reg [4:0] WB_control_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      WB_control_r <= 5'b0;
      RegDst_r <= 5'b0;
      ReadData_r <= 31'b0;
      ALUResult_r <= 31'b0;
      PC_r <= 32'b0;
      U_type_immediate_r <= 32'b0;
    end
    else begin
      WB_control_r <= WB_control_i;
      RegDst_r <= RegDst_i;
      ReadData_r <= ReadData_i;
      ALUResult_r <= ALUResult_i;
      PC_r <= PC_i;
      U_type_immediate_r <= 32'b0;
    end
  end

  assign WB_control = WB_control_r;
  assign RegDst = RegDst_r;
  assign ReadData = ReadData_r;
  assign ALUResult = ALUResult_r;
  assign PC = PC_r;
  assign U_type_immediate = U_type_immediate_r;

endmodule // 