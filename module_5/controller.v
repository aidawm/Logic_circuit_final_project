`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:57 06/28/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(
input clock,
input request,
input confirm, 
input [7:0]user,
output reg regP , 
output reg regQ 
    );

wire [7:0] password;
assign password = 8'b0000011;

parameter 
A = 3'b000,
B = 3'b001,
C= 3'b010,
D = 3'b011,
E=3'b111;

reg [2:0] present_state;
reg [2:0]next_state;

initial
	begin
		present_state=A;
		next_state=A;
	end
		
initial
      $monitor("request=%b confirm = %b , user = %b,password=%b,  present_state= %b next_state= %b regP= %b,reqQ= %b user[7]=%b time = %0d", 
               request, confirm , user ,password,present_state,next_state,regP,regQ,user[7], $time);
always @ (posedge clock or negedge request)
		if(~request) present_state=A;
		else present_state=next_state;


always @ (request or confirm or user)
		case (present_state)
		
			A : 
					if(request)	next_state = B;
					else 		next_state = A;
					
			B : 
					if(~request)								next_state = A;
					else if(~confirm) 					next_state = B;
					else if(password == user)	next_state = C;
               else if(password != user)	next_state = E;
			C :
					if(~request) next_state =A;  
					else if (~confirm) next_state = C;  
               else if (confirm) next_state = D;  
		
			D :
					if(~request) next_state = A; 
					else next_state = D; 
					
			E :
					if(~request) next_state = A; 
					else next_state = E; 
			
		endcase
		
always @ (posedge clock)///in D state can be change again?present state
		case (present_state)
			A: 
				begin  
					regP=1'b0 ;  
					regQ=1'b0 ;
				end
				
         B: 
				begin 
					regP=1'b0 ;  
					regQ=1'b0 ;
				end
				
         C: 
				begin 
					regP=1'b0 ;  
					regQ=1'b0 ;
				end
				
         E: 
				begin 
					regP=1'b0 ;  
					regQ=1'b0 ;
				end
				
         D: 
				begin 
				if(~request)
					begin
						regP=1'b0 ;  
						regQ=1'b0 ;
					end
				else
					begin
						if (user[7] == 1'b0) 
							begin 
								regP=1'b1 ;  
								regQ=1'b0 ;
							end
						
						else 
							begin 
								regP=1'b0 ;  
								regQ=1'b1 ;
                    end
					end
				end
		endcase
endmodule