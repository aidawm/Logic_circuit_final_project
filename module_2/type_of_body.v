`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:30 06/30/2022 
// Design Name: 
// Module Name:    type_of_body 
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
module type_of_body(
input [2:0] code,
output reg type
    );

always @ (code)
	if(code==3'b111 | code==3'b000)
		type = 1'b1;
	else
		type = 1'b0;

endmodule
