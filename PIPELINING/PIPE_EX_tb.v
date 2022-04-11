`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:43 04/11/2022 
// Design Name: 
// Module Name:    PIPE_EX_tb 
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
module PIPE_EX_tb;
parameter N = 10;
reg [N-1:0] A,B,C,D;
reg clk;
wire [N-1:0] F;
PIPE_EX MYPIPE(F,A,B,C,D,clk);
initial clk = 0;
always #10 clk = ~clk;
initial
begin
#5 A = 10; B = 20; C = 6; D = 2;
#20 A = 20; B = 27; C = 16; D = 9;
#20 A = 25; B = 30; C = 36; D = 7;
#20 A = 15; B = 25; C = 65; D = 29;
#20 A = 40; B = 21; C = 55; D = 27;
#20 A = 50; B = 6; C = 19; D = 16;
#20 A = 5; B = 2; C = 45; D = 21;
#20 A = 13; B = 10; C = 36; D = 20;
end
initial 
begin
$dumpfile("pipe1.vcd");
$dumpvars(0,PIPE_EX_tb);
$monitor ("Time: %d, F = %d", $time, F);
#300 $finish;
end
endmodule
