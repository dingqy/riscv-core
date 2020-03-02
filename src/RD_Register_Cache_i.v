module RD_Register_Cache_i(
  input [108:0] Cache_result_i,
  input CLK,
  input RESET,
  input [31:0] ReadAddr_i,
  input r_valid_i,
  input flush,
  output [108:0] Cache_result,
  output [31:0] ReadAddr,
  output r_valid
);

  reg [108:0] Cache_result_r;
  reg [31:0] ReadAddr_r;
  reg r_valid_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET | flush) begin
      Cache_result_r <= 109'b0;
      ReadAddr_r <= 32'b0;
      r_valid_r <= 1'b0;
    end
    else begin
      Cache_result_r <= Cache_result_i;
      ReadAddr_r <= ReadAddr_i;
      r_valid_r <= r_valid_i;
    end
  end

  assign ReadAddr = ReadAddr_r;
  assign Cache_result = Cache_result_r;
  assign r_valid = r_valid_r;

endmodule // 