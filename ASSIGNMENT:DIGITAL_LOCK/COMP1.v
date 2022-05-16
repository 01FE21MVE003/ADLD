`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:41:19 05/16/2022 
// Design Name: 
// Module Name:    COMP1 
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
module COMP1(equal,not_equal,data1,data2);
input [3:0] data1,data2;
output equal,not_equal;
assign data2 = 1101;
assign equal = data1 == data2;
assign not_equal = data1 != data2;
endmodule
