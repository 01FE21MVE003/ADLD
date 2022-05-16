`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:55 05/16/2022 
// Design Name: 
// Module Name:    datapath 
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
module datapath(ldep,clep,incc,equal,not_equal,lte,gt,data_in,clk,ua);
input ldep,clep,incc,clk;
input [3:0] data_in;
output equal,not_equal,lte,gt;
output [2:0] ua;
wire [3:0] x,y,bus;

PIPO A(x,data_in,ldep,clep,clk);
CNTR B(ua,not_equal,incc,clk);
COMP1 C1(equal,not_equal,x,y);
COMP2 C2(lte,gt,ua);
endmodule
