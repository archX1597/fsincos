//  Class: f41_monitor
import uvm_pkg::*;
class f41_monitor extends uvm_monitor;
    `uvm_component_utils(f41_monitor);
    virtual f41_if mon_vif;
	uvm_analysis_port #(f_transaction) ap;
    int width;
    virtual function void build_phase(uvm_phase phase);
        /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
        /*  For more information see UVM Cookbook v1800.2 p.503  */
        super.build_phase(phase);
	    if(!uvm_config_db#(virtual f41_if)::get(this,"","mon_vif",mon_vif))
	        `uvm_fatal("f41_monitor", "viratual interface must be set for vif !!"); 
        if(!uvm_config_db#(int)::get(this,"","width",width))
	        `uvm_fatal("f41_monitor", "frac_width need config !!"); 
	    ap = new("ap",this);
    endfunction: build_phase
    
    function new(string name = "f41_monitor", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    extern virtual task main_phase(uvm_phase phase);
    extern virtual task collect_one_pkt(f_transaction tr);
    
endclass: f41_monitor

task f41_monitor::main_phase(uvm_phase phase);
	f_transaction tr;
    while (1) begin
        tr = new("tr");
        collect_one_pkt(tr);
	    ap.write(tr);
	    //`uvm_info(get_name(),"Monitor Write data",UVM_LOW)
	    //tr.print();
	 end
endtask: main_phase

task f41_monitor::collect_one_pkt(f_transaction tr);
    while(1) begin
        @(posedge mon_vif.clk)
        if(mon_vif.valid)
        break;
    end
    	//`uvm_info(get_name(),"Collect data",UVM_LOW)
        tr.f41_exp8   = mon_vif.exp8;
    	tr.frac36     = mon_vif.frac36;
        tr.frac32     = mon_vif.frac32;
        tr.frac40     = mon_vif.frac40;
    	tr.sign       = mon_vif.sign;
        tr.sin_cos    = mon_vif.sin_cos;
        tr.D_ZERO_FLAG = mon_vif.D_ZERO_FLAG;
        tr.X_ZERO_FLAG = mon_vif.X_ZERO_FLAG;
    	tr.init_transaction(width);
        
endtask