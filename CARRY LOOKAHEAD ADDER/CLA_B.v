`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:23 03/07/2022 
// Design Name: 
// Module Name:    CLA_B 
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
module CLA_B(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg cout
    );
reg c1,c2,c3;
reg [3:0] p,g;
always@(a,b,cin)
begin
 g[0]=a[0]&b[0];
 g[1]=a[1]&b[1];
 g[2]=a[2]&b[2];
 g[3]=a[3]&b[3];
 p[0]=a[0]|b[0];
 p[1]=a[1]|b[1];
 p[2]=a[2]|b[2];
 p[3]=a[3]|b[3];
 c1=g[0]|(p[0]&cin);
 c2=g[1]|(p[1]&g[0]);
 c3=g[2]|(p[2]&g[1]);
 cout=g[3]|(p[3]&g[2]);
 sum[0]=(p[0]^g[0])^cin;
 sum[1]=(p[1]^g[1])^c1;
 sum[2]=(p[2]^g[2])^c2;
 sum[3]=(p[3]^g[3])^c3;
end
endmodule
