module ControlUnit(
  input [6:0] OP,
  input [2:0] Funct3,
  input [6:0] Funct7,
  output RegWrite,
  output MemWrite,
  output Jump,
  output JumpSrc,
  output MemtoReg,
  output Branch,
  output [1:0] ALUSrcB,
  output ALUResult,
  output ALUSrcA,
  output [1:0] RegSrc,
  output [2:0] LoadOrStoreTYPE
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Types of instreuction
  wire OP_ITYPE; // I-type instruction
  wire OP_RTYPE; // R-type instruction
  wire OP_STYPE; // S-type instruction
  wire OP_BTYPE; // B-type instruction
  wire OP_UTYPE; // U-type instruction
  wire OP_JTYPE; // J-type instruction
  wire OP_JALR; // JALR instruction
  wire OP_Load; // Load instruction
  wire OP_AUIPC; // AUIPC instruction

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Temp value
  // wire OP_AUIPC_JALR;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Determine the instruction type and some specfic instrution (ECALL/FENCE/EBREAK aren't included)
  assign OP_BTYPE = OP[6] & !OP[2];
  assign OP_JTYPE = OP[6] & OP[2] & OP[3];
  assign OP_ITYPE = (OP[6:5] == 2'b00) & (OP[3:2] == 2'b00);
  assign OP_STYPE = (OP[6:4] == 3'b010);
  assign OP_UTYPE = (OP[4:2] == 3'b101);
  assign OP_RTYPE = !(OP_BTYPE | OP_ITYPE | OP_JTYPE | OP_STYPE | OP_UTYPE);
  assign OP_JALR = OP[6] & OP[2] & !OP[3];
  assign OP_Load = OP_ITYPE & !OP[4];
  assign OP_AUIPC = OP_UTYPE & !OP[5];
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Generate control bit based on instruction type
  // RegSrc:
  //  U-type: RegSrc => 00       Data: {immediate, 12'b0} (has been extended)
  //  J-type/JALR: RegSrc => 01       Data: PC + 4
  //  Other instruction: RegSrc => 10       Data: result
  // ALUSrcB:
  //  AUIPC/LUI: ALUSrcB => 01       Data: immediate[31:12] (signed extended)
  //  JAL: ALUSrcB => 10       Data: immediate[20][10:1][11][19:12] (signed extended)
  //  I-type: ALUSrcB => 11       Data: immediate[11:0] (signed extended)
  //  Other: ALUSrcB => 00       Data: rs2
  // ALUSrcA:
  //  JAL/AUIPC: ALUSrcA => 0       Data: PC (for JAL/AUIPC instruction)
  //  Other: ALUSrcA => 1       Data: rs1
  // ALUResult:
  //  LUI: ALUResult => 0       Data: immediate[31:12] (signed extended)
  //  Other: ALUResult => 1       Data: ALUresult
  // Branch:
  //  B-type: Branch => 1
  //  Other: Branch => 0
  // RegWrite:
  //  B-type/S-type: RegWrite => 0       (needn't write register)
  //  Other: RegWrite => 1
  // Jump:
  //  J-type/JALR: Jump => 1
  //  Other Jump => 0
  // JumpSrc:
  //  J-type: JumpSrc => 1       Data: immediate (signed extended) and PC
  //  JALR/Other JumpSrc => 0       Data: immediate (signed extended) and rs1
  // MemtoReg:
  //  Load: MemtoReg => 1
  //  Other: MemtoReg => 0;
  // LoadOrStoreTYPE (used for differenet lw/sw bit operations):
  //  LoadOrStoreTYPE => Funct3
  // MemWrite:
  //  S-type: MemWrite => 1
  //  Other: MemWrite => 0
  
  assign RegSrc = (OP_UTYPE) ? 2'b00 : 
                  (OP_JTYPE | OP_JALR) ? 2'b01 :
                  2'b10 ;
  assign Branch = OP_BTYPE;
  assign RegWrite = !(OP_BTYPE | OP_STYPE);
  assign Jump = OP_JTYPE | OP_JALR;
  assign LoadOrStoreTYPE = Funct3;
  assign MemtoReg = OP_Load;
  assign MemWrite = OP_STYPE;
  assign JumpSrc = OP_JTYPE; // unknown
  assign ALUSrcA = !(OP_JTYPE | OP_AUIPC);
  assign ALUSrcB = (OP_UTYPE) ? 2'b01 :
                   (OP_JTYPE) ? 2'b10 :
                   (OP_ITYPE) ? 2'b11 :
                   2'b00;
  assign ALUResult = !(OP_UTYPE & !OP_AUIPC);
endmodule //

