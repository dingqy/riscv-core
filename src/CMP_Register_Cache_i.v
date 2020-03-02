module CMP_Register_Cache_i(
  input [31:0] r_data_i,
  input [31:0] r_addr_i,
  input hit_i,
  input CLK,
  input RESET,
  input [108:0] Cache_result_i,
  input request_valid_i,
  input r_valid_i,
  output [31:0] r_data,
  output [31:0] r_addr,
  output hit,
  output [108:0] Cache_result,
  output request_valid,
  output r_valid
);

  reg [31:0] r_addr_r;
  reg [31:0] r_data_r;
  reg hit_r;
  reg [108:0] Cache_result_r;
  reg request_valid_r;
  reg r_valid_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      r_addr_r <= 32'b0;
      r_data_r <= 32'b0;
      hit_r <= 1'b0;
      Cache_result_r <= 109'b0;
      request_valid_r <= 1'b0;
      r_valid_r <= 1'b0;
    end
    else begin
      r_addr_r <= r_addr_i;
      r_data_r <= r_data_i;
      hit_r <= hit_i;
      Cache_result_r <= Cache_result_i;
      request_valid_r <= request_valid_i;
      r_valid_r <= r_valid_i;
    end
  end

  assign r_addr = r_addr_r;
  assign r_data = r_data_r;
  assign hit = hit_r;
  assign Cache_result = Cache_result_r;
  assign request_valid = request_valid_r;
  assign r_valid = r_valid_r;

endmodule // 