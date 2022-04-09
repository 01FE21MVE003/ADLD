`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:48 04/09/2022 
// Design Name: 
// Module Name:    DIGITAL_LOCK_O_tb 
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
module DIGITAL_LOCK_O_tb;
reg password_in;
reg clk;
reg rst;
wire unlock;
DIGITAL_LOCK_O uut (.password_in(password_in),.clk(clk),.rst(rst),.unlock(unlock));
 initial begin
 clk = 0;
 forever #10 clk = ~clk;
 end 
 initial begin
  password_in = 0;
  rst = 1;
  #30;
  rst = 0;
  #40;
  password_in = 1;
  #20;
  password_in = 1;
  #20;
  password_in = 0; 
  #20;
  password_in = 1; 
  #40;
  password_in = 0; 
  #40;
  password_in = 0; 
  #20;
  password_in = 1; 
  #20;
  password_in = 0; 
  #20;
  password_in = 1; 
  #20;
  password_in = 1; 
  #20;
  password_in = 0; 
  #20;
  password_in = 0;
  #20;
  password_in = 1;
  #20;
  password_in = 0; 
  #20;
  password_in = 1; 
  #40;
  password_in = 1;
  #20;
  password_in = 0;
  #20;
  password_in = 0; 
  #20;
  password_in = 1;
end      
endmodule