`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:14 04/01/2022 
// Design Name: 
// Module Name:    mem_rom 
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
module mem_rom(addr,data_out,rd_en,cs);
input [2:0] addr;
input rd_en,cs;
output reg [7:0] data_out;
always@(addr or data_out or rd_en or cs)
case(addr)
0: data_out=99;
1: data_out=11;
2: data_out=22;
3: data_out=33;
4: data_out=44;
5: data_out=55;
6: data_out=66;
7: data_out=77;
endcase
endmodule
