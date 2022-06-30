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
---  Module Name: bmd 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bmd(
bmdrange,
normal,
abnormal);
  input [2:0] bmdrange;
  output reg normal;
  output reg abnormal;
 
	always @ (bmdrange)
		if(bmdrange[1:0] > 2'b01)
			begin
				normal = 1'b0;
				abnormal = 1'b1;
			end
		else
			begin 
				normal = 1'b1;
				abnormal = 1'b0;
			end
endmodule