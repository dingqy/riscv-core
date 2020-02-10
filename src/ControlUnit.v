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
  output ALUSrc,
  output [1:0] RegSrc,
  output [2:0] LoadOrStoreTYPE,
  output [6:0] OP_output,
  output [2:0] Funct3_output,
  output [6:0] Funct7_output
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

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Determine the instruction type and some specfic instrution (ECALL/FENCE/EBREAK aren't included)
  assign OP_BTYPE = OP[6] & !OP[2];
  assign OP_JTYPE = OP[6] & OP[2] & OP[3];
  assign OP_ITYPE = (OP[6:5] == 2'b00) & (OP[3:2] == 2'b00);
  assign OP_STYPE = (OP[6:4] == 3'b010);
  assign OP_UTYPE = (OP[5:3] == 3'b101);
  assign OP_RTYPE = !(OP_BTYPE | OP_ITYPE | OP_JTYPE | OP_STYPE | OP_UTYPE);
  assign OP_JALR = OP[6] & OP[2] & !OP[3];
  assign OP_Load = OP_ITYPE & !OP[4];
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Generate control bit based on instruction type
  // RegSrc:
  //  U-type: RegSrc => 00       Data: {immediate, 12'b0}
  //  J-type/JALR: RegSrc => 01       Data: PC + 4
  //  Other instruction: RegSrc => 10       Data: result
  // ALUSrc:
  //  I-type: ALUSrc => 1       Data: immediate (signed extended)
  //  Other: ALUSrc => 0       Data: rs2
  // Branch:
  //  B-type: Branch => 1
  //  Other: Branch => 0
  // RegWrite:
  //  B-type/S-type: RegWrite => 1       (cann't write register)
  //  Other: RegWrite => 0
  // Jump:
  //  J-type/JALR: Jump => 1
  //  Other Jump => 0
  // JumpSrc:
  //  J-type: JumpSrc => 1       Data: immediate (signed extended) and PC
  //  JALR JumpSrc => 0       Data: immediate (signed extended) and rs1
  // MemtoReg:
  //  Load: MemtoReg => 1
  //  Other: MemtoReg => 0;
  // LoadOrStoreTYPE:
  //  LoadOrStoreTYPE => Funct3
  // MemWrite:
  //  S-type: MemWrite => 1
  //  Other: MemWrite => 0
  
  assign RegSrc = (OP_UTYPE) ? 2'b00 : 
                  (OP_JTYPE | OP_JALR) ? 2'b01 :
                  2'b10 ;
  assign ALUSrc = OP_ITYPE;
  assign Branch = OP_BTYPE;
  assign RegWrite = !(OP_BTYPE | OP_STYPE);
  assign Jump = OP_JTYPE | OP_JALR;
  assign OP_output = OP;
  assign Funct3_output = Funct3;
  assign Funct7_output = Funct7;
  assign LoadOrStoreTYPE = Funct3;
  assign MemtoReg = OP_Load;
  assign MemWrite = OP_STYPE;
  assign JumpSrc = OP_JTYPE;

endmodule //

