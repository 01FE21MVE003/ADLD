`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:26:32 03/10/2022 
// Design Name: 
// Module Name:    MUX4X1 
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
module MUX4X1(
    input A,
    input B,
    input C,
    input D,
    output out,
	 input sel0,
	 input sel1
    );
wire W1,W2;
MUX2X1 u1 (.a(A),.b(B),.o(W1),.s(sel0));
MUX2X1 u2 (.a(C),.b(D),.o(W2),.s(sel0));
MUX2X1 u3 (.a(W1),.b(W2),.o(out),.s(sel1));
endmodule
