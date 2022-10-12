class driver;
virtual intf vif;
mailbox g2d;
int no_transaction;
function = new(virtual intf vif, mailbox g2d);
	this.vif = vif;
	this.g2d = g2d;
endfunction

task reset()
	wait(vif.rstn);
vif.addr_a <= 0;
vif.data_a <= 0;
vif.addr_b <= 0;
vif.data_b <= 0;
wait(!vif.rstn);
endtask

task main()
forever begin
transaction trans;
g2d.get(trans)
@(posedge vif.DRIVER.clk)
vif.addr <= trans.addr;
vif.data <= trans.data;
vif.addr_a <= trans.addr_a;
vif.data_a <=trans. data_a;
vif.addr_b <= trans.addr_b;
vif.data_b <= trans.data_b;
no_transaction++;
end
end task
endclass
