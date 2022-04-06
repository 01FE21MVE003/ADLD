`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:38 03/11/2022
// Design Name:   RCA
// Module Name:   D:/ADLD Jamuna/RCA/RCA_tb.v
// Project Name:  RCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		
		a = 0000;
		b = 0000;
		cin = 0;
		#100;
		
		a = 0001;
		b = 0010;
		cin = 0;
		#100;
		
		a = 0111;
		b = 0111;
		cin = 0;
		#100;
		
		a = 0101;
		b = 0011;
		cin = 0;
		#100;
		
		a = 0100;
		b = 0111;
		cin = 0;
		#100;
		
		a = 1110;
		b = 1100;
		cin = 0;
		#100;
		
		a = 1111;
		b = 1111;
		cin = 0;
		#100;
		

	end
      
endmodule

