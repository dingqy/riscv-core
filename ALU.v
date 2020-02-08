module ALU(
  input [31:0] a,
  input [31:0] b,
  input [10:0] aluop,
  output [31:0] result,
  output branchCmp
);

  // aluop: from ALUControl 
  // aluop[10] : add / aluop[9] : branch / aluop[8] : shift / aluop[7] : logic / aluop[6] : mul/div / aluop[5] : slt/sltu
  wire [31:0] addResult; // The result of add and sub operation
  wire [31:0] shiftResult; // The result of shift operation
  wire [31:0] logicResult; // The result of logic operation
  wire [31:0] multiplyResult; // The result of multiply operation
  wire [31:0] divideResult; // The result of divide operation
  wire [31:0] remainderResult; // The result of remainder operation
  wire [31:0] sltResult; // The result of slt operation
  wire branchResult; // The result of branch operation
  wire unsignedBranch_MSB; // Unsigned number comparison between the most siginificant bit
  wire unsignedBranch; // The result of unsigned comparison
  wire [31:0] n_b; // Negate b (used for sub operation)
  wire [31:0] addOrSub; // Choose whether the operation is add or sub
  wire overflow; // The overflow bit
  wire numberCmp; // The result of two signed numbers comparison
  wire branchEqual; // The result of whether two numbers are equal
  
  // Add or Sub (branch and slt also needs)
  assign n_b = ~b;
  assign addOrSub = (aluop[10]) ? b : n_b;
  assign {overflow, addResult} = a + addOrSub;

  // Logic operation 
  // aluop[2:0] 111 => a AND b
  // aluop[2:0] 110 => a OR b
  // aluop[2:0] 100 => a XOR b
  assign logicResult = (aluop[2:0] == 2'b111) ? a & b :
                       (aluop[2:0] == 2'b110) ? a | b :
                       (aluop[2:0] == 2'b100) ? a ^ b :
                                                    0 ;
  
  // Shift 
  // aluop[2:0] 101 & aluop[3] 1 => logical right shift
  // aluop[2:0] 001 => logical left shift
  // aluop[2:0] 101 & aluop[3] 0 => arithmatic right shift
  assign shiftResult = (aluop[2:0] == 2'b101 & aluop[3]) ? a >> b[4:0] :
                                  (aluop[2:0] == 2'b001) ? a << b[4:0] :
                     (aluop[2:0] == 2'b101 & !aluop[3]) ? a >>> b[4:0] :
                                                                     0 ;
  
  // Branch operation (a < b for signed and unsigned, directly connect to the funct3)
  // aluop[2:0] 000 => BEQ
  // aluop[2:0] 001 => BNE
  // aluop[2:0] 100 => BLT
  // aluop[2:0] 101 => BGE
  // aluop[2:0] 110 => BLTU
  // aluop[2:0] 111 => BGEU
  assign branchEqual = !addResult;
  assign unsignedBranch_MSB = a[31] ^ b[31];
  assign numberCmp = overflow | addResult[31];
  assign unsignedBranch = (unsignedBranch_MSB & b[31]) | (!unsignedBranch_MSB & numberCmp);
  assign branchResult = (aluop[2:0] == 3'b000) ? branchEqual :
                        (aluop[2:0] == 3'b001) ? !branchEqual :
                        (aluop[2:0] == 3'b100) ? numberCmp :
                        (aluop[2:0] == 3'b101) ? numberCmp :
                        (aluop[2:0] == 3'b110) ? unsignedBranch :
                        (aluop[2:0] == 3'b111) ? !unsignedBranch :
                                                                0 ;
                                                          
  // SLT / SLTU operation
  // aluop[0] 0 => signed comparison
  // aluop[0] 1 => unsigned comparison
  assign sltResult = (numberCmp & !aluop[0]) ? 1'b1 :
                     (unsignedBranch & aluop[0]) ? 1'b1 :
                                                      0 ;
    
  // JALR operation
  // aluop[4] 1 => JALR instruction
  assign addResult = (aluop[4]) ? {addResult[31:1], 1'b0} : addResult;

  // Final Result
  assign result = (aluop[8]) ? shiftResult :
                  (aluop[7]) ? logicResult :
                    (aluop[5]) ? sltResult :
                                 addResult ;
  assign branchCmp = branchResult;

endmodule // 