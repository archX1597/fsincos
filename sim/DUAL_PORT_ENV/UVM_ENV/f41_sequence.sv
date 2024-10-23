import uvm_pkg::*;
class f41_sequence extends uvm_sequence #(f_transaction);
	f_transaction f_trans_1;
	f_transaction f_trans_2;
	`uvm_object_utils(f41_sequence);
	`uvm_declare_p_sequencer(virtual_sequencer)
	function new(string name = "f41_sequence");
		super.new(name);
	endfunction
	virtual task body();
	if(get_starting_phase()!=null)
		get_starting_phase().raise_objection(this);
		fork 
		begin
			repeat(10) begin
			`uvm_do_on(f_trans_1,p_sequencer.n_sqr);
			end
		#1000;
		end
		begin
			repeat(10) begin
			`uvm_do_on(f_trans_2,p_sequencer.p_sqr);
			end
		#1000;
		end
		join
		if(get_starting_phase()!=null)
		get_starting_phase().drop_objection(this);
	endtask;
endclass