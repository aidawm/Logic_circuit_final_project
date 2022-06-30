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
---  Module Name: comparator 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module comparator(
 category,
 overweight,
 normal,
 underweight);
  input [7:0] category;
  output reg overweight;
  output reg normal;
  output reg underweight;

parameter eighteen=8'b00010010,twenty_five =8'b00011001;

 wire less_18,equal_18,great_18;
 wire less_25,equal_25,great_25;

comparator_8bit c18(category,eighteen,less_18,equal_18,great_18);
comparator_8bit c25(category,twenty_five,less_25,equal_25,great_25);


always @ (eighteen,less_18,equal_18,great_18,category,twenty_five,less_25,equal_25,great_25)
	if(category ==0)
		begin
			overweight = 1'b0;
			normal =1'b0;
			underweight=1'b0;
		end
		
	else if(less_18 | equal_18)
		begin 
			overweight = 1'b0;
			normal =1'b0;
			underweight=1'b1;
		end 
	else if (great_18 & less_25)
		begin 
			overweight = 1'b0;
			normal =1'b1;
			underweight=1'b0;
		end 
	else if(great_25 | equal_25)
		begin 
			overweight = 1'b1;
			normal =1'b0;
			underweight=1'b0;
		end 
endmodule