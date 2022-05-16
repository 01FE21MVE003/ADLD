`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:37:08 05/16/2022 
// Design Name: 
// Module Name:    PIPO 
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
module PIPO(dout,din,ld,clr,clk);
input [3:0] din;
input ld,clr,clk;
output reg [3:0] dout;
always @(posedge clk)
if (clr) dout <= 4'b0;
else if (ld) dout <= din;
endmodule
