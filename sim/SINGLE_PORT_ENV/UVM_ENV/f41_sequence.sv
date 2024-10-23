import uvm_pkg::*;
class f41_sequence extends uvm_sequence #(f_transaction);
	f_transaction f_trans_1;
	f_transaction f_trans_2;
	`uvm_object_utils(f41_sequence);
	function new(string name = "f41_sequence");
		super.new(name);
	endfunction
	virtual task body();
	if(get_starting_phase()!=null)
		get_starting_phase().raise_objection(this);
		begin
			repeat(10000) begin
			`uvm_do(f_trans_1);
			end
			repeat(10000) begin
			`uvm_do(f_trans_1);
			end
		#1000;
		end
	if(get_starting_phase()!=null)
		get_starting_phase().drop_objection(this);
	endtask;
endclass