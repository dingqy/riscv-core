`timescale 1ns / 1ps

module ALU_test;

  reg [31:0] a;
  reg [31:0] b;
  reg [10:0] aluop;

  wire [31:0] result;
  wire branchCmp;
  wire zero_division;
  wire overflow_signed_div;

  reg clk;

  reg [31:0] exp_result;
  reg exp_branchCmp;
  reg exp_zero_division;
  reg exp_overflow_signed_div;
  reg [31:0] test_add;
  reg [31:0] test_a;
  reg [31:0] test_b;
  reg overflow_test;

  reg [10:0] vec_cnt, err_cnt;

  reg [119:0] testvec [40:0];

  always begin
    clk = 1; #50;
    clk = 0; #50;
  end

  initial
  begin
    $readmemh("C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/tb/ALU_test_vectors_hex.txt",testvec); 
    err_cnt = 0;
    vec_cnt = 0;
    test_add = 0;
    test_a = 1;
    test_b = 0;
  end

  always @ (posedge clk)
  begin
    #20;

    aluop = testvec[vec_cnt][118:108];
    a = testvec[vec_cnt][107:76];
    b = testvec[vec_cnt][75:44];
    exp_result = testvec[vec_cnt][43:12];
    exp_branchCmp = testvec[vec_cnt][8];
    exp_zero_division = testvec[vec_cnt][4];
    exp_overflow_signed_div = testvec[vec_cnt][0];

    #60;

    {overflow_test, test_add} = test_a + ~test_b + 1'b1;

    if (aluop[6]) 
    begin
      if (aluop[2:0] == 3'b100 | aluop[2:0] == 3'b101)
      begin
        if (zero_division != exp_zero_division)
        begin
          $display("Error at %5d ns: Aluop %b a=%h b=%h", $time, aluop, a, b);	// %h displays hex
          $display("Divide zero: %b (%b expected)", zero_division, exp_zero_division);							// %b displays binary
          err_cnt = err_cnt + 1;																// increment error count 
        end

        if (aluop[2:0] == 3'b100 & overflow_signed_div != exp_overflow_signed_div)
        begin
          $display("Error at %5d ns: Aluop %b a=%h b=%h", $time, aluop, a, b);	// %h displays hex
          $display("Overflow of signed division: %b (%b expected)", overflow_signed_div, exp_overflow_signed_div);							// %b displays binary
          err_cnt = err_cnt + 1;																// increment error count
        end
      end  
    end

    if (aluop[9])
    begin
      if (branchCmp != exp_branchCmp)
      begin
        $display("Error at %5d ns: Aluop %b a=%h b=%h", $time, aluop,a,b);	// %h displays hex
        $display("BranchCmp: %b (%b expected)",branchCmp,exp_branchCmp);							// %b displays binary
        err_cnt = err_cnt + 1;																// increment error count
      end
    end
    else begin
      if (result != exp_result)
      begin
        $display("Error at %5d ns: Aluop %b a=%h b=%h", $time, aluop, a, b);	// %h displays hex
        $display("Result: %h (%h expected)", result, exp_result);
      end
    end

    vec_cnt = vec_cnt + 1;

    if (testvec[vec_cnt[109:106]] === 4'bxxxx)
    begin
      // End of test, no more entries...
			$display ("%d tests completed with %d errors", vec_cnt, err_cnt);
			
			// Wait so that we can see the last result
			#20; 
			
			// Terminate simulation
			$finish;
    end
  end

  ALU alu1 (
    .a(a),
    .b(b),
    .aluop(aluop),
    .result(result),
    .branchCmp(branchCmp),
    .zero_division(zero_division),
    .overflow_signed_div(overflow_signed_div)
  );
endmodule // 