module RD_Register_Cache_d(
  input [108:0] Cache_result_i,
  input CLK,
  input RESET,
  input [31:0] Addr_i,
  input w_valid_i,
  input [31:0] w_data_i,
  input r_valid_i,
  input flush,
  output [108:0] Cache_result,
  output [31:0] Addr,
  output w_valid,
  output [31:0] w_data,
  output r_valid
);

  reg [108:0] Cache_result_r;
  reg [31:0] Addr_r;
  reg w_valid_r;
  reg [31:0] w_data_r;
  reg r_valid_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET | flush) begin
      Cache_result_r <= 109'b0;
      Addr_r <= 32'b0;
      w_valid_r <= 1'b0;
      w_data_r <= 32'b0;
      r_valid_r <= 1'b0;
    end
    else begin
      Cache_result_r <= Cache_result_i;
      Addr_r <= Addr_i;
      w_valid_r <= w_valid_i;
      w_data_r <= w_data_i;
      r_valid_r <= r_valid_i;
    end
  end

  assign Addr = Addr_r;
  assign Cache_result = Cache_result_r;
  assign w_valid = w_data_r;
  assign w_data = w_data_r;
  assign r_valid = r_valid_r;

endmodule // 