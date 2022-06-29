`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:43 06/28/2022 
// Design Name: 
// Module Name:    comparator_1bit 
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
module comparator_1bit(
input A,
input B,
input le,
input eq,
output A_less_B,
output A_equal_B
    );


wire A_not,w2,w3,w1,w4;

////equal
xnor xn(w1,A,B);
and a1(A_equal_B,w1,eq);
////less
not n1(A_not,A);
and a2(w2,A_not,B);
and a3(w3,w2,eq);
or r1(A_less_B,w3,le);


endmodule
