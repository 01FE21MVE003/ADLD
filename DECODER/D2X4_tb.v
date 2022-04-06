`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:11 03/10/2022
// Design Name:   D2X4
// Module Name:   D:/ADLD Jamuna/DECODE/D2X4_tb.v
// Project Name:  DECODE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D2X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D2X4_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire [3:0] D;

	// Instantiate the Unit Under Test (UUT)
	D2X4 uut (
		.A(A), 
		.B(B), 
		.D(D)
	);

	initial begin
		A = 0;
		B = 0;
		#10;
		
		A = 0;
		B = 1;
		#10;
		
		A = 1;
		B = 0;
		#10;
		
		A = 1;
		B = 1;
		#10;
        

	end
      
endmodule

