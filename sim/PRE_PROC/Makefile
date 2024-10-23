all: compile sim 

findlist:
	./linklist.sh

compile:
	vcs -full64      \
	    -sverilog    \
	    -debug_acc+all \
	    -timescale=1ns/1ps \
	    -l com.log \
	    -LDFLAGS \
	    -Wl,--no-as-needed -sverilog -ntb_opts uvm-1.2 \
	    top_tb.sv
sim:
	./simv -l sim.log

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
