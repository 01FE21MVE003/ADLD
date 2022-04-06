`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:41 03/19/2022 
// Design Name: 
// Module Name:    SUB 
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
module SUB(out,in1,in2);
input [15:0] in1,in2;
output reg [15:0] out;
always @(*)
out=in1-in2;
endmodule
