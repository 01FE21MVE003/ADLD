`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:15 05/16/2022 
// Design Name: 
// Module Name:    test2 
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
module test2;
reg [3:0] data_in;
reg clk,start;
wire done;

datapath DP(ldep,clep,incc,equal,not_equal,lte,gt,data_in,clk);
controlpath CON(ldep,clep,incc,equal,not_equal,lte,gt,clk,start,done,unlock,alarm);
                 
initial
begin
clk = 1'b0;
#3 start = 1'b1;
#50 $finish;
end

always #5 clk = ~clk;

initial 
begin
# 10 data_in = 1001;
# 10 data_in = 1110;
# 10 data_in = 1111;
end

initial 
begin
$display($time, "%d %b", DP.ua,done);
$dumpfile("test2.vcd");
$dumpvars(0,test2);
end
endmodule
