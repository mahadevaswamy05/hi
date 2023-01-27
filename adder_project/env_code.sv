`include "uvm_macros.svh" 
import uvm_pkg::*;

class env extends uvm_env;
  `uvm_component_utils(env)

  function new (input string name = "env",uvm_component parent =  null);
    super.new(name,parent);
  endfunction 

  scoreboard s;
  agent a;
   agent2 a2; //we were using agents 

 //
  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  s = scoreboard::type_id::create("SCO",this);
  a = agent::type_id::create("AGENT",this);
  a2 = agent2::type_id::create("AGENT2",this);
endfunction
 

virtual function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
//here we sending the data from agent_monitor to scoreboarrd
a.m.send.connect(s.recv1);
a2.m2.send2.connect(s.recv2);
endfunction
endclass
