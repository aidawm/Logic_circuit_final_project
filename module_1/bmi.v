/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: bmi
-----------------------------------------------------------*/
`include "../module_1/multiplier8x8.v"
`timescale 1 ns/1 ns
module bmi(
 enable,
 weight,
height,
category);

input enable;
input [7:0] height; 
input [7:0] weight;
output reg [7:0]category;
wire [15:0] height_power_2;
wire [15:0] hundred_power_2;
wire [23:0] result;
reg [23:0] result2;
parameter hundred = 8'b01100100;

multiplier8x8 m1(height, height, height_power_2);

multiplier16x8 m2(hundred, weight, result);


always @( enable , height_power_2 , result)
	begin
		if(enable)
			begin
				result2 = result/height_power_2;
				assign category = result2;
			end
			
		else
			begin
				assign category =8'b00000000;
			end
	end
endmodule