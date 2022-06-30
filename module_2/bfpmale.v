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
---  Module Name: bfpmale
-----------------------------------------------------------*/

`include "../module_1/bmi.v"

`timescale 1 ns/1 ns
module bfpmale(
wm,
hm,
am,
bfprange);
  input [7:0] wm;
  input [7:0] hm;
  input [7:0] am;
  output[7:0] bfprange;
reg [23:0] result;
wire [7:0] bmi;
parameter twelve= 8'b00001100 , twenty_three = 8'b00010111, hundred = 8'b01100100 , ten=8'b00001010 , fifty_four = 8'b00110110;
bmi calcBmi(1'b1,wm,hm,bmi);

initial 
	begin 
		$monitor ("bmi = %b ,result = %b",bmi,result);
	end
always @ (am,bmi)
	begin
		assign result = ((twelve*bmi*ten)+(twenty_three*am)-(fifty_four*ten))/hundred;
	end

assign bfprange = result;
endmodule