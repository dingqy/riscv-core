module SenderSolver_i(
  input CLK, 
  input RESET,
  input [31:0] r_addr_i,
  input request_valid_i,
  input [108:0] CacheResult,
  input [31:0] r_data,
  input rsp_valid,
  output [108:0] r_memory_data,
  output r_memory_valid,
  output [31:0] r_addr,
  output request_valid
);

  wire [108:0] result;
  
  reg [108:0] CacheResult_r;
  reg [31:0] r_addr_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      CacheResult_r <= 109'b0;
      r_addr_r <= 32'b0;
    end
    else if (request_valid_i) begin
      CacheResult_r <= CacheResult;
      r_addr_r <= r_addr_i;
    end
  end

  assign result = (!CacheResult_r[108] & CacheResult_r[53]) ? {3'b110, r_addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  (CacheResult_r[108] & !CacheResult_r[53]) ? {CacheResult_r[108], 1'b0, CacheResult_r[106:54], 2'b10, r_addr_r[31:12], r_data} :
                  (!CacheResult_r[108] & !CacheResult_r[53]) ? {3'b110, r_addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  (CacheResult_r[108] & CacheResult_r[53] & !CacheResult[107]) ? {3'b110, r_addr_r[31:12], r_data, CacheResult_r[53:0]} :
                  {CacheResult_r[108], 1'b0, CacheResult_r[106:54], 2'b10, r_addr_r[31:12], r_data};
  
  assign r_memory_data = result;
  assign r_memory_valid = rsp_valid;
  assign r_addr = r_addr_i;
  assign request_valid = request_valid_i;

endmodule // 