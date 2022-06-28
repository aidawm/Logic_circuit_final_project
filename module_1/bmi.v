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

multiplier8x8 m1(height, height, height_power_2);

always @( enable, weight, height_power_2)
	begin
		if(enable)
			assign category = weight / height_power_2;
		else
			category =8'b00000000;
	end
endmodule