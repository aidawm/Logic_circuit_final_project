`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:31:25 07/01/2022
// Design Name:   bmi_module
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_1/tb_bmi_module.v
// Project Name:  module_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bmi_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bmi_module;

	// Inputs
	reg [8:0] weight;
	reg [7:0] height;

	// Outputs
	wire overweight;
	wire normal;
	wire underweight;
	wire error;

	// Instantiate the Unit Under Test (UUT)
	bmi_module uut (
		.weight(weight), 
		.height(height), 
		.overweight(overweight), 
		.normal(normal), 
		.underweight(underweight),
		.error(error)
	);

	initial begin
		// Initialize Inputs
		weight = 9'b101010000;
		height = 8'b10101010;

		// Wait 100 ns for global reset to finish
		#100;
		
		weight = 9'b001010000;
		height = 8'b10101010;

		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

