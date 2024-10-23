all:findlist compile sim 


findlist:
	./linklist.sh

compile:
	vcs -full64      \
	    -fsdb        \
	    -sverilog    \
	    -debug_acc+all -kdb \
	    -timescale=1ns/1ps \
	    -l com.log \
	    -LDFLAGS \
	    -Wl,--no-as-needed -sverilog -ntb_opts uvm-1.2 \
	    -f rtl_list.f \
	    -f dv_env_list.f \
	    top_tb.sv
sim:
	./simv -l sim.log
	
sim_single:
	./simv -gui=verdi \
	       +UVM_VERDI_TRACE="UVM_AWARE+RAL+HIRE+COMPWAVE" \
	       +UVM_TR_RECORD

verdi:
	verdi -2001 \
	      -ssf *.fsdb \
	      -top_tb  \
	      -f rtl_list.f \
	      &
	    
		

clean:
	-rm -rf         simv.daidir	\
			verdiLog	\
			csrc		\
			ucli.key	\
			simv		\
			*.log		\
			*.fsdb		\
			*.conf		\
			*.rc
