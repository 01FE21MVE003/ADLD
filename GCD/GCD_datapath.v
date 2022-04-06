`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:53 03/19/2022 
// Design Name: 
// Module Name:    GCD_datapath 
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
module GCD_datapath(gt,eq,lt, LdA, LdB, sel1, sel2, sel_in, data_in, clk);
input LdA, LdB, sel1, sel2, sel_in, clk;
input [15:0] data_in;
output gt,eq,lt;
wire [15:0] X,Y,Aout,Bout,Bus,Subout;
PIPO A(Aout,Bus,LdA,clk); 
PIPO P(Bout,Bus,LdB,clk);
MUX MUX_in1(X,Aout,Bout,sel1);
MUX MUX_in2(Y,Aout,Bout,sel2);
MUX MUX_load(Bus,Subout,data_in,sel_in);
SUB SB (Subout,X,Y);
COMPARE COMP(gt,eq,lt,Aout,Bout);
endmodule
