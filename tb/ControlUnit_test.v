`timescale 1ns / 1ps

module ControlUnit_test;

  reg [6:0] Aluop;
  reg [2:0] Funct3;
  reg [6:0] Funct7;

  wire [3:0] RegWrite;
  wire [3:0] MemWrite;
  wire [3:0] Jump;
  wire [3:0] JumpSrc;
  wire [3:0] MemtoReg;
  wire [3:0] Branch;
  wire [3:0] ALUSrcB;
  wire [3:0] ALUResult;
  wire [3:0] ALUSrcA;
  wire [3:0] RegSrc;
  wire [3:0] LoadOrStoreTYPE;

  reg clk;

  reg [43:0] exp_result;

  wire [43:0] result; 

  reg [10:0] vec_cnt, err_cnt;

  reg [63:0] testvec [50:0];

  assign result = {3'b0, RegWrite[0], 3'b0, MemWrite[0], 3'b0, Jump[0], 3'b0, JumpSrc[0], 3'b0, MemtoReg[0], 3'b0, Branch[0], 2'b0, ALUSrcB[1:0], 3'b0, ALUResult[0], 3'b0, ALUSrcA[0], 2'b0, RegSrc[1:0], 1'b0, LoadOrStoreTYPE[2:0]};

  always begin
    clk = 1; #50;
    clk = 0; #50;
  end

  initial
  begin
    $readmemh("C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/tb/ControlUnit_test_vectors_hex.txt",testvec); 
    err_cnt = 0;
    vec_cnt = 0;
  end

  always @ (posedge clk)
  begin
    #20;

    Aluop = testvec[vec_cnt][63:56];
    Funct3 = testvec[vec_cnt][55:52];
    Funct7 = testvec[vec_cnt][51:44];
    exp_result = testvec[vec_cnt][43:0];

    #60;

    if (exp_result != result)
    begin
      $display("Error at %5d ns: Aluop %b a=%b b=%b", $time, Aluop, Funct3, Funct7);	// %h displays hex
      $display("Result: %h (%h expected)", result, exp_result);
    end

    vec_cnt = vec_cnt + 1;

    if (testvec[vec_cnt[31:28]] === 4'bxxxx)
    begin
      // End of test, no more entries...
			$display ("%d tests completed with %d errors", vec_cnt, err_cnt);
			
			// Wait so that we can see the last result
			#20; 
			
			// Terminate simulation
			$finish;
    end
  end

  ControlUnit control1 (
    .OP(Aluop[6:0]),
    .Funct3(Funct3[2:0]),
    .Funct7(Funct7[6:0]),
    .RegWrite(RegWrite[0]),
    .MemWrite(MemWrite[0]),
    .Jump(Jump[0]),
    .JumpSrc(JumpSrc[0]),
    .MemtoReg(MemtoReg[0]),
    .Branch(Branch[0]),
    .ALUSrcB(ALUSrcB[1:0]),
    .ALUResult(ALUResult[0]),
    .ALUSrcA(ALUSrcA[0]),
    .RegSrc(RegSrc[1:0]),
    .LoadOrStoreTYPE(LoadOrStoreTYPE[2:0])
  );
endmodule // 