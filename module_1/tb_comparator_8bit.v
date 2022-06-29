`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:10 06/28/2022
// Design Name:   comparator_8bit
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_1/tb_comparator_8bit.v
// Project Name:  module_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comparator_8bit;

	// Inputs
	reg [7:0]A;
	reg [7:0]B;
	
	
	wire A_less_B;
	wire A_equal_B;
	wire A_great_B;
	// Instantiate the Unit Under Test (UUT)
	comparator_8bit uut (
		.A(A),
		.B(B),
		.A_less_B(A_less_B),
		.A_equal_B(A_equal_B),
		.A_great_B(A_great_B)
	);

	initial begin
		// Initialize Inputs
		A = 8'b10000000;
		B = 8'b10000000;
		// Wait 100 ns for global reset to finish
		#100;
      B = 8'b10000011;
		#100;
		B = 8'b00001000;

		// Add stimulus here

	end
      
endmodule

