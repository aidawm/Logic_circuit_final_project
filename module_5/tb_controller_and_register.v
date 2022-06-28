`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:00:14 06/28/2022
// Design Name:   controller_and_register
// Module Name:   C:/Users/Orjance Computer/Desktop/logic_final_project/module_5/tb_controller_and_register.v
// Project Name:  module_5
// Target Device:  
// Tool versions:  g
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller_and_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_controller_and_register;

	// Inputs
	reg confirm;
	reg request;
	reg clock;
	reg [7:0] inputData;

	// Outputs
	wire [6:0] dataQ;
	wire [6:0] dataP;

	// Instantiate the Unit Under Test (UUT)
	controller_and_register uut (
		.confirm(confirm), 
		.request(request), 
		.clock(clock), 
		.inputData(inputData), 
		.dataQ(dataQ), 
		.dataP(dataP)
	);

	initial 
		begin 
			clock = 0; 
				forever #10 clock = ~clock; 
		end
		
	initial 
		begin
    	// Initialize Inputs
    		request = 0;
    		confirm = 0;
    		inputData = 0;

    		// Wait 100 ns for global reset to finish
    		#25
    		request = 1;
    		#20
    		inputData = 8'b00000011;
    		#20
    		confirm = 0;
    		#30
    		confirm = 1;
			#20
    		inputData = 8'b00000011;
    		#20
    		confirm = 1;
    		#20
    		request = 1;
    		confirm = 0;
    		#30
			confirm = 1;
    		request = 1;
    		#20 
    		inputData = 8'b11100011;
    		#20
    		confirm = 1;
    		#40
    		inputData = 8'b10000011;
    		#30
    		confirm = 1;
    		#50
    		request = 1;
    		#20
    		confirm = 0;
    		request = 0; 
    		#50 
    		request = 1;
    		#20
    		$finish; 
  	end

      
endmodule

