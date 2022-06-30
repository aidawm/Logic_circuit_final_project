`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:10 06/28/2022 
// Design Name: 
// Module Name:    comparator_8bit 
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
`include "../module_1/comparator_1bit.v"
module comparator_8bit(
input [7:0]A,
input [7:0]B,
output reg A_less_B,
output reg A_equal_B,
output reg A_great_B
    );

wire less7,less6,less5,less4,less3,less2,less1,less0;
wire equal7,equal6,equal5,equal4,equal3,equal2,equal1,equal0;

comparator_1bit c7(A[7],B[7],1'b0,1'b1,less7,equal7);
comparator_1bit c6(A[6],B[6],less7,equal7,less6,equal6);
comparator_1bit c5(A[5],B[5],less6,equal6,less5,equal5);
comparator_1bit c4(A[4],B[4],less5,equal5,less4,equal4);
comparator_1bit c3(A[3],B[3],less4,equal4,less3,equal3);
comparator_1bit c2(A[2],B[2],less3,equal3,less2,equal2);
comparator_1bit c1(A[1],B[1],less2,equal2,less1,equal1);
comparator_1bit c0(A[0],B[0],less1,equal1,less0,equal0);



always @ (less0,equal0)
	begin
		A_less_B=less0;
		A_equal_B= equal0;
		A_great_B = ~(A_less_B+A_equal_B);
		//nor nr(A_great_B,A_less_B,A_equal_B);
	end 


endmodule
