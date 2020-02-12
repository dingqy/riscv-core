module MMU_test(
  input clk_in1,
  input resetn,
  input [1:0] selection,
  output locked,
  output [12:0] ddr2_addr,
  output [2:0] ddr2_ba,
  output ddr2_ras_n,
  output ddr2_cas_n,
  output ddr2_we_n,
  output ddr2_ck_p,
  output ddr2_ck_n,
  output ddr2_cke,
  output ddr2_cs_n,
  output [1:0] ddr2_dm,
  output ddr2_odt,
  inout [15:0] ddr2_dq,
  inout [1:0] ddr2_dqs_p,
  inout [1:0] ddr2_dqs_n,
  output [14:0] ram_dq_o_output1
);

  wire clk_out_200MHz;
  wire [15:0] ram_output_wire;
  wire [11:0] device_temp_i = 12'b0;
  reg [26:0] ram_a;
  reg [15:0] ram_dq_i;
  wire [15:0] ram_dq_o;
  reg ram_cen;
  reg ram_oen;
  reg ram_wen;
  wire ram_ub = 1'b0;
  wire ram_lb = 1'b0;
  integer cnt = 0;
  reg [15:0] ram_dq_o_output [3:0];

  initial
  begin
    ram_dq_o_output[0] = 16'b0;
    ram_dq_o_output[1] = 16'b0;
    ram_dq_o_output[2] = 16'b0;
    ram_dq_o_output[3] = 16'b0;
    ram_cen = 1'b1;
    ram_oen = 1'b1;
    ram_wen = 1'b1; 
  end
  
  assign ram_dq_o_output1 = (selection == 2'b00) ? ram_dq_o_output[0] :
                            (selection == 2'b01) ? ram_dq_o_output[1] :
                            (selection == 2'b10) ? ram_dq_o_output[2] :
                            ram_dq_o_output[3];
  
  always @ (posedge clk_in1)
  begin
    if (resetn) begin
      ram_a <= 27'b0;
      ram_dq_i <= 16'b0;
      ram_cen <= 1'b1;
      ram_oen <= 1'b1;
      ram_wen <= 1'b1;
    end
    else begin
      cnt <= cnt + 1;
      if (cnt == 31'd100000) begin
        ram_a <= 27'b00000000000000001000000000;
        ram_dq_i <= 16'h1236;
        ram_cen <= 1'b0;
        ram_oen <= 1'b1;
        ram_wen <= 1'b0;
      end
      else if (cnt == 31'd10800000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd11600000) begin
        ram_a <= 27'b00000000000000001000000000;	//write addr=0088 data=5678
        ram_dq_i <= 16'h0000;
        ram_cen <= 1'b0;
        ram_oen <= 1'b0;
        ram_wen <= 1'b1;  
        ram_dq_o_output[0] <= 16'b0;      
      end
      else if (cnt == 31'd11605000) begin
        ram_dq_o_output[0] <= ram_dq_o;
      end
      else if (cnt == 31'd13200000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd14000000) begin
        ram_a <= 27'b000010000000000000100001000;	//write addr=0108 data=9abc
        ram_dq_i <= 16'h4444;
        ram_cen <= 1'b0;
        ram_oen <= 1'b1;
        ram_wen <= 1'b0;        
      end
      else if (cnt == 31'd18000000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd20000000) begin
        ram_a <= 27'b000010000000000000100001000;	//write addr=0088 data=5678
        ram_dq_i <= 16'h0000;
        ram_cen <= 1'b0;
        ram_oen <= 1'b0;
        ram_wen <= 1'b1;  
        ram_dq_o_output[1] <= 16'b0;    
      end
      else if (cnt == 31'd30000000) begin
        ram_dq_o_output[1] <= ram_dq_o;
      end
      else if (cnt == 31'd40000000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd40005000) begin
        ram_a <= 27'b000000000000000000010001000;	//read addr=0088 data=5678
        ram_dq_i <= 16'h2222;
        ram_cen <= 1'b0;
        ram_oen <= 1'b1;
        ram_wen <= 1'b0;
      end
      else if (cnt == 31'd60000000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd70000000) begin
        ram_a <= 27'b000000000000000000010001000;	//read addr=0088 data=5678
        ram_dq_i <= 16'h2222;
        ram_cen <= 1'b0;
        ram_oen <= 1'b0;
        ram_wen <= 1'b1;
        ram_dq_o_output[2] <= 16'b0;
       end
      else if (cnt == 31'd80000000) begin
         ram_dq_o_output[2] <= ram_dq_o;
      end
      else if (cnt == 31'd90000000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end
      else if (cnt == 31'd100000000) begin
        ram_a <= 27'b000000000000000000010001000;	//read addr=0088 data=5678
        ram_dq_i <= 16'h2222;
        ram_cen <= 1'b0;
        ram_oen <= 1'b0;
        ram_wen <= 1'b1;
        ram_dq_o_output[3] <= 16'b0;
      end
      else if (cnt == 31'd110000000) begin
         ram_dq_o_output[3] <= ram_dq_o;
      end
      else if (cnt == 31'd115000000) begin
        ram_cen <= 1'b1;
        ram_oen <= 1'b1;
        ram_wen <= 1'b1;
      end      
      else if (cnt >= 31'd120000000) begin
        cnt <= 100000000;
      end
    end
  end

  clk_wiz_0 clk1(
    .clk_in1(clk_in1),
    .clk_out_200MHz(clk_out_200MHz),
    .resetn(!resetn),
    .locked(locked)
  );

  ram2ddrxadc ram(
    .clk_200MHz_i(clk_out_200MHz),
    .device_temp_i(device_temp_i),
    .rst_i(resetn),
    .ram_a(ram_a),
    .ram_dq_i(ram_dq_i),
    .ram_dq_o(ram_dq_o),
    .ram_cen(ram_cen),
    .ram_oen(ram_oen),
    .ram_wen(ram_wen),
    .ram_ub(ram_ub),
    .ram_lb(ram_lb),
    .ddr2_addr(ddr2_addr),
    .ddr2_ba(ddr2_ba),
    .ddr2_cas_n(ddr2_cas_n),
    .ddr2_ck_n(ddr2_ck_n),
    .ddr2_ck_p(ddr2_ck_p),
    .ddr2_cke(ddr2_cke),
    .ddr2_cs_n(ddr2_cs_n),
    .ddr2_dm(ddr2_dm),
    .ddr2_dq(ddr2_dq),
    .ddr2_dqs_n(ddr2_dqs_n),
    .ddr2_dqs_p(ddr2_dqs_p),
    .ddr2_odt(ddr2_odt),
    .ddr2_ras_n(ddr2_ras_n),
    .ddr2_we_n(ddr2_we_n)
  );

endmodule // 