`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:21 03/26/2022 
// Design Name: 
// Module Name:    SD_moore 
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
module SD_moore;
 reg sequence_in;
 reg clock;
 reg reset;
 wire detector_out;

 SD uut (
  .sequence_in(sequence_in), 
  .clock(clock), 
  .reset(reset), 
  .detector_out(detector_out)
 );
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin
 
  sequence_in = 0;
  reset = 1;
  #30;
  reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 0; 
  #20;
  sequence_in = 1; 
  #20;
  sequence_in = 0;  
  
end
initial  begin
   $dumpfile ("dump.vcd"); 
   $dumpvars; 
end 
initial  begin
 $monitor("%d,\t%b,\t%b,\t%b,\t%d",$time,sequence_in,clock,reset,detector_out); 
  end 
  initial 
  #1000  $finish;
 endmodule