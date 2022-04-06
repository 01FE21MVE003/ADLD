`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:44 04/06/2022 
// Design Name: 
// Module Name:    UPDOWNCOUNTER 
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
module UPDOWNCOUNTER(
input clk, reset,up_down, 
output[3:0]  counter
    );
reg [3:0] counter_up_down;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up_down <= 4'h0;
else if(~up_down)
 counter_up_down <= counter_up_down + 4'd1;
else
 counter_up_down <= counter_up_down - 4'd1;
end 
assign counter = counter_up_down;
endmodule
