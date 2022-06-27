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
---  Module Name: parityErrorChecker 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parityErrorChecker(
 data,
 error);
 input [8:0] data;
output error;


wire w0,w1,w2,w3,w4,w5,w6,w7;

xor x0(w0,data[0],data[1]);
xor x1(w1,w0,data[2]);
xor x2(w2,w1,data[3]);
xor x3(w3,w2,data[4]);
xor x4(w4,w3,data[5]);
xor x5(w5,w4,data[6]);
xor x6(w6,w5,data[7]);

not n0(w7,w6);

xor(error,w7,data[8]);


endmodule