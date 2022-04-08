`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:16 04/01/2022 
// Design Name: 
// Module Name:    ram_tb 
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
module ram_tb;
reg [9:0] address;
wire [7:0] data_out;
reg [7:0] data_in;
reg write, select;
integer k, myseed;
ram RAM(data_out,data_in,address,write,select);
initial
begin
for (k=0;k<=1023;k=k+1)
begin
data_in = (k+k)%256; write = 1; select = 1;
#2 address = k; write=0; select=0;
end
repeat(20)
begin
#2 address = $random(myseed)%1024;
write = 0; select = 1;
$display("Address: %5d, Data: %4d",address,data_out);
end 
end
initial myseed = 35;
endmodule
