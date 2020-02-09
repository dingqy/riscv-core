module ControlUnit(
  input [6:0] opcode,
  input [2:0] funct3,
  input [6:0] funct7,
  output RegWrite,
  output [10:0] ALUControl,
  output MemWrite,
  output Jump,
  output MemtoReg,
  output branch,
  output RegDst
);

endmodule //

