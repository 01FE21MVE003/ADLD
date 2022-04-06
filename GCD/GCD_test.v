`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:09 03/19/2022 
// Design Name: 
// Module Name:    GCD_test 
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
module GCD_test;
reg [15:0] data_in;
reg clk, start;
wire done;
GCD_datapath DP(gt,eq,lt, LdA, LdB, sel1, sel2, sel_in, data_in, clk);
controller CON(LdA, LdB, sel1, sel2, sel_in, done, clk, gt, eq, lt, start);
initial
begin
clk=1'b0;
#3 start=1'b1;
#1000 $finish;
end
always #5 clk = ~clk;
initial
begin
#12 data_in=143;
#10 data_in=78;
end
initial
begin
$monitor ($time," %d %b",DP.Aout,done);
$dumpfile ("gcd.vcd"); $dumpvars (0,GCD_test);
end
endmodule
