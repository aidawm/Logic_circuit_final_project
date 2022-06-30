`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:38 06/09/2022 
// Design Name: 
// Module Name:    multiplexer2x1 
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
module multiplexer2x1(
	input [7:0] bfpRange_female,
	input [7:0] bfpRange_male,
	input select, 
	output [7:0]bfpRange
    );

assign bfpRange = select ? bfpRange_male: bfpRange_female;


endmodule
