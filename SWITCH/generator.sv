class generator;
rand transaction trans;
mailbox g2d;
event ended;
function new(mailbox g2d,event ended);
	this.g2d = g2d;
	this.ended = ended;
endfunction
int repeat_count;
task main();
	repeat(repeat_count) begin
trans = new();
	if(!trans.randomize())$fatal(“Gen :: Trans not randomized”);
	g2d.put(trans)
	end
->ended;
endtask
endclass
