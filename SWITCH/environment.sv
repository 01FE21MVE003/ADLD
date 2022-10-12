`include “transaction.sv”
`include “generator.sv”
`include “driver.sv”
`include “monitor.sv”
`include “scoreboard.sv”

class environment;
generator gen;
driver driv;
monitor mon;
scoreboard scb;
   
mailbox g2d;
mailbox m2s; 
virtual intf vif;
 
function new(virtual intf vif);
this.vif = vif;
g2d = new();
m2s = new();
gen = new(g2d);
driv = new(vif, g2d);
mon = new(vif, m2s);
scb = new(m2s);
endfunction

task pretest();
driv.reset();
endtask

task test();
fork
gen.main();
driv.main();
mon.main();
scb.main();     
join_any
endtask

task posttest();
wait(gen.repeat_count == driv.no_transaction);
wait(gen.repeat_count == scb.no_transaction);
endtask 
    
task run;
pre_test();
test();
post_test();
$finish;
endtask
endclass

