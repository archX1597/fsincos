import uvm_pkg::*;
class virtual_sequencer extends uvm_sequencer;
    `uvm_component_utils(virtual_sequencer)

    f41_sequencer p_sqr;  // sequencerA
    f41_sequencer n_sqr;  // sequencerB

function new(string name="virtual_sqr", uvm_component parent);
    super.new(name, parent);
endfunction: new


endclass