`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:25 04/01/2022 
// Design Name: 
// Module Name:    mem_synchronous 
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
module mem_synchronous(addr,data_in,data_out,cs,wr,rd,clk);
input [9:0] addr;
input [7:0] data_in;
input cs,wr,rd,clk;
output reg [7:0] data_out;
reg[7:0] mem [1023:0];
assign data_in= (cs&&rd)?data_out:8'bz;
always@(posedge clk)
if(cs && wr && !rd)
mem[addr]=data_in;
always@(posedge clk)
if(cs && rd && !wr)
data_out=mem[addr];
endmodule
