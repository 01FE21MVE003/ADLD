`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:45 03/04/2022 
// Design Name: 
// Module Name:    RCA_B 
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
module RCA_B(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg  cout
    );
	reg c0,c1,c2;
always @(a,b,cin)
begin

	 sum[0]=a[0]^b[0]^cin;
	c0=(a[0]&b[0])|(b[0]&cin)|(cin&a[0]);
	  sum[1]=a[1]^b[1]^c0;
	  c1=(a[1]&b[1])|(b[1]&c0)|(c0&a[1]);
	 sum[2]=a[2]^b[2]^c1;
	  c2=(a[2]&b[2])|(b[2]&c1)|(c1&a[2]);
	 sum[3]=a[3]^b[3]^c2;
	 cout=(a[3]&b[3])|(b[3]&c2)|(c2&a[3]);
end

endmodule
