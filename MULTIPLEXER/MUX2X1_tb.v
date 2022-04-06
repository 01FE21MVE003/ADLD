`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:07 03/10/2022
// Design Name:   MUX2X1
// Module Name:   D:/ADLD Jamuna/MUX/MUX2X1_tb.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX2X1_tb;

	// Inputs
	reg a;
	reg b;
	reg s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	MUX2X1 uut (
		.a(a), 
		.b(b), 
		.o(o), 
		.s(s)
	);

	initial begin

		a = 0;
		b = 0;
		s = 0;
		#100;
		a = 0;
		b = 0;
		s = 1;
		#100;
		a = 0;
		b = 1;
		s = 0;
		#100;
		a = 0;
		b = 1;
		s = 1;
		#100;
		a = 1;
		b = 0;
		s = 0;
		#100;
		a = 1;
		b = 0;
		s = 1;
		#100;
		a = 1;
		b = 1;
		s = 0;
		#100;
		a = 1;
		b = 1;
		s = 1;
		#100;
        

	end
      
endmodule

