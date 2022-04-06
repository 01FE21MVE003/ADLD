`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:52:06 03/10/2022
// Design Name:   PE42_D
// Module Name:   D:/ADLD Jamuna/PE42/PE42_tb.v
// Project Name:  PE42
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PE42_D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PE42_tb;

	// Inputs
	reg Y0;
	reg Y1;
	reg Y2;
	reg Y3;

	// Outputs
	wire A0;
	wire A1;

	// Instantiate the Unit Under Test (UUT)
	PE42_D uut (
		.A0(A0), 
		.A1(A1), 
		.Y0(Y0), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3)
	);

	initial begin
		
		Y0 = 1;
		Y1 = 0;
		Y2 = 0;
		Y3 = 0;
		#100;
		
		Y0 = 0;
		Y1 = 1;
		Y2 = 0;
		Y3 = 0;
		#100;
		
		Y0 = 0;
		Y1 = 0;
		Y2 = 1;
		Y3 = 0;
		#100;
		
		Y0 = 0;
		Y1 = 0;
		Y2 = 0;
		Y3 = 1;
		#100;
		
		Y0 = 0;
		Y1 = 0;
		Y2 = 0;
		Y3 = 0;
		#100;
        
	end
      
endmodule

