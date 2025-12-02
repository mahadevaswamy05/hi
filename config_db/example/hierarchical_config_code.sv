
//Here will get the FATAL error because we have set the config_db method into the only component1 class not the component2 class
`include "uvm_macros.svh"
import uvm_pkg::*;

class component1 extends uvm_component;
  `uvm_component_utils(component1)
  int data_c1;

  function new(string name="component1",uvm_component parent=null);
    super.new(name,parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(int)::get(this,"","mod_data",data_c1))begin
      `uvm_error("comp1","Failed"); end
      else begin
       `uvm_info("comp_2","Success",UVM_MEDIUM); end
  endfunction

  virtual task run_phase(uvm_phase phase);
      phase.raise_objection(this);
        `uvm_info("comp1",$sformatf("value : %0d",data_c1),UVM_MEDIUM); 
      phase.drop_objection(this);
    endtask
     
  endclass

  class component2 extends uvm_component;
    `uvm_component_utils(component2)
    int data_c2;

    function new(string name="component2",uvm_component parent=null);
      super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      if(!uvm_config_db#(int)::get(this,"","mod_data",data_c2)) begin
        `uvm_error("comp2","Failed"); end
        else begin
        `uvm_info("comp2","Success",UVM_MEDIUM);
      uvm_report_info("comp2","Success",UVM_MEDIUM);end
  endfunction

  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);
      `uvm_info("comp2",$sformatf("value : %0d",data_c2),UVM_MEDIUM); 
    phase.drop_objection(this);
  endtask
endclass

class agent extends uvm_agent;
  `uvm_component_utils(agent)
  int data_a;
  
  component1 comp1;
  component2 comp2;

  function new(string name="agent",uvm_component parent=null);
    super.new(name,parent);
  endfunction
 
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    comp1=component1 ::type_id::create("comp1",this); 
    comp2=component2 ::type_id::create("comp2",this); 
  endfunction
 
endclass

class environment extends uvm_env;
  
  `uvm_component_utils(environment) 

  agent a;

  function new(string name="environment",uvm_component parent=null);
    super.new(name,parent);
  endfunction
   
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    a=agent ::type_id::create("a",this); 
  endfunction
 
endclass

class test extends uvm_test;

  `uvm_component_utils(test)

  environment env;
  function new(string name="test",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env=environment ::type_id::create("env",this); 
  endfunction
 
endclass
 
module tb;
  int mod_data=17;
  
  initial begin
    uvm_config_db#(int)::set(null,"uvm_test_top.env.a.comp1","mod_data",mod_data);
    run_test("test");
  end
endmodule 
