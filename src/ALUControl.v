module ALUControl(
  input [6:0] Aluop,
  input [2:0] Funct3,
  input [6:0] Funct7,
  output [10:0] ControlResult
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
  assign jump = Aluop[6] & !Aluop[2];
  assign branch = Aluop[6] & Aluop[2];
  assign loadOrStore = !Aluop[6] & !Aluop[4:2];
  assign i_type = Aluop[5:4] == 2'b01 & Aluop[2] == 1'b0;
  assign r_type = Aluop[5:4] == 2'b11 & Aluop[2] == 1'b0;
  assign i_r_type = i_type | r_type;
  assign logicalOp = i_r_type & (Funct3[2:0] == 3'b111 | Funct3[2:0] == 3'b110 | Funct3[2:0] == 3'b100);
  assign shiftOp = i_r_type & (Funct3[1:0] == 2'b01 & !Funct7[0]);
  assign mulOp = r_type & Funct7[0];
  assign sltOp = i_r_type & (Funct3[2:0] == 3'b010 | Funct3[2:0] == 3'b011);
  assign jalr = jump & !Aluop[3];
  assign addOp = jump | (Aluop[3:2] == 2'b01) | loadOrStore | (i_r_type & Funct3 == 3'b000);
  assign logicalOrArith = !Funct7[5];
  assign sltOp = i_r_type & (Funct3 == 3'b010 | Funct3 == 3'b011);
              
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Set the first five bits about instruction type
  assign ControlResult = {addOp, branch, shiftOp, logicalOp, mulOp, sltOp, jalr, logicalOrArith, Funct3};

endmodule // 