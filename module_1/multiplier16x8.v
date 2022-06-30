`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:51 06/30/2022 
// Design Name: 
// Module Name:    multiplier16x8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "./multiplier8x8.v"
module multiplier16x8(
	input [7:0] A ,
	input [7:0] B ,
	output reg[23:0] result
    );
	 reg [15:0] multiplicand;
	 reg [7:0] multiplier;
	 integer i;
	 wire [15:0] A_power_2;
	 
	 multiplier8x8 mux(A,A,A_power_2);

	 always @(A_power_2, B) 
	 begin
		multiplicand = A_power_2;
		multiplier = B;
		result =0;
		
		for (i=0; i < multiplier; i=i+1)
			begin
				result = result + multiplicand;
			end
					
	 end

endmodule
