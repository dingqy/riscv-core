`timescale 1ns / 1ps

module RegisterFile_test;

  reg [4:0] A1;
  reg [4:0] A2;
  reg [4:0] A3;
  reg [31:0] WD3;
  reg RegWrite;
  reg RESET;

  wire [31:0] RD1;
  wire [31:0] RD2;

  reg clk;

  reg [31:0] exp_RD1;

  reg [31:0] exp_RD2;

  reg [10:0] vec_cnt, err_cnt;

  reg [127:0] testvec [50:0];

  always begin
    clk = 1; #50;
    clk = 0; #50;
  end

  initial
  begin
    $readmemh("C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/tb/RegisterFile_test_vectors_hex.txt",testvec); 
    err_cnt = 0;
    vec_cnt = 0;
  end

  always @ (posedge clk)
  begin
    #20;

    A1 = testvec[vec_cnt][124:120];
    A2 = testvec[vec_cnt][116:112];
    A3 = testvec[vec_cnt][108:104];
    WD3 = testvec[vec_cnt][103:72];
    RegWrite = testvec[vec_cnt][68];
    RESET = testvec[vec_cnt][64];
    exp_RD1 = testvec[vec_cnt][63:32];
    exp_RD2 = testvec[vec_cnt][31:0];

    #60;
    if (!RegWrite)
    begin
      if (RD1 != exp_RD1)
      begin
        $display("Error at %5d ns: RD1 A1=%h", $time, A1);	// %h displays hex
        $display("Result: %h (%h expected)", RD1, exp_RD1);
      end

      if (RD2 != exp_RD2)
      begin
        $display("Error at %5d ns: RD2 A2=%h", $time, A2);	// %h displays hex
        $display("Result: %h (%h expected)", RD2, exp_RD2);
      end
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

  RegisterFile register1(
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .CLK(clk),
    .WD3(WD3),
    .RegWrite(RegWrite),
    .RESET(RESET),
    .RD1(RD1),
    .RD2(RD2)
  );
endmodule // 