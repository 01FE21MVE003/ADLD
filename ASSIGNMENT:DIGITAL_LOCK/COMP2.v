`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:43:03 05/16/2022 
// Design Name: 
// Module Name:    COMP2 
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
module COMP2(lte,gt,ua);
input [2:0] ua;
output lte,gt;
assign lte = ua <= 3;
assign gt = ua > 3;
endmodule
