`include "interface.sv"
`include "test.sv"
module testbench;
bit clk;
bit rstn;
always #10 clk = ~clk;
initial begin
rstn = 0;
#5 rstn = 1;
end
intf intf(clk,rstn);
test t1(intf);
switch DUT (
.clk(intf.clk),
.rstn(intf.rstn),
.vld(intf.vld),
.addr(intf.addr),
.data(intf.data),
.addr_a(intf.addr_a),
.data_a(intf.data_a),
.addr_b(intf.addr_b),
.data_b(intf.data_b),
); 
initial begin
$dumpfile("dump.vcd"); $dumpvars;
end
endmodule
