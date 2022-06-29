`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:49:44 06/29/2022
// Design Name:   comparator
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_1/tb_comparator.v
// Project Name:  module_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comparator;

	// Inputs
	reg [7:0] category;

	// Outputs
	wire overweight;
	wire normal;
	wire underweight;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.category(category), 
		.overweight(overweight), 
		.normal(normal), 
		.underweight(underweight)
	);

	initial begin
		category <= 8'b00001100;
		#100;
      category <= 8'b10001100;
		#100;
		category <= 8'b00010111;
		#100;
		$finish;
	end
      
endmodule

