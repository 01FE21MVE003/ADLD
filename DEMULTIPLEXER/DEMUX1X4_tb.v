`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:01:15 04/07/2022
// Design Name:   DEMUX1X4
// Module Name:   D:/ADLD Jamuna/DEMUX/DEMUX1X4_tb.v
// Project Name:  DEMUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEMUX1X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEMUX1X4_tb;

	// Inputs
	reg [1:0] A;
	reg din;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	DEMUX1X4 uut (
		.Y(Y), 
		.A(A), 
		.din(din)
	);

	initial begin
		
		A = 00;
		din = 1;
		#100;
		
		A = 01;
		din = 1;
		#100;
		
		A = 10;
		din = 1;
		#100;
		
		A = 11;
		din = 1;
		#100;
      

	end
      
endmodule

