`timescale 1ns / 1ps

module CoreTop(
  input CLK,
  input RESET,
  output [31:0] DATA,
  output [31:0] ADDRESS
);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Wire and register definition
  // Program Counter 
  reg [31:0] PC; // The current Program Counter (PC) value
  wire [31:0] PCPlus4; // The current PC plus 4 (Next instruction address)
  wire [31:0] PCBranch; // The branch target of PC
  wire [31:0] PCJump;
  wire [31:0] PCResult; // The result of next PC value
  wire PCSrc; // Determine whether the next PC should be PCJump or PC + 4
  wire [31:0] BranchTargetAddress; // The target brach address

  // PC related register data
  wire [31:0] BranchTargetAddress_EX_MEM; // The target branch address given by EX_MEM register
  wire PC_IF_ID; 
  wire PC_ID_EX;
  wire PC_EX_MEM;
  wire PC_MEM_WB;
  wire WrtieEnable_IF_ID;

  // Instruction definition
  wire [31:0] Instr;
  wire [4:0] RegDst;
  wire [31:0] SignImmediate_U_type;
  wire [31:0] SignImmediate_I_type;
  wire [31:0] SignImmediate_S_type;
  wire [31:0] SignImmediate_B_type;
  wire [19:0] SignImmediate_B_type_temp; // Used to store 20 bits (temporarily)
  wire [31:0] SignImmediate_J_type;
  wire [19:0] SignImmediate_J_type_temp; // Used to store 20 bits (temporarily)
  wire PCWriteEnable;

  // Instruction related register data
  wire [31:0] Instr_IF_ID;
  wire [31:0] SignImmediate_U_type_ID_EX;
  wire [31:0] SignImmediate_I_type_ID_EX;
  wire [31:0] SignImmediate_S_type_ID_EX;
  wire [31:0] SignImmediate_B_type_ID_EX;
  wire [31:0] SignImmediate_J_type_ID_EX;
  wire [4:0] RegDst_ID_EX;
  wire [4:0] RegDst_EX_MEM;
  wire [4:0] RegDst_MEM_WB;

  // ALU definition
  wire [31:0] SrcA;
  wire [31:0] SrcB;
  wire [31:0] SrcA_ID_EX;
  wire [31:0] SrcAResult;
  wire [31:0] SrcAForwardResult;
  wire [31:0] SrcB_ID_EX;
  wire [31:0] SrcBResult;
  wire [31:0] SrcBForwardResult;
  wire [31:0] ALUResult;
  wire branchCmp;
  wire zero_division;
  wire overflow_signed_div;
  wire [10:0] ALUControl;
  wire [31:0] OperationResult; // The final result of ALU
  wire [5:0] RegisterRs1_ID_EX;
  wire [5:0] RegisterRs2_ID_EX;
  wire [1:0] ForwardA;
  wire [1:0] ForwardB;

  // ALU related register data
  wire [31:0] ALUResult_EX_MEM;
  wire [31:0] ALUResult_MEM_WB;

  // Data memory
  wire [31:0] ReadData;

  // Data memory register related data
  wire [31:0] WriteData_EX_MEM;
  wire [31:0] ReadData_MEM_WB;
  wire [31:0] WriteAddress_EX_MEM;

  // Write Back
  wire [31:0] WBResult;
  wire [31:0] RegWriteResult;

  // Control Logic
  wire MemWrite;
  wire Jump;
  wire MemtoReg;
  wire Branch;
  wire [1:0] ALUSrcB;
  wire ALUSrcB_S_type;
  wire ALUResultSrc;
  wire ALUSrcA;
  wire [1:0] RegSrc;
  wire [2:0] LoadOrStoreTYPE;
  wire RegWrite;
  wire [20:0] EX_control;
  wire [6:0] MEM_control;
  wire [3:0] WB_control;
  wire ControlLogicStall;
  wire [20:0] EX_controlResult;
  wire [6:0] MEM_controlResult;
  wire [3:0] WB_controlResult;

  // Control logic register related data
  wire ALUSrcB_S_type_ID_EX;
  wire [20:0] EX_control_ID_EX;
  wire [6:0] MEM_control_ID_EX;
  wire [6:0] MEM_control_EX_MEM;
  wire [3:0] WB_control_ID_EX;
  wire [3:0] WB_control_EX_MEM;
  wire [3:0] WB_control_MEM_WB;
  wire branchCmp_EX_MEM;
  wire zero_division_EX_MEM;
  wire overflow_signed_div_EX_MEM;


  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // The main part of the processor

  // Fetch instruction stage
  // Program Counter
  always @ (posedge CLK, negedge RESET) begin
    if (RESET == 1'b0) PC <= 32'h00002FFC;
    else if (PCWriteEnable == 1'b1) PC <= PCResult;
  end
  assign PCPlus4 = PC + 4;
  assign PCResult = (Branch & branchCmp_EX_MEM) ? BranchTargetAddress_EX_MEM :
                    (Jump) ? ALUResult_EX_MEM :
                    PCPlus4;

  // Instruction memory
  InstructionMemory instructionMemory(
    .A(PC[7:2]),
    .RD(Instr)
  );

  // IF/ID Register
  IF_ID_Register reg1(
    .CLK(CLK),
    .RESET(RESET),
    .PC(PC),
    .Instr(Instr),
    .PC_o(PC_IF_ID),
    .Instr_o(Instr_IF_ID)
  );

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Decode instruction stage
  // Control Logic 
  ControlUnit controlUnit(
    .OP(Instr_IF_ID[6:0]),
    .Funct3(Instr_IF_ID[14:12]),
    .Funct7(Instr_IF_ID[31:25]),
    .EX_control(EX_control),
    .MEM_control(MEM_control),
    .WB_control(WB_control),
    .ALUSrcB_S_type(ALUSrcB_S_type)
  );

  // Register file
  RegisterFile reg2(
    .A1(Instr_IF_ID[19:15]),
    .A2(Instr_IF_ID[24:20]),
    .A3(RegDst_MEM_WB),
    .WD3(RegWriteResult),
    .RegWrite(RegWrite),
    .CLK(CLK),
    .RESET(RESET),
    .RD1(SrcA),
    .RD2(SrcB)
  );

  // Different sign extended immediate values
  assign SignImmediate_I_type = {{20{Instr_IF_ID[31]}}, Instr_IF_ID[31:20]};
  assign SignImmediate_J_type_temp = {Instr_IF_ID[31], Instr_IF_ID[19:12], Instr_IF_ID[20], Instr_IF_ID[30:21], 1'b0};
  assign SignImmediate_J_type = {{12{SignImmediate_J_type_temp[19]}}, SignImmediate_J_type_temp};
  assign SignImmediate_U_type = {{12{Instr_IF_ID[31]}}, Instr_IF_ID[31:12]};
  assign SignImmediate_S_type = {{12{Instr_IF_ID[31]}}, Instr_IF_ID[31:25], Instr_IF_ID[11:7]};
  assign SignImmediate_B_type_temp = {Instr_IF_ID[31], Instr_IF_ID[7], Instr_IF_ID[30:25], Instr_IF_ID[11:8], 1'b0};
  assign SignImmediate_B_type = {{12{SignImmediate_B_type_temp[19]}}, SignImmediate_B_type_temp};

  assign EX_controlResult = ControlLogicStall ? 0 : EX_control;
  assign MEM_controlResult = ControlLogicStall ? 0 : MEM_control;
  assign WB_controlResult = ControlLogicStall ? 0 : WB_control;

  // ID/EX register
  ID_EX_Register reg3(
    .CLK(CLK),
    .RESET(RESET),
    .SrcA_i(SrcA),
    .SrcB_i(SrcB),
    .EX_control_i(EX_controlResult),
    .MEM_control_i(MEM_controlResult),
    .WB_control_i(WB_controlResult),
    .U_type_immediate_i(SignImmediate_U_type),
    .J_type_immediate_i(SignImmediate_J_type),
    .I_type_immediate_i(SignImmediate_I_type),
    .B_type_immediate_i(SignImmediate_B_type),
    .S_type_immediate_i(SignImmediate_S_type),
    .RegDst_i(Instr_IF_ID[11:7]),
    .PC_i(PC_IF_ID),
    .EX_control(EX_control_ID_EX),
    .MEM_control(MEM_control_ID_EX),
    .WB_control(WB_control_ID_EX),
    .U_type_immediate(SignImmediate_U_type_ID_EX),
    .J_type_immediate(SignImmediate_J_type_ID_EX),
    .I_type_immediate(SignImmediate_I_type_ID_EX),
    .RegDst(RegDst_ID_EX),
    .PC(PC_ID_EX),
    .SrcA(SrcA_ID_EX),
    .SrcB(SrcB_ID_EX),
    .B_type_immediate(SignImmediate_B_type_ID_EX),
    .S_type_immediate(SignImmediate_S_type_ID_EX),
    .ALUSrcB_S_type(ALUSrcB_S_type_ID_EX),
    .ALUSrcB_S_type_i(ALUSrcB_S_type),
    .RegisterRs1_i(Instr_IF_ID[19:15]),
    .RegisterRs2_i(Instr_IF_ID[24:20]),
    .RegisterRs1(RegisterRs1_ID_EX),
    .RegisterRs2(RegisterRs2_ID_EX),
    .Enable(WrtieEnable_IF_ID)
  );

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Execution stage
  // ALU Source
  assign ALUSrcA = EX_control_ID_EX[3];
  assign ALUSrcB = EX_control_ID_EX[2:1];
  assign ALUResultSrc = EX_control_ID_EX[0];
  assign SrcAResult = ALUSrcA ? SrcA_ID_EX : PC_ID_EX;
  assign SrcBResult = (ALUSrcB == 2'b01) ? SignImmediate_U_type_ID_EX :
                      (ALUSrcB == 2'b10) ? SignImmediate_J_type_ID_EX :
                      (ALUSrcB == 2'b11) ? SignImmediate_I_type_ID_EX :
                      (ALUSrcB_S_type_ID_EX) ? SignImmediate_S_type_ID_EX :
                      SrcB_ID_EX;
  assign SrcAForwardResult = (ForwardA == 2'b01) ? ALUResult_EX_MEM :
                             (ForwardA == 2'b10) ? WBResult :
                             SrcAResult;
  assign SrcBForwardResult = (ForwardB == 2'b01) ? ALUResult_EX_MEM :
                             (ForwardB == 2'b10) ? WBResult :
                             SrcBResult;
                             

  // ALU control logic
  ALUControl alucontrol(
    .Aluop(EX_control_ID_EX[20:14]),
    .Funct3(EX_control_ID_EX[13:11]),
    .Funct7(EX_control_ID_EX[10:4]),
    .ControlResult(ALUControl)
  );

  // ALU
  ALU alu(
    .a(SrcAForwardResult),
    .b(SrcBForwardResult),
    .aluop(ALUControl),
    .result(ALUResult),
    .branchCmp(branchCmp),
    .zero_division(zero_division),
    .overflow_signed_div(overflow_signed_div)
  );

  // ALU Result determination (LUI or Others)
  assign OperationResult = ALUResultSrc ? ALUResult : {SignImmediate_U_type_ID_EX[19:0], 12'b0};

  // Calculate branch target address
  assign BranchTargetAddress = SignImmediate_B_type_ID_EX + PC_ID_EX;

  // EX/MEM register
  EX_MEM_Register reg4(
    .CLK(CLK),
    .RESET(RESET),
    .MEM_control_i(MEM_control_ID_EX),
    .WB_control_i(WB_control_ID_EX),
    .ALUResult_i(OperationResult),
    .StoreData_i(SrcB_ID_EX),
    .branchCmp_i(branchCmp),
    .zero_division_i(zero_division),
    .overflow_signed_div_i(overflow_signed_div),
    .RegDst_i(RegDst_ID_EX),
    .PC_i(PC_ID_EX),
    .WB_control(WB_control_EX_MEM),
    .ALUResult(ALUResult_EX_MEM),
    .StoreData(WriteData_EX_MEM),
    .branchCmp(branchCmp_EX_MEM),
    .zero_division(zero_division_EX_MEM),
    .overflow_signed_div(overflow_signed_div_EX_MEM),
    .RegDst(RegDst_EX_MEM),
    .PC(PC_EX_MEM),
    .MEM_control(MEM_control_EX_MEM),
    .BranchTargetAddress_i(BranchTargetAddress),
    .BranchTargetAddress(BranchTargetAddress_EX_MEM)
  );

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Memory Stage
  // Control logic renaming
  assign MemWrite = MEM_control_EX_MEM[6];
  assign Jump = MEM_control_EX_MEM[5];
  assign Branch = MEM_control_EX_MEM[3];
  assign LoadOrStoreTYPE = MEM_control_EX_MEM[2:0];

  // Data memory
  DataMemory datamemory(
    .CLK(CLK),
    .A(ALUResult_EX_MEM),
    .WE(MemWrite),
    .WD(WriteData_EX_MEM),
    .RD(ReadData)
  );

  // MEM/WB Register
  MEM_WB_Register reg5(
    .WB_control_i(WB_control_EX_MEM),
    .RegDst_i(RegDst_EX_MEM),
    .ReadData_i(ReadData),
    .ALUResult_i(ALUResult_EX_MEM),
    .WB_control(WB_control_MEM_WB),
    .RegDst(RegDst_MEM_WB),
    .ReadData(ReadData_MEM_WB),
    .ALUResult(ALUResult_MEM_WB),
    .PC_i(PC_EX_MEM),
    .PC(PC_MEM_WB),
    .CLK(CLK),
    .RESET(RESET)
  );

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // WB control logic renaming
  assign RegWrite = WB_control_MEM_WB[3];
  assign MemtoReg = WB_control_MEM_WB[2];
  assign RegSrc = WB_control_MEM_WB[1:0];

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Write Back Stage
  assign WBResult = MemtoReg ? ReadData_MEM_WB : ALUResult_MEM_WB;
  assign RegWriteResult = (RegSrc == 2'b01) ? PC_MEM_WB + 4 :
                          WBResult;

  // Hazard Unit (including all the stages)
  HazardUnit hazardUnit(
    .RegSrcA_ID_EX(RegisterRs1_ID_EX),
    .RegSrcB_ID_EX(RegisterRs2_ID_EX),
    .RegDst_EX_MEM(RegDst_EX_MEM),
    .RegDst_MEM_WB(RegDst_MEM_WB),
    .RegWrite_EX_MEM(WB_control_EX_MEM[3]),
    .RegWrite_MEM_WB(RegWrite),
    .ALUSrcA(EX_control_ID_EX[3]),
    .ALUSrcB(EX_control_ID_EX[2:1]),
    .MemRead(MEM_control_ID_EX[6]),
    .RegDst_ID_EX(RegDst_ID_EX),
    .RegSrcA_IF_ID(Instr_IF_ID[19:15]),
    .RegSrcB_IF_ID(Instr_IF_ID[24:20]),
    .ForwardA(ForwardA),
    .ForwardB(ForwardB),
    .WriteEnable_IF_ID(WrtieEnable_IF_ID),
    .ControlLogicStall(ControlLogicStall),
    .PCWriteEnable(PCWriteEnable)
  );

  // Debug output
  assign DATA = WBResult;
  assign ADDRESS = RegDst_MEM_WB;
                         
endmodule //
