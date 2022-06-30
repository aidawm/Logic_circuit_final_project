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
---  Module Name: bfpfemale
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bfpfemale(
wf,
hf,
af,
bfprange);
  input [7:0] wf;
  input [7:0] hf;
  input [7:0] af;
  output [7:0] rangef;
	reg [23:0] result;
	
wire [7:0] bmi;
parameter twelve= 8'b00001100 , twenty_three = 8'b00010111, hundred = 8'b01100100 , ten=8'b00001010 , hundred_sixty_two = 8'b10100010;

bmi calcBmi(1'b1,wf,hf,bmi);
always @ (af,bmi)
	begin
		assign result = ((twelve*bmi*ten)+(twenty_three*af)-(hundred_sixty_two*ten))/hundred;
	end

assign bfprange = result;
endmodule