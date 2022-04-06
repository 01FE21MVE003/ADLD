`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:36 03/10/2022 
// Design Name: 
// Module Name:    MUX10X1 
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
module MUX10X1(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S,Y);
input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
output Y;
input [2:0] S;
wire w1,w2;
MUX4X1 m1 (.A(I0),.B(I1),.C(I2),.D(I3),.out(w1),.sel0(S[0]),.sel1(S[1]));
MUX4X1 m2 (.A(I4),.B(I5),.C(I6),.D(I7),.out(w2),.sel0(S[0]),.sel1(S[1]));
MUX4X1 m3 (.A(w1),.B(w2),.C(I8),.D(I9),.out(Y),.sel0(S[1]),.sel1(S[2]));
endmodule
