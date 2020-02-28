`timescale 1ns / 1ps

module CoreTop_test;
	wire [31:0] result;  // The "result" output of MIPS
	wire [31:0] PC;      // The Program Counter from MIPS

	reg clk   ; // Test clock 
	reg reset ; // reset (active high)


  // The test clock generation
	always            // process always triggers
	  begin
	    clk=1; #50;    // clk is 1 for 50 ns 
	    clk=0; #50;    // clk is 0 for 50 ns
	  end	             // generate a 100 ns clock

	// initialization
	initial
	  begin
        reset = 0;   // apply reset
        #60;         // Wait for reset
        reset = 1;    // Take reset back
	    #1500;      // Wait 12 cycles
	    $stop;       // stop the simulator we should have the correct value
	  end
	
 // instantiate the unit under test
  CoreTop core (
    .CLK(clk),      // The main clock of the system
    .RESET(reset),  // The reset signal active high
    .DATA(result),  // The 'result' signal from MIPS
    .ADDRESS(PC)    // The Program Counter
  );     
endmodule
