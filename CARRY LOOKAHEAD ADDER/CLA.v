`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:10 03/07/2022 
// Design Name: 
// Module Name:    CLA 
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
module CLA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
wire c1,c2,c3;
wire [3:0] p,g;
assign g[0]=a[0]&b[0];
assign g[1]=a[1]&b[1];
assign g[2]=a[2]&b[2];
assign g[3]=a[3]&b[3];
assign p[0]=a[0]|b[0];
assign p[1]=a[1]|b[1];
assign p[2]=a[2]|b[2];
assign p[3]=a[3]|b[3];
assign c1=g[0]|(p[0]&cin);
assign c2=g[1]|(p[1]&g[0]);
assign c3=g[2]|(p[2]&g[1]);
assign cout=g[3]|(p[3]&g[2]);
assign sum[0]=(p[0]^g[0])^cin;
assign sum[1]=(p[1]^g[1])^c1;
assign sum[2]=(p[2]^g[2])^c2;
assign sum[3]=(p[3]^g[3])^c3;

endmodule
