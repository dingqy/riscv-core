module HazardUnit(
  input [4:0] RegSrcA_ID_EX,
  input [4:0] RegSrcB_ID_EX,
  input [4:0] RegDst_EX_MEM,
  input [4:0] RegDst_MEM_WB,
  input RegWrite_EX_MEM,
  input RegWrite_MEM_WB,
  input ALUSrcA,
  input [1:0] ALUSrcB,
  input MemRead,
  input [4:0] RegDst_ID_EX,
  input [4:0] RegSrcA_IF_ID,
  input [4:0] RegSrcB_IF_ID,
  output [1:0] ForwardA,
  output [1:0] ForwardB,
  output WriteEnable_IF_ID,
  output ControlLogicStall,
  output PCWriteEnable
);

  wire Stall;
  wire RegAForward;
  wire RegBForward;

  assign RegAForward = (ALUSrcA == 1'b1);
  assign RegBForward = (ALUSrcB == 2'b00);

  // If the instruction after load instruction read the register destination of former, the pipeline should be stall
  assign Stall = MemRead & ((RegSrcA_IF_ID == RegDst_ID_EX) | (RegSrcB_IF_ID == RegDst_ID_EX));

  // If rs1 is equal to rd in the previous one instruction, ForwardA will be 01
  // If rs1 is equal to rd in the previous two instruction, ForwardA will be 10
  assign ForwardA = ((RegSrcA_ID_EX == RegDst_EX_MEM) & RegWrite_EX_MEM & RegAForward) ? 2'b01 :
                    ((RegSrcA_ID_EX == RegDst_MEM_WB) & RegWrite_MEM_WB & RegAForward) ? 2'b10 :
                    2'b00;
  
  // If rs2 is equal to rd in the previous one instruction, ForwardA will be 01
  // If rs2 is equal to rd in the previous two instruction, ForwardA will be 10
  assign ForwardB = ((RegSrcB_ID_EX == RegDst_EX_MEM) & RegWrite_EX_MEM & RegBForward) ? 2'b01 :
                    ((RegSrcB_ID_EX == RegDst_MEM_WB) & RegWrite_MEM_WB & RegBForward) ? 2'b10 :
                    2'b00;

  assign PCWriteEnable = !Stall;
  assign ControlLogicStall = Stall;
  assign WriteEnable_IF_ID = !Stall;
endmodule // 