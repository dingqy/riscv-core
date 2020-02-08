module ALUControl(
  input [6:0] aluop,
  input [2:0] funct3,
  input [6:0] funct7,
  output [10:0] controlResult
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  wire branch; // Branch instructions
  wire loadOrStore; // Load or Store instructions
  wire i_type; // I-type instruction
  wire r_type; // R-type instruction
  wire i_r_type; // I-type instruction or R-type instruction
  wire jump; // Jump Instruction
  wire jalr; // JALR Instruction
  wire shiftOp; // Shift Operation
  wire addOp; // Add Operation
  wire logicalOp; // Logical Operation
  wire mulOp; // Multiply, Divide, Remainder Operation
  wire sltOp; // SLT/SLTU Instruction
  wire logicalOrArith; // Logical shift or arithmatic shift

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The type of the instructions
  assign jump = aluop[6] & !aluop[2];
  assign branch = aluop[6] & aluop[2];
  assign loadOrStore = !aluop[6] & !aluop[4:2];
  assign i_type = aluop[5:4] == 2'b01 & aluop[2] == 1'b0;
  assign r_type = aluop[5:4] == 2'b11 & aluop[2] == 1'b0;
  assign i_r_type = i_type | r_type;
  assign logicalOp = i_r_type & (funct3[2:0] == 3'b111 | funct3[2:0] == 3'b110 | funct3[2:0] == 3'b100);
  assign shiftOp = i_r_type & (funct3[1:0] == 2'b01 & !funct7[0]);
  assign mulOp = r_type & funct7[0];
  assign sltOp = i_r_type & (funct3[2:0] == 3'b010 | funct3[2:0] == 3'b011);
  assign jalr = jump & !aluop[3];
  assign addOp = jump | (aluop[3:2] == 2'b01) | loadOrStore | (i_r_type & funct3 == 3'b000);
  assign logicalOrArith = !funct7[5];
  assign sltOp = i_r_type & (funct3 == 3'b010 | funct3 == 3'b011);
              
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Set the first five bits about instruction type
  assign controlResult = {addOp, branch, shiftOp, logicalOp, mulOp, sltOp, jalr, logicalOrArith, funct3};

endmodule // 