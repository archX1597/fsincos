import uvm_pkg::*;
class f41_sequencer extends uvm_sequencer #(f_transaction);
	`uvm_component_utils(f41_sequencer);
    function new(string name,uvm_component parent);
       super.new(name,parent) ;
    endfunction
    
endclass