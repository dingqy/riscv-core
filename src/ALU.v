module ALU(
  input [31:0] a,
  input [31:0] b,
  input [10:0] aluop,
  output [31:0] result,
  output branchCmp,
  output zero_division,
  output overflow_signed_div
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
  wire signed [31:0] multiply1_signed; // Signed number of a
  wire signed [31:0] multiply2_signed; // Signed number of b
  wire overflow_div; // If a is -2^(L-1) and b is -1, it will overflow
  wire zero_div; // Divide Zero Exception
  wire [31:0] divResult; // The result of division
  wire division_remainder; // Determine whether the instruction is division and remiander or multiply
  wire remainder; // Determine whether the instruction is remainder
  wire [31:0] mul_div_rmdResult; // The final result of multiplication, division, and remainder
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Add or Sub (branch and slt also needs)
  assign n_b = ~b;
  assign addOrSub = (aluop[10]) ? b : n_b;
  assign {overflow, addResult} = a + addOrSub + !aluop[10];

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Logic operation 
  // aluop[2:0] 111 => a AND b
  // aluop[2:0] 110 => a OR b
  // aluop[2:0] 100 => a XOR b
  assign logicResult = (aluop[2:0] == 3'b111) ? a & b :
                       (aluop[2:0] == 3'b110) ? a | b :
                       (aluop[2:0] == 3'b100) ? a ^ b :
                                                    0 ;
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Shift 
  // aluop[2:0] 101 & aluop[3] 1 => logical right shift
  // aluop[2:0] 001 => logical left shift
  // aluop[2:0] 101 & aluop[3] 0 => arithmatic right shift
  assign shiftResult = (aluop[2:0] == 3'b101 & aluop[3]) ? a >> b[4:0] :
                       (aluop[2:0] == 3'b001) ? a << b[4:0] :
                       (aluop[2:0] == 3'b101 & !aluop[3]) ? ($signed(a)) >>> b[4:0] :
                       0 ;
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
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

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////                                                        
  // SLT / SLTU operation
  // aluop[0] 0 => signed comparison
  // aluop[0] 1 => unsigned comparison
  assign sltResult = (numberCmp & !aluop[0]) ? 1'b1 :
                     (unsignedBranch & aluop[0]) ? 1'b1 :
                                                      0 ;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  // JALR operation
  // aluop[4] 1 => JALR instruction
  assign addResult = (aluop[4]) ? {addResult[31:1], 1'b0} : addResult;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  // Multiply operation (May have problems)
  // aluop[2:0] 000 => MUL (two signed multiplication with lower 32 bits)
  // aluop[2:0] 001 => MUL (two signed multiplication with higher 32 bits)
  // aluop[2:0] 010 => MUL (signed (rs1) and unsigned (rs2) multiplication with higher 32 bits)
  // aluop[2:0] 011 => MUL (two unsigned multiplication with higher 32 bits)
  assign multiply1_signed = a;
  assign multiply2_signed = b;
  assign multiplyResult = (aluop[1:0] == 2'b00) ? multiply1_signed * multiply2_signed :
                          (aluop[1:0] == 2'b01) ? ((multiply1_signed * multiply2_signed) >> 32) :
                          (aluop[1:0] == 2'b10) ? ((multiply1_signed * b) >> 32) :
                          (aluop[1:0] == 2'b11) ? ((a * b) >> 32) :
                          0 ;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  // Multiply operation (May have problems)
  // Warning: It may be replaced by proper IP core if the speed of which is synthesized is too low.  
  // aluop[2:0] 100 => DIV (two signed division)
  // aluop[2:0] 101 => DIVU (two unsigned division)
  assign division_remainder = aluop[2];
  assign divideResult = a / b;
  assign zero_div = (divideResult === 32'bX) ? 1 : 0;
  assign overflow_div = (a[31] & b[31]) & !(a[30:0] & b[30:0]);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  // Multiply operation (May have problems)
  // aluop[2:0] 110 => REM (two signed division)
  // aluop[2:0] 111 => REMU (two unsigned division)  
  assign remainder = division_remainder & aluop[1];
  assign remainderResult = a % b;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Final Result
  assign mul_div_rmdResult = (!division_remainder) ? multiplyResult :
                             (remainder) ? remainderResult :
                             divideResult;
  assign result = (aluop[8]) ? shiftResult :
                  (aluop[7]) ? logicResult :
                  (aluop[6]) ? mul_div_rmdResult :
                  (aluop[5]) ? sltResult :
                  addResult ;
  assign branchCmp = branchResult;
  assign zero_division = zero_div;
  assign overflow_signed_div = overflow_div;

endmodule // 