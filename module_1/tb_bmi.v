`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:46:59 06/27/2022
// Design Name:   bmi
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_1/tb_bmi.v
// Project Name:  module_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bmi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bmi;

	// Inputs
	reg enable;
	reg [7:0] weight;
	reg [7:0] height;
	wire [7:0]category;
	wire [23:0] result;

	// Instantiate the Unit Under Test (UUT)
	bmi uut (
		.enable(enable), 
		.weight(weight), 
		.height(height),
		.category(category),
		.result(result)
	);

	initial begin
		enable <= 1'b1;
		weight <= 8'b01010000; // 80
		height <= 8'b10101010; // 2 
		#500;
      
		/*enable <= 1'b1;
		#100;
		enable <= 1'b0;
		#100;*/
		$finish;

	end
      
endmodule

