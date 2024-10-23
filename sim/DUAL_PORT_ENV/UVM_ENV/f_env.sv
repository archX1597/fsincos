import uvm_pkg::*;
class f_env extends uvm_env;
	`uvm_component_utils(f_env);
	//  Group: Components
	f41_agent i0_agt;
 	f41_agent i1_agt;
	f41_agent o_agt;
	ref_model rfmodel;
	f_scoreboard fadd_scoreboard;
	virtual_sequencer vir_sqr;
	uvm_tlm_analysis_fifo #(f_transaction) agt_mdl_fifo_port0,agt_mdl_fifo_port1,mdl_scboard_fifo_port,
	oagt_scboard_fifo_port;

	//  Constructor: new
	function new(string name = "f_env", uvm_component parent);
		super.new(name, parent);
	endfunction: new

	/*---  UVM Build Phases            ---*/
	extern virtual function void build_phase(uvm_phase phase);
	extern virtual function void connect_phase(uvm_phase phase);

endclass: f_env




function void f_env::build_phase(uvm_phase phase);
	// TODO Auto-generated function stub
	super.build_phase(phase);
	rfmodel = ref_model::type_id::create("rfmodel",this);
	fadd_scoreboard = f_scoreboard::type_id::create("f_scoreboard",this);
	i0_agt = f41_agent::type_id::create("i0_agt",this);
	i1_agt = f41_agent::type_id::create("i1_agt",this);
	o_agt  = f41_agent::type_id::create("o_agt",this);
	vir_sqr = virtual_sequencer::type_id::create("vir_sqr",this);
	agt_mdl_fifo_port0 = new("agt_mdl_fifo_port0",this);
	agt_mdl_fifo_port1 = new("agt_mdl_fifo_port1",this);
	mdl_scboard_fifo_port = new("mdl_scboard_fifo_port",this);
	oagt_scboard_fifo_port = new("oagt_scboard_fifo_port",this);
	i0_agt.is_active = UVM_ACTIVE;
	i1_agt.is_active = UVM_ACTIVE;
	o_agt.is_active  = UVM_PASSIVE;
	uvm_config_db#(uvm_object_wrapper)::set(this,
        "vir_sqr.main_phase",
        "default_sequence",
        f41_sequence::type_id::get()
    );


endfunction : build_phase


/**
 * @see uvm_pkg::uvm_component.connect_phase
 * @param phase -
 *
 */
function void f_env::connect_phase(uvm_phase phase);
	// TODO Auto-generated function stub
	super.connect_phase(phase);
	vir_sqr.p_sqr = i0_agt.sqr;
	vir_sqr.n_sqr = i1_agt.sqr;
	i0_agt.ap.connect(agt_mdl_fifo_port0.analysis_export);
	i1_agt.ap.connect(agt_mdl_fifo_port1.analysis_export);
	o_agt.ap.connect(oagt_scboard_fifo_port.analysis_export);
	rfmodel.port0.connect(agt_mdl_fifo_port0.blocking_get_export);
	rfmodel.port1.connect(agt_mdl_fifo_port1.blocking_get_export);
	rfmodel.ap.connect(mdl_scboard_fifo_port.analysis_export);
	fadd_scoreboard.act_port.connect(oagt_scboard_fifo_port.blocking_get_export);
	fadd_scoreboard.exp_port.connect(mdl_scboard_fifo_port.blocking_get_export);
endfunction : connect_phase

