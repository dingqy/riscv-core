`timescale 1ns / 1ps

module CLK_wizard_test;

  reg clk;
  reg reset;

  always begin
    clk = 1; #5;
    clk = 0; #5;
  end

  initial
  begin
    reset = 1;
  end

  wire clk_output;
  wire locked;

  clk_wiz_0 clk1(
    .clk_in1(clk),
    .locked(locked),
    .clk_out_200MHz(clk_output),
    .resetn(reset)
  );
endmodule // 