`timescale 1ns / 1ps
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: controller_and_register
-----------------------------------------------------------*/

module controller_and_register(confirm, request, clock, inputData, dataQ, dataP);
input confirm, request, clock;
input [7:0] inputData;
output [6:0] dataQ, dataP;

wire enableP , enableQ;

controller ctrl(clock,request,confirm,inputData,enableP,enableQ);

register r_p (clock,inputData[7:1],enableP,dataP);
register r_q (clock,inputData[7:1],enableQ,dataQ);


endmodule