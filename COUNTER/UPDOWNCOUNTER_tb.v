`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:45 04/06/2022 
// Design Name: 
// Module Name:    UPDOWNCOUNTER_tb 
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
module UPDOWNCOUNTER_tb();
reg clk, reset,up_down;
wire [3:0] counter;

UPDOWNCOUNTER dut(clk, reset,up_down, counter);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
up_down=0;
#20;
reset=0;
#200;
up_down=1;
end
endmodule 
