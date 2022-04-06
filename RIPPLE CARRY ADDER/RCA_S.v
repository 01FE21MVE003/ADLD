`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:59 03/04/2022 
// Design Name: 
// Module Name:    RCA_S 
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
module RCA_S(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 wire c0,c1,c2;
FA a1 (a[0],b[0],cin,sum[0],c0);
FA a2 (a[1],b[1],c0,sum[1],c1);
FA a3 (a[2],b[2],c1,sum[2],c2);
FA a4 (a[3],b[3],c2,sum[3],cout);
endmodule
