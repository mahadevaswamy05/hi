`include "uvm_macros.svh"
import uvm_pkg::*;

class test extends uvm_test;
    `uvm_component_utils(test)

    function new (input string name = "test", uvm_component parent = null);
      super.new(name,parent);
    endfunction 

    env e;
    my_sequence s;

    virtual function void build_phase (uvm_phase phase);
    super.build_phase(phase);
    s=my_sequence::type_id::create("Seq");
    e= env::type_id::create("ENV",this);
  endfunction 


  virtual task run_phase (uvm_phase phase);
  phase.raise_objection(this);
  s.start(e.a.sr);
#30;
phase.drop_objection(this);

endtask 
endclass 
