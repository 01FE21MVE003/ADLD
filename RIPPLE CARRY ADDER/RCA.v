`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:03 03/04/2022 
// Design Name: 
// Module Name:    RCA 
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
module RCA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 
	 wire c0,c1,c2;
	 assign sum[0]=a[0]^b[0]^cin;
	 assign c0=(a[0]&b[0])|(b[0]&cin)|(cin&a[0]);
	 assign sum[1]=a[1]^b[1]^c0;
	 assign c1=(a[1]&b[1])|(b[1]&c0)|(c0&a[1]);
	 assign sum[2]=a[2]^b[2]^c1;
	 assign c2=(a[2]&b[2])|(b[2]&c1)|(c1&a[2]);
	 assign sum[3]=a[3]^b[3]^c2;
	 assign cout=(a[3]&b[3])|(b[3]&c2)|(c2&a[3]);


endmodule
