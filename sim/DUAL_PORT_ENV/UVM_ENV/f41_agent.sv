import uvm_pkg::*;
class f41_agent extends uvm_agent;
    f41_driver drv;
    f41_monitor mon;
	f41_sequencer sqr;
	uvm_analysis_port #(f_transaction) ap;
    `uvm_component_utils(f41_agent);
	
    //  Group: Configuration Object(s)
    //  Group: Components
    //  Group: Variables
	extern virtual function void build_phase(uvm_phase phase);
	extern virtual function void connect_phase(uvm_phase phase);
    //  Constructor: new
    function new(string name = "f41_agent", uvm_component parent);
        super.new(name, parent);
    endfunction: new
endclass: f41_agent

/**
 * @see uvm_pkg::uvm_agent.build_phase
 * @param phase - 
 */
function void f41_agent::build_phase(uvm_phase phase);
	// TODO Auto-generated function stub
	super.build_phase(phase);
	if(is_active == UVM_ACTIVE) begin
		drv = f41_driver::type_id::create("drv", this);
		sqr = f41_sequencer::type_id::create("sqr",this);
	end
	mon = f41_monitor::type_id::create("mon",this);
endfunction : build_phase

/**
 * @see uvm_pkg::uvm_component.connect_phase
 * @param phase - 
 */
function void f41_agent::connect_phase(uvm_phase phase);
	// TODO Auto-generated function stub
	super.connect_phase(phase);
	if(is_active == UVM_ACTIVE) begin
		drv.seq_item_port.connect(sqr.seq_item_export);
		end
	ap = mon.ap;
endfunction : connect_phase 
