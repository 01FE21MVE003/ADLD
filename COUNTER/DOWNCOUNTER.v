`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:12 04/06/2022 
// Design Name: 
// Module Name:    DOWNCOUNTER 
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
module DOWNCOUNTER(
input clk, reset,
output [3:0] counter
    );
reg [3:0] counter_down;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter_down <= 4'hf;
else
 counter_down <= counter_down - 4'd1;
end 
assign counter = counter_down;
endmodule