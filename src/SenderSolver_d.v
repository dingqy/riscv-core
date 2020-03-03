module SenderSolver_d(
  input request_valid_i,
  input CLK,
  input RESET,
  input [31:0] addr_i,
  input [1:0] request_mode,
  input rsp_valid,
  input [108:0] CacheResult,
  input [31:0] r_data,
  output [31:0] w_data,
  output w_valid,
  output [31:0] w_addr,
  output [108:0] r_memory_data,
  output r_memory_valid,
  output [31:0] addr,
  output request_valid
);

  reg [108:0] CacheResult_r;
  reg [31:0] addr_r;
  reg w_valid_r;
  reg request_valid_r;
  wire [108:0] result;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      CacheResult_r <= 109'b0;
      addr_r <= 32'b0;
      request_valid_r <= 1'b0;
    end
    else if (request_valid_i) begin
      CacheResult_r <= CacheResult;
      addr_r <= addr_i;
      request_valid_r <= request_valid_i;
      w_valid_r <= request_mode[1];
    end
  end

  always @ (posedge rsp_valid) begin
    if (request_valid_r & w_valid_r & rsp_valid) w_valid_r <= 1'b0; 
  end

  assign result = (!CacheResult_r[108] & CacheResult_r[53]) ? {3'b110, addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  (CacheResult_r[108] & !CacheResult_r[53]) ? {CacheResult_r[108], 1'b0, CacheResult_r[106:54], 2'b10, addr_r[31:12], r_data} :
                  (!CacheResult_r[108] & !CacheResult_r[53]) ? {3'b110, addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  (CacheResult_r[108] & CacheResult_r[53] & !CacheResult[107]) ? {3'b110, addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  {CacheResult_r[108], 1'b0, CacheResult_r[106:54], 2'b10, addr_r[31:12], r_data};

  assign w_data = CacheResult_r[107] ? CacheResult_r[31:0] : CacheResult_r[85:54];
  assign w_addr = {CacheResult_r[105:86], addr_r[11:2], 2'b0};
  assign w_valid = w_valid_r;
  assign addr = addr_r;
  assign request_valid = request_valid_r;
  assign r_memory_valid = !w_valid_r & rsp_valid;
  assign r_memory_data = result;

endmodule // 