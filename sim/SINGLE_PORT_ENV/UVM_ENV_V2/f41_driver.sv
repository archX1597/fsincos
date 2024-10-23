import uvm_pkg::*;
class f41_driver extends uvm_driver#(f_transaction);
        `uvm_component_utils(f41_driver)
         virtual f41_if drv_vif;
    //Group function
        virtual function void build_phase(uvm_phase phase);
            /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
            /*  For more information see UVM Cookbook v1800.2 p.503  */
            super.build_phase(phase);
            `uvm_info(get_name(), "build phase is called", UVM_NONE);
            if(!uvm_config_db#(virtual f41_if)::get(this,"","drv_vif",drv_vif))
	            `uvm_fatal("f41_driver", "viratual interface must be set for vif !!");
        endfunction: build_phase
        
    //Group task
      virtual task main_phase(uvm_phase phase);
            drv_vif.valid = 1'b0;
            while(!drv_vif.rst_n)
                @(posedge drv_vif.clk)
	        while(1) begin
			    seq_item_port.get_next_item(req);
                if(!drv_vif.allow) begin
                    wait(drv_vif.allow == 1'b1);
                end
			    drive_pkt(req);
			    seq_item_port.item_done();
			end
        endtask: main_phase
        
        virtual task drive_pkt(f_transaction f_tr1);
                @(posedge drv_vif.clk)
                drv_vif.valid  = 1'b1;
                drv_vif.exp8   = f_tr1.f41_exp8;
                drv_vif.frac32 = f_tr1.frac32;
                drv_vif.frac36 = f_tr1.frac36;                
                drv_vif.frac40 = f_tr1.frac40;                
                drv_vif.sign   = f_tr1.sign;
                drv_vif.sin_cos = f_tr1.sin_cos;
                @(posedge drv_vif.clk)
                drv_vif.valid = 1'b0;
        endtask
    //constructor:new
        function new(string name = "f41_driver",uvm_component parent = null);
            super.new(name,parent);
        endfunction
        

    endclass
