`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:04 06/30/2022
// Design Name:   type_of_body
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_2/tb_type_of_body.v
// Project Name:  module_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: type_of_body
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_type_of_body;

	// Inputs
	reg [2:0] code;

	// Outputs
	wire type;

	// Instantiate the Unit Under Test (UUT)
	type_of_body uut (
		.code(code), 
		.type(type)
	);

	initial begin
		// Initialize Inputs
		code = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		code = 3'b001;
		#100;
		code = 3'b100;
		#100;
		code =3'b111;
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

