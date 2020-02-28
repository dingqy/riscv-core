module RegisterFile(
  input [4:0] A1,
  input [4:0] A2,
  input [4:0] A3,
  input [31:0] WD3,
  input RegWrite,
  input CLK,
  input RESET,
  output [31:0] RD1,
  output [31:0] RD2
);

reg [31:0] Register [31:0];
integer i;

assign RD1 = Register[A1];
assign RD2 = Register[A2];

always @ (posedge CLK, negedge RESET)
begin
  if (!RESET) 
  begin
    for (i = 0; i < 32; i = i + 1) 
    begin
      Register[i] <= 32'b0;
    end
  end
  else begin
      if (RegWrite) Register[A3] <= WD3;
  end
end

endmodule // 