`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:04 04/06/2022 
// Design Name: 
// Module Name:    DIGITAL_LOCK 
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
module DIGITAL_LOCK(password_in,clk,rst,unlock);
input clk; 
input rst; 
input password_in; 
output reg unlock; 
parameter  S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;
reg [2:0] current_state, next_state; 
always @(posedge clk, posedge rst)
begin
 if(rst==1) 
 current_state <= S0;
 else
 current_state <= next_state;
end 

always @(current_state,password_in)
begin
 case(current_state) 
 S0:begin
  if(password_in==1)
   next_state = S1;
  else
   next_state = S0;
 end
 S1:begin
  if(password_in==1)
   next_state = S2;
  else
   next_state = S0;
 end
 S2:begin
  if(password_in==0)
   next_state = S3;
  else
   next_state = S2;
 end 
 S3:begin
  if(password_in==1)
   next_state = S4;
  else
   next_state = S0;
 end
 S4:begin
  if(password_in==1)
   next_state = S1;
  else
   next_state = S0;
 end
 default:next_state = S0;
 endcase
end

always @(current_state)
begin 
 case(current_state) 
 S0:  unlock = 0;
 S1:  unlock = 0;
 S2:  unlock = 0;
 S3:  unlock = 0;
 S4:  unlock = 1;
 default:  unlock = 0;
 endcase
end 
endmodule