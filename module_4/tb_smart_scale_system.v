`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:53:11 07/01/2022
// Design Name:   smart_scales_system
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_4/tb_smart_scale_system.v
// Project Name:  module_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: smart_scales_system
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_smart_scale_system;

	// Inputs
	reg [8:0] weight;
	reg [7:0] height;
	reg [7:0] wf;
	reg [7:0] hf;
	reg [7:0] af;
	reg [7:0] wm;
	reg [7:0] hm;
	reg [7:0] am;
	reg s;
	reg [2:0] bmdrange;

	// Outputs
	wire [7:0] range;
	wire overweight;
	wire normal_bmi;
	wire underweight;
	wire normal;
	wire abnormal;

	// Instantiate the Unit Under Test (UUT)
	smart_scales_system uut (
		.weight(weight), 
		.height(height), 
		.wf(wf), 
		.hf(hf), 
		.af(af), 
		.wm(wm), 
		.hm(hm), 
		.am(am), 
		.s(s), 
		.range(range), 
		.overweight(overweight), 
		.normal_bmi(normal_bmi), 
		.underweight(underweight), 
		.bmdrange(bmdrange), 
		.normal(normal), 
		.abnormal(abnormal)
	);

	initial begin
		// Initialize Inputs
		weight = 9'b101001011;
		height = 8'b10101010;
		wf = 8'b01010000;
		hf = 8'b10101010;
		af = 8'b00011110;
		wm = 8'b01010000;
		hm = 8'b10101010;
		am = 8'b00011110;
		s = 0;
		bmdrange = 3'b111;

		// Wait 100 ns for global reset to finish
		#100;
      $finish;
		// Add stimulus here

	end
      
endmodule

