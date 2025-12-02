
`include "uvm_macros.svh"
import uvm_pkg::*;


class agent extends uvm_agent;
  `uvm_component_utils(agent)

  int v3;
function new(string name ="agent",uvm_component parent = null);
  super.new(name,parent);
endfunction


virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
if(!uvm_config_db #(int)::get(this,"","v1",v3)) begin
  `uvm_error("A1","Failed");end
  else begin
    `uvm_info("A1","Success",UVM_MEDIUM);
  $display("output of v3 is :%0d",v3);
  end
  endfunction
endclass

class env extends uvm_env;
  `uvm_component_utils(env)
int v2;
  agent a1;

  function new(string name ="env",uvm_component parent = null);
    super.new(name,parent);
  endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
a1=agent::type_id::create("a1",this);
if(!uvm_config_db #(int)::get(this,"","v1",v2)) begin
  `uvm_error("Env","Failed");end
  else begin
    `uvm_info("Env","Success",UVM_MEDIUM);end
  $display("output of v2 is :%0d",v2);
  endfunction

endclass

class test extends uvm_test;
  `uvm_component_utils(test)

 env e1;

  int v1=16;

  function new(string name ="test",uvm_component parent = null);
    super.new(name,parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  e1=env::type_id::create("e1",this); 
  uvm_config_db #(int)::set(this,"e1.a1","v1",v1);
endfunction

virtual task run_phase(uvm_phase phase);
phase.raise_objection(this);
#10;
`uvm_info("Test","waiting for test",UVM_LOW);
phase.drop_objection(this);
endtask

endclass


module top;
initial begin
  run_test("test");
end
endmodule
