`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:31 04/01/2022 
// Design Name: 
// Module Name:    mem_asynchronous 
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
module mem_asynchronous(addr,data_in,data_out,cs,wr,rd);
input [9:0] addr;
input [7:0] data_in;
input cs,wr,rd;
output reg [7:0] data_out;
reg[7:0] mem [1023:0];
assign data_in= (cs&&rd)?data_out:8'bz;
always@(addr or data_in or data_out or cs or wr or rd)
if(cs && wr && !rd)
mem[addr]=data_in;
always@(addr or data_in or data_out or cs or wr or rd)
if(cs && rd && !wr)
data_out=mem[addr];
endmodule
