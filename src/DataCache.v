module DataCache(
  input CLK,
  input RESET,
  input [31:0] addr, // Read address
  input r_valid, // Read valid (means data is valid)
  input w_valid,
  input [31:0] w_data,
  input FIFO_empty,
  input [108:0] r_memory_write, // Read data from meomry
  input r_memory_valid_input, // Read data from memory valid
  output [31:0] r_memory_addr, // Read address
  output request_valid, // Request mode
  output [31:0] r_data, // return value
  output [108:0] Cache_result, // Used for future input
  output [1:0] rsp, // return valid
  output [1:0] request_mode, // 10: write dirty block and then read 01: read
  output rsp_valid
);

  // Single port memory definition
  wire dbiterra;
  wire [108:0] douta;  
  wire sbiterra;
  wire [9:0] addra;
  wire clka;
  wire [108:0] dina;
  wire ena;
  wire injectdbiterra;
  wire injectsbiterra;
  wire regcea;
  wire rsta;
  wire sleep;
  wire [108:0] wea;
  reg FIFO_empty_r1;
  reg FIFO_empty_r2;
  reg r_valid_r;
  reg [31:0] w_data_r;
  reg w_valid_r;
  reg [31:0] addr_r;

  // RD register output
  wire [108:0] Cache_result_RD;
  wire [31:0] Addr_RD;
  wire r_valid_RD;
  wire w_valid_RD;
  wire [31:0] w_data_RD;

  // CMP register input
  wire [31:0] r_data_CMP_i;
  wire [31:0] addr_CMP_i;
  wire hit_CMP_i;
  wire hit_1;
  wire hit_2;
  wire request_valid_i;
  wire WriteBack;
  wire [108:0] w_result;
  wire finish;
  wire finish_temp;
  wire finish_temp2;

  // CMP register output
  wire hit_CMP;
  wire r_valid_CMP;
  wire w_valid_CMP;
  wire [31:0] w_data_CMP;
  wire [31:0] addr_CMP;
  wire [108:0] Cache_result_CMP;

  // Read from single port memory
  assign WriteBack = hit_CMP & w_valid_CMP;
  assign clka = CLK;
  assign addra = addr[11:2];
  assign injectdbiterra = 1'b0;
  assign injectsbiterra = 1'b0;
  assign ena = (!FIFO_empty_r1) | r_memory_valid_input | WriteBack;
  assign rsta = RESET;
  assign sleep = 1'b0;
  assign wea = {14{r_memory_valid_input}} | {14{w_valid_CMP}}; // may be replaced
  assign dina = (w_valid_CMP) ? Cache_result_CMP : r_memory_write;


  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin 
      FIFO_empty_r1 <= 1'b0;
      FIFO_empty_r2 <= 1'b0;
      r_valid_r <= 1'b0;
      w_data_r <= 32'b0;
      w_valid_r <= 1'b0;
      addr_r <= 32'b0;
    end
    FIFO_empty_r1 <= FIFO_empty;
    FIFO_empty_r2 <= FIFO_empty_r1;
    r_valid_r <= r_valid;
    w_data_r <= w_data;
    w_valid_r <= w_valid;
    addr_r <= addr;
  end

  xpm_memory_spram #(
   .ADDR_WIDTH_A(10),              // DECIMAL
   .AUTO_SLEEP_TIME(0),           // DECIMAL
   .BYTE_WRITE_WIDTH_A(109),       // DECIMAL
   .CASCADE_HEIGHT(0),            // DECIMAL
   .ECC_MODE("no_ecc"),           // String
   .MEMORY_INIT_FILE("none"),     // String
   .MEMORY_INIT_PARAM("0"),       // String
   .MEMORY_OPTIMIZATION("true"),  // String
   .MEMORY_PRIMITIVE("auto"),     // String
   .MEMORY_SIZE(111616),          // DECIMAL
   .MESSAGE_CONTROL(0),           // DECIMAL
   .READ_DATA_WIDTH_A(109),        // DECIMAL
   .READ_LATENCY_A(0),            // DECIMAL
   .READ_RESET_VALUE_A("0"),      // String
   .RST_MODE_A("SYNC"),           // String
   .SIM_ASSERT_CHK(0),            // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .USE_MEM_INIT(1),              // DECIMAL
   .WAKEUP_TIME("disable_sleep"), // String
   .WRITE_DATA_WIDTH_A(109),       // DECIMAL
   .WRITE_MODE_A("read_first")    // String
  )
  xpm_memory_spram_inst (
   .dbiterra(dbiterra),             // 1-bit output: Status signal to indicate double bit error occurrence
                                    // on the data output of port A.

   .douta(douta),                   // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
   .sbiterra(sbiterra),             // 1-bit output: Status signal to indicate single bit error occurrence
                                    // on the data output of port A.

   .addra(addra),                   // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
   .clka(clka),                     // 1-bit input: Clock signal for port A.
   .dina(dina),                     // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
   .ena(ena),                       // 1-bit input: Memory enable signal for port A. Must be high on clock
                                    // cycles when read or write operations are initiated. Pipelined
                                    // internally.

   .injectdbiterra(injectdbiterra), // 1-bit input: Controls double bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .injectsbiterra(injectsbiterra), // 1-bit input: Controls single bit error injection on input data when
                                    // ECC enabled (Error injection capability is not available in
                                    // "decode_only" mode).

   .regcea(regcea),                 // 1-bit input: Clock Enable for the last register stage on the output
                                    // data path.

   .rsta(rsta),                     // 1-bit input: Reset signal for the final port A output register stage.
                                    // Synchronously resets output port douta to the value specified by
                                    // parameter READ_RESET_VALUE_A.

   .sleep(sleep),                   // 1-bit input: sleep signal to enable the dynamic power saving feature.
   .wea(wea)                        // WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input
                                    // data port dina. 1 bit wide when word-wide writes are used. In
                                    // byte-wide write configurations, each bit controls the writing one
                                    // byte of dina to address addra. For example, to synchronously write
                                    // only bits [15-8] of dina when WRITE_DATA_WIDTH_A is 32, wea would be
                                    // 4'b0010.
  );

  RD_Register_Cache_d rdreg(
    .Cache_result_i(douta),
    .CLK(CLK),
    .RESET(RESET),
    .Addr_i(addr_r),
    .Cache_result(Cache_result_RD),
    .Addr(Addr_RD),
    .flush(FIFO_empty_r2),
    .r_valid_i(r_valid_r),
    .r_valid(r_valid_RD),
    .w_valid_i(w_valid_r),
    .w_data_i(w_data_r),
    .w_valid(w_valid_RD),
    .w_data(w_data_RD)
  );

  // Compare part
  assign finish_temp = Cache_result_RD[108] & Cache_result_RD[53] & Cache_result_RD[107] & !Cache_result_RD[52];
  assign finish_temp2 = Cache_result_RD[108] & Cache_result_RD[53] & !Cache_result_RD[107] & !Cache_result_RD[106];
  assign hit_1 = (Cache_result_RD[105:86] == Addr_RD[31:12]) & Cache_result_RD[108];
  assign hit_2 = (Cache_result_RD[51:32] == Addr_RD[31:12]) & Cache_result_RD[53];
  assign hit_CMP_i = hit_1 | hit_2;
  assign r_data_CMP_i = (hit_1) ? Cache_result_RD[85:54] : Cache_result_RD[31:0];
  assign w_result = (((!Cache_result_RD[108] & Cache_result_RD[53]) | hit_1) & w_valid_RD) ? {3'b111, Addr_RD[31:12], w_data_RD, Cache_result_RD[53:0]} :
                    (((Cache_result_RD[108] & !Cache_result_RD[53]) | hit_2) & w_valid_RD) ? {Cache_result_RD[108], 1'b0, Cache_result_RD[106:54], 2'b11, Addr_RD[31:12], w_data_RD} :
                    (!Cache_result_RD[108] & !Cache_result_RD[53] & w_valid_RD) ? {3'b111, Addr_RD[31:12], w_data_RD, Cache_result_RD[53:0]} :
                    (finish_temp & w_valid_RD) ? {Cache_result_RD[108], 1'b0, Cache_result_RD[106:54], 2'b11, Addr_RD[31:12], w_data_RD} :
                    (finish_temp2 & w_valid_RD) ? {3'b111, Addr_RD[31:12], w_data_RD, Cache_result_RD[53:0]} :
                    Cache_result_RD;
  assign finish = hit_CMP_i | (w_valid_RD & (!Cache_result_RD[108] | !Cache_result_RD[53] | finish_temp | finish_temp2));

  CMP_Register_Cache_d cmpreg(
    .r_data_i(r_data_CMP_i),
    .addr_i(addr_CMP_i),
    .hit_i(finish),
    .CLK(CLK),
    .RESET(RESET),
    .Cache_result_i(w_result),
    .hit(hit_CMP),
    .Cache_result(Cache_result_CMP),
    .r_data(r_data),
    .addr(addr_CMP),
    .request_valid_i(!finish),
    .request_valid(request_valid),
    .r_valid_i(r_valid_RD),
    .r_valid(r_valid_CMP),
    .w_data_i(w_data_RD),
    .w_data(w_data_CMP),
    .w_valid_i(w_valid_RD),
    .w_valid(w_valid_CMP)
  );

  // 01: hit
  // 10: wait
  // 11: prepare successfully (needs CPU request again)
  // 00: Error
  assign rsp = (hit_CMP) ? 2'b01 :
               (!hit_CMP & request_valid) ? 2'b10 :
               (r_memory_valid_input) ? 2'b11 :
               2'b00;
  assign rsp_valid = r_valid_CMP | w_valid_CMP;

  assign request_mode = (!hit_CMP & request_valid & ((Cache_result_CMP[106] & !Cache_result_CMP[107]) | (Cache_result_CMP[52] & Cache_result_CMP[107]))) ? 2'b10 : 2'b01;

  assign r_memory_addr = addr_CMP;

  assign Cache_result = Cache_result_CMP;


// End of xpm_memory_spram_inst instantiation

endmodule // 