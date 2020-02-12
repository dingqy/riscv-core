module IF_ID_Register(
  input [31:0] PC,
  input CLK,
  input RESET,
  input [31:0] Instr,
  output [31:0] PC_o,
  output [31:0] Instr_o
);

  reg [31:0] PC_r;
  reg [31:0] Instr_r;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin
      PC_r <= 32'b0;
      Instr_r <= 32'b0;
    end
    else begin
      PC_r <= PC;
      Instr_r <= Instr;
    end
  end

  assign PC_o = PC_r;
  assign Instr_o = Instr_r;

endmodule // 