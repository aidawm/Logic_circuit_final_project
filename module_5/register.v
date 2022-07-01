`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:21 06/28/2022 
// Design Name: 
// Module Name:    register 
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
module register(
input clock, 
input [6:0] din,
input enable, 
output reg [6:0] dout
    );

initial 
	begin 
	dout = 7'b0000000;
	end 
	
always @ (posedge clock )
	begin
		if(enable)
			dout = din;
		else 
			dout = 7'b0000000;
	end	
	
endmodule