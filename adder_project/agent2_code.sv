`include "uvm_macros.svh"
import uvm_pkg::*;

class agent2 extends uvm_agent;
  `uvm_component_utils(agent2)

  function new(input string name = "agent2", uvm_component parent = null);
    super.new(name,parent);
  endfunction 


  monitor2 m2; //why only one monitor means agent is passive agent only 


  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  m2 =  monitor2::type_id::create("m2",this);
endfunction 

endclass 
