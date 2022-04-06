`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:47 03/19/2022 
// Design Name: 
// Module Name:    COMPARE 
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
module COMPARE(gt,eq,lt,data1,data2);
input [15:0] data1,data2;
output gt,eq,lt;
assign lt = data1 < data2;
assign gt = data1 > data2;
assign eq = data1 == data2;
endmodule
