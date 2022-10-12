`define MON_IF vif.MONITOR.monitor_cb
class monitor;
transaction trans;
virtual intf vif;
mailbox m2s;
function new(virtual vif, mailbox m2s);
	this.vif = vif;
	this.m2s = m2s;
endfunction

task main();
forever begin
transaction trans;
trans = new();
@(posedge vif.MONITOR.clk)
wait(`MON_IF.vld)
trans.addr_a <= vif.addr_a;
trans.data_a <= vif.data_a;
trans.addr_b<= vif.addr_b;
trans.data_b <= vif.data_b;
m2s.put(trans)
end task
endclass
