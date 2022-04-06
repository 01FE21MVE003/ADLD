`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:59:09 03/10/2022
// Design Name:   MUX4X1
// Module Name:   D:/ADLD Jamuna/MUX/MUX4X1_tb.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX4X1_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg sel0;
	reg sel1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX4X1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.out(out), 
		.sel0(sel0), 
		.sel1(sel1)
	);

	initial begin
		
		A = 1;
		B = 0;
		C = 0;
		D = 0;
		sel0 = 0;
		sel1 = 0;
		#100;
		
		A = 0;
		B = 1;
		C = 0;
		D = 0;
		sel0 = 0;
		sel1 = 1;
		#100;
		
		A = 0;
		B = 0;
		C = 1;
		D = 0;
		sel0 = 1;
		sel1 = 0;
		#100;
		
		A = 0;
		B = 0;
		C = 0;
		D = 1;
		sel0 = 1;
		sel1 = 1;
		#100;
		
		A = 0;
		B = 1;
		C = 1;
		D = 1;
		sel0 = 0;
		sel1 = 0;
		#100;
		
		A = 1;
		B = 0;
		C = 1;
		D = 1;
		sel0 = 0;
		sel1 = 1;
		#100;
		
		A = 1;
		B = 1;
		C = 0;
		D = 1;
		sel0 = 1;
		sel1 = 0;
		#100;
		
		A = 1;
		B = 1;
		C = 1;
		D = 0;
		sel0 = 1;
		sel1 = 1;
		#100;
		
       

	end
      
endmodule

