`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:21 06/07/2022 
// Design Name: 
// Module Name:    multiplier8x8 
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
module multiplier8x8(
	input [7:0] A ,
	input [7:0] B ,
	output reg[15:0] result
    );
	 
	 reg [7:0] multiplicand;
	 reg [7:0] multiplier;
	 integer i;
	 
	 
	 always @(A, B) 
	 begin
		multiplicand = A;
		multiplier = B;
		result = 0;
		
		for (i=0; i < multiplier; i=i+1)
			begin
				result = result + multiplicand;
			end
					
	 end
	 
	 
endmodule