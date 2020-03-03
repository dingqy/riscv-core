module InstructionCache(
  input CLK,
  input RESET,
  input [31:0] r_addr, // Read address
  input r_valid, // Read valid (means data is valid)
  input FIFO_empty,
  input [108:0] r_memory_write, // Read data from meomry
  input r_memory_valid_input, // Read data from memory valid
  output [31:0] r_memory_addr, // Read address
  output request_valid, // Request mode
  output [31:0] r_data, // return value
  output [108:0] Cache_result, // Used for future input
  output [1:0] r_rsp, // return valid
  output r_rsp_valid
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
  reg [31:0] r_addr_r;

  // RD register output
  wire [108:0] Cache_result_RD;
  wire [31:0] ReadAddr_RD;
  wire r_valid_RD;


  // CMP register input
  wire [31:0] r_data_CMP_i;
  wire [31:0] r_addr_CMP_i;
  wire hit_CMP_i;
  wire r_location_CMP_i;
  wire hit_1;
  wire hit_2;
  wire request_valid_i;

  // CMP register output
  wire hit_CMP;
  wire r_valid_CMP;

  // Read from single port memory
  assign clka = CLK;
  assign addra = r_addr[11:2];
  assign injectdbiterra = 1'b0;
  assign injectsbiterra = 1'b0;
  assign ena = (!FIFO_empty_r1) | r_memory_valid_input;
  assign rsta = RESET;
  assign sleep = 1'b0;
  assign wea = {14{r_memory_valid_input}}; // may be replaced
  assign dina = r_memory_write;

  always @ (posedge CLK, negedge RESET) begin
    if (!RESET) begin 
      FIFO_empty_r1 <= 1'b0;
      FIFO_empty_r2 <= 1'b0;
      r_valid_r <= 1'b0;
      r_addr_r <= 32'b0;
    end
    FIFO_empty_r1 <= FIFO_empty;
    FIFO_empty_r2 <= FIFO_empty_r1;
    r_valid_r <= r_valid;
    r_addr_r <= r_addr;
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

  RD_Register_Cache_i rdreg(
    .Cache_result_i(douta),
    .CLK(CLK),
    .RESET(RESET),
    .ReadAddr_i(r_addr_r),
    .Cache_result(Cache_result_RD),
    .ReadAddr(ReadAddr_RD),
    .flush(FIFO_empty_r2),
    .r_valid_i(r_valid_r),
    .r_valid(r_valid_RD)
  );

  // Compare part
  assign hit_1 = (Cache_result_RD[105:86] == ReadAddr_RD[31:12]) & Cache_result_RD[108];
  assign hit_2 = (Cache_result_RD[51:32] == ReadAddr_RD[31:12]) & Cache_result_RD[53];
  assign hit_CMP_i = hit_1 | hit_2;
  assign r_data_CMP_i = (hit_1) ? Cache_result_RD[85:54] : Cache_result_RD[31:0];
  assign request_valid_i = !(hit_CMP_i);

  CMP_Register_Cache_i cmpreg(
    .r_data_i(r_data_CMP_i),
    .r_addr_i(r_addr_CMP_i),
    .hit_i(hit_CMP_i),
    .CLK(CLK),
    .RESET(RESET),
    .Cache_result_i(Cache_result_RD),
    .hit(hit_CMP),
    .Cache_result(Cache_result),
    .r_data(r_data),
    .r_addr(r_memory_addr),
    .request_valid_i(request_valid_i),
    .request_valid(request_valid),
    .r_valid_i(r_valid_RD),
    .r_valid(r_valid_CMP)
  );

  // 01: hit
  // 10: wait
  // 11: prepare successfully (needs CPU request again)
  // 00: Error
  assign r_rsp = (hit_CMP) ? 2'b01 :
                 (!hit_CMP & request_valid) ? 2'b10 :
                 (r_memory_valid_input) ? 2'b11 :
                 2'b00;
  assign r_rsp_valid = r_valid_CMP;

// End of xpm_memory_spram_inst instantiation

endmodule // 