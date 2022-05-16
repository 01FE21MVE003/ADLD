`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:34 05/16/2022 
// Design Name: 
// Module Name:    controlpath 
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
module controlpath(ldep,clep,incc,equal,not_equal,lte,gt,clk,start,done,unlock,alarm);
input equal,not_equal,lte,gt,clk,start;
output reg ldep,clep,incc,done;
output reg unlock,alarm;
reg [2:0] state;
parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,S4 = 3'b100,S5 = 3'b101,S6 = 3'b110,S7 = 3'b111;

always @(posedge clk)
begin
case(state)
S0 : if(start) state <= S1;
S1 : state <= S2;
S2 : #2 if(equal) state <= S3;
        else if(not_equal) state <= S5;
S3 : state <= S4;
S4 : state <= S4;
S5 : state <= S6;
S6 : #2 if(lte) state <= S1;
        else if(gt) state <= S7;
S7 : state <= S4;
default : state <= S0;
endcase
end

always @(state)
begin
case(state)
S0 : begin ldep=0;clep=0;incc=0; end
S1 : begin ldep=1; end
S2 : if(equal)
     begin
	  unlock = 1;
	  alarm = 0;
	  end
	  else if(not_equal)
	  begin
	  unlock = 0;
	  alarm = 0;
	  end
S3 : begin unlock = 1; end
S4 : begin done = 1; end
S5 : begin incc =1; end
S6 : if(lte)
     begin
     clep = 1;
     end
     else if(gt)
     begin
     unlock = 0;
     alarm = 1;
     end
S7 : begin done = 1; end
default : begin ldep=0;clep=0;incc=0; end
endcase
end	  
endmodule
