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
---  Module Name: smart_scales_system
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`include "../module_1/bmi_module.v"
`include "../module_2/bfp.v"
`include "../module_2/type_of_body.v"
`include "../module_3/bmd.v"

module smart_scales_system(
weight,
height,
wf,
hf,
af,
wm,
hm,
am,
s,
range,
overweight,
normal_bmi,
underweight,
bmdrange,
normal,
abnormal);
input [7:0] height;
input [8:0] weight;
input [2:0] bmdrange;
input [7:0] wf;
input [7:0] hf;
input [7:0] af;
input [7:0] wm;
input [7:0] hm;
input [7:0] am;
input s;
output [7:0] range;
output overweight;
output normal_bmi;
output underweight;
output normal;
output abnormal;

bmi_module bmi_calc(weight,height,overweight,normal_bmi,underweight);
bfp bfp_calc (wf,hf,af,wm,hm,am,s,range);
bmd bmd_calc (bmdrange,normal,abnormal);

endmodule