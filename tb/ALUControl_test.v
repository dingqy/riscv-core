`timescale 1ns / 1ps

module ALUControl_test;

  reg [6:0] Aluop;
  reg [2:0] Funct3;
  reg [6:0] Funct7;

  wire [10:0] ControlResult;

  reg clk;

  reg [10:0] exp_result;

  reg [10:0] vec_cnt, err_cnt;

  reg [31:0] testvec [50:0];

  always begin
    clk = 1; #50;
    clk = 0; #50;
  end

  initial
  begin
    $readmemh("C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/tb/ALUControl_test_vectors_hex.txt",testvec); 
    err_cnt = 0;
    vec_cnt = 0;
  end

  always @ (posedge clk)
  begin
    #20;

    Aluop = testvec[vec_cnt][30:24];
    Funct3 = testvec[vec_cnt][22:20];
    Funct7 = testvec[vec_cnt][18:12];
    exp_result = testvec[vec_cnt][10:0];

    #60;

    if (exp_result != ControlResult)
    begin
      $display("Error at %5d ns: Aluop %b a=%b b=%b", $time, Aluop, Funct3, Funct7);	// %h displays hex
      $display("Result: %b (%b expected)", ControlResult, exp_result);
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

  ALUControl alucontrol1 (
    .Aluop(Aluop),
    .Funct3(Funct3),
    .Funct7(Funct7),
    .ControlResult(ControlResult)
  );
endmodule // 