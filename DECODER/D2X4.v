`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:19:50 03/10/2022 
// Design Name: 
// Module Name:    D2X4 
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
module D2X4(A,B,D);
input A,B;
output [3:0] D;  
assign D[0]=~A&(~B);
assign D[1]=A&(~B);
assign D[2]=~A&B;
assign D[3]=A&B;
endmodule
