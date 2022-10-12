class scoreboard;
int no_transaction;
mailbox m2s;
function = new(mailbox m2s)
	this.m2s = m2s;
endfunction

task main();
transaction trans;
forever begin
m2b.get(trans)
  if (trans.addr >= 0 ) begin
  //  if (trans.addr >= 0 & trans.addr <= 8'h3f) begin
if (trans.addr_a != trans.addr | trans.data_a != trans.data)
$display ("Model failed - addr=%0h data=%0h addr_a=%0h data_a=%0h", trans.addr, trans.data, trans.addr_a, trans.data_a);
else
$display ("Model passed - addr=%0h data=%0h addr_a=%0h data_a=%0h", trans.addr, trans.data, trans.addr_a, trans.data_a);
end else begin
if (trans.addr_b != trans.addr | trans.data_b != trans.data)
$display ("Model failed - addr=%0h data=%0h addr_b=%0h data_b=%0h", trans.addr, trans.data, trans.addr_b, trans.data_b);
else
$display ("Model passed - addr=%0h data=%0h addr_b=%0h data_b=%0h", trans.addr, trans.data, trans.addr_b, trans.data_b);
end
end
no_transaction++;
endtask
endclass
