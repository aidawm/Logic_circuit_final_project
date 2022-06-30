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
---  Module Name: bfp
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bfp(
wf,
hf,
af,
wm,
hm,
am,
s,
bfprange);
  input [7:0] wf;
  input [7:0] hf;
  input [7:0] af;
  input [7:0] wm;
  input [7:0] hm;
  input [7:0] am;
  input s;
  output reg [7:0] range;

wire [7:0] femaleRange ;
wire [7:0] maleRange;
wire [7:0] muxResult;
bfpfemale female(wf,hf,af,femaleRange);
bfpmale male(wm,hm,am,maleRange);

multiplexer2x1 mux(frmaleRange,maleRange,s,muxResult);

always @ (muxResult)
	range = muxResult; 
	
	
endmodule