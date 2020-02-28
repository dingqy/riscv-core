`timescale 1ns / 1ps
// This part will be replaced by cache

module InstructionMemory(
     input   [5:0] A,   // Address of the Instruction max 64 instructions
	  output [31:0] RD   // Value at Address
    );

 reg [31:0] InsArr [63:0];  // Array holding the memory 64 entries each 32 bits
 
 initial
   begin
     $readmemh("C:/Users/80939/Desktop/ELEC222-Project/riscv-soc/riscv-core/tb/insmem_h.txt", InsArr);  // Initialize the array with this content
   end
	
 assign RD= InsArr[A];   // The Read Data (RD) output corresponds to the Address (A)

endmodule