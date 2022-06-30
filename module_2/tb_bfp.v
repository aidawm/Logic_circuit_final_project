`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:07:03 07/01/2022
// Design Name:   bfp
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_2/tb_bfp.v
// Project Name:  module_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bfp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bfp;

	// Inputs
	reg [7:0] wf;
	reg [7:0] hf;
	reg [7:0] af;
	reg [7:0] wm;
	reg [7:0] hm;
	reg [7:0] am;
	reg s;
	wire [7:0]bfprange;

	// Instantiate the Unit Under Test (UUT)
	bfp uut (
		.wf(wf), 
		.hf(hf), 
		.af(af), 
		.wm(wm), 
		.hm(hm), 
		.am(am), 
		.s(s), 
		.bfprange(bfprange)
	);

	initial begin
		// Initialize Inputs
		wf = 8'b01010000;
		hf = 8'b10101010;
		af = 8'b00011000;
		wm = 8'b01010000;
		hm = 8'b10101010;
		am = 8'b00011000;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		s=1;
		#100;
		$finish;
		// Add stimulus here

	end
      
endmodule

