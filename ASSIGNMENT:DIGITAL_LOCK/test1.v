`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:38 05/16/2022 
// Design Name: 
// Module Name:    test1 
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
module test1;
reg [3:0] data_in;
reg clk,start;
wire done;

datapath DP(ldep,clep,incc,equal,not_equal,lte,gt,data_in,clk);
controlpath CON(ldep,clep,incc,equal,not_equal,lte,gt,clk,start,done);

initial
begin
clk = 1'b0;
#3 start = 1'b1;
#500 $finish;
end

always #5 clk = ~clk;

initial 
begin
# 10 data_in = 1101;
end

initial 
begin
$monitor($time, "%d %b", DP.ua,done);
$dumpfile("test1.vcd");
$dumpvars(0,test1);
end
endmodule
