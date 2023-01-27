`include "uvm_macros.svh"
import uvm_pkg::*;

class monitor2 extends uvm_monitor;
  `uvm_component_utils(monitor2)

  uvm_analysis_port #(transaction)send2; 
  
  function new (input string name = "monitor2", uvm_component parent = null);
    super.new(name,parent);
    send2= new("send2",this);
  endfunction  

  transaction t;
  virtual add_if aif;

  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  t = transaction::type_id::create("t");
  
  if(!uvm_config_db #(virtual add_if)::get(this,"","aif",aif))
    `uvm_error("MON2","Unable to access UVM_Config_db");
  endfunction  

virtual task run_phase(uvm_phase phase);
forever begin 

@(posedge aif.clk);
t.sum = aif.sum;
t.cout = aif.cout;
send2.write(t);
end
endtask
endclass  

