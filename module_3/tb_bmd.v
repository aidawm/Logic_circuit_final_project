`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:24:10 06/30/2022
// Design Name:   bmd
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_3/tb_bmd.v
// Project Name:  module_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bmd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bmd;

	// Inputs
	reg [2:0] bmdrange;

	// Outputs
	wire normal;
	wire abnormal;

	// Instantiate the Unit Under Test (UUT)
	bmd uut (
		.bmdrange(bmdrange), 
		.normal(normal), 
		.abnormal(abnormal)
	);

	initial begin
		// Initialize Inputs
		bmdrange = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		
		bmdrange = 3'b111;
        
		#100;
		bmdrange = 3'b101;
		#100;
		bmdrange = 3'b010;
		#100;
		bmdrange = 3'b101;
		#100;
		$finish;
		// Add stimulus here

	end
      
endmodule

