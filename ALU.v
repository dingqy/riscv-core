module ALU(
  input [31:0] a,
  input [31:0] b,
  input [6:0] aluop,
  input [2:0] funct3,
  input [6:0] funct7,
  output [31:0] result,
  output branchCmp
);

  wire branchOrJump; // The bit determine whether the instruction is branch operation
  wire branch; // Branch operation
  wire ldOrSd; // Load or Store instruction
  wire i_type_base; // I-type instruction
  wire r_type_base; // R-type instruction
  wire logicalOp; // Logical calculation instruction
  wire [31:0] arithmaticResult; // The result of the arithmatic operation
  wire [31:0] logicResult; // The result of the logic operation
  wire overflow; // The overflow bit when calculation
  wire [31:0] n_b; // Negative of b
  wire [31:0] addOrSub; // Determine whether the operation needs add or sub
  wire unsignedComparison; // Compare unsigned numbers
  wire unsignedComparison_MSB; // Compare the MSB of two numbers
  wire branchequal; // if the result is equal, it will be set to 1
  wire i_r_type_base; // if the operation is i-type or r-type
  wire slt; // The slti, slt operation
  wire sltu; // The sltu, sltiu operation
  wire [31:0] shiftResult;
  wire [31:0] addResult;
  wire shift;

  // Determine the type of the instruction
  assign branchOrJump = aluop[6];
  assign ldOrSd = (aluop[6] == 1'b0 & aluop[4:2] == 3'b000);
  assign i_type_base = (aluop[6:2] == 5'b00100);
  assign r_type_base = (aluop[6:2] == 5'b01100);
  assign logicalOp = (funct3[2] == 1'b1 & funct3[1:0] != 2'b01);
  assign branch = branchOrJump & aluop[2] == 1'b0;
  assign slt = i_r_type_base & funct3[2:0] == 3'b010;
  assign sltu = i_r_type_base & funct3[2:0] == 3'b011;
  assign shift = funct3[2:0] == 3'b101 | funct3[2:0] == 3'b001;

  // Arithmatic calculation
  assign addOrSub = (ldOrSd | (i_type_base & funct3[2:0] == 3'b000) | (r_type_base & funct3[2:0] == 3'b000 & funct7[5] == 1'b0) | (aluop[6:2] == 5'b00101)) ? b : n_b;
  assign {overflow, addResult} = a + addOrSub;
  assign shiftResult = (i_r_type_base & funct3[2:0] == 3'b001) ? a << b[4:0] :
                       (i_r_type_base & funct3[2:0] == 3'b101 & funct7[5] == 1'b1) ? a >>> b[4:0] :
                       (i_r_type_base & funct3[2:0] == 3'b101 & funct7[5] == 1'b0) ? a >> b[4:0]  :
                                                                                                 0;
  assign arithmaticResult = (i_r_type_base & shift) ? shiftResult : addResult;

  // Comparison (a < b)
  assign unsignedComparison_MSB = a[31] ^ b[31];
  assign unsignedComparison = (!unsignedComparison_MSB & ((arithmaticResult[31] & !overflow) | (!arithmaticResult[31] & overflow))) & (unsignedComparison_MSB & b[31] == 1'b1);
  assign branchequal = !overflow & !arithmaticResult;
  
  // Logical operation
  assign i_r_type_base = (i_type_base | r_type_base);
  assign logicResult = (i_r_type_base & funct3[2:0] == 3'b111) ? a & b :
                       (i_r_type_base & funct3[2:0] == 3'b110) ? a | b :
                       (i_r_type_base & funct3[2:0] == 3'b100) ? a ^ b :
                                                                     0 ;

  // Final result
  assign result = (slt) ? {31'b0, arithmaticResult[31]} : 
                  (sltu) ? {31'b0, unsignedComparison} :
                  (i_r_type_base & logicalOp) ? logicResult : arithmaticResult;
  assign branchCmp = (branch & funct3[2:0] == 1'b000) ? branchequal :
                     (branch & funct3[2:0] == 1'b001) ? !branchequal :                                                   
                     (branch & funct3[2:0] == 1'b100) ? arithmaticResult[31] :
                     (branch & funct3[2:0] == 1'b101) ? !arithmaticResult[31] :
                     (branch & funct3[2:0] == 1'b110) ? unsignedComparison :
                     (branch & funct3[2:0] == 1'b111) ? !unsignedComparison :
                                                                          0;
  

endmodule // 