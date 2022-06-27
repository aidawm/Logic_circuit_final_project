`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:55 06/27/2022
// Design Name:   parityErrorChecker
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_1/tb_parityErrorChecker.v
// Project Name:  module_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parityErrorChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_parityErrorChecker;

	// Inputs
	reg [8:0] data;

	// Outputs
	wire error;

	// Instantiate the Unit Under Test (UUT)
	parityErrorChecker uut (
		.data(data), 
		.error(error)
	);

	initial begin
		// Initialize Inputs
		data = 9'b100110101;
		
		// Wait 100 ns for global reset to finish
		#100;
		
		data = 9'b100110100;
      
		#100;
		$finish;
		// Add stimulus here

	end
      
endmodule

