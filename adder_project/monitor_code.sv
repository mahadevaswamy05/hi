`include "uvm_macros.svh"
import uvm_pkg::*;

class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)

  uvm_analysis_port #(transaction) send;

  function new(input string name = "monitor", uvm_component parent = null);
  super.new(name, parent);
   send = new ("Write",this);
endfunction 

transaction t;
virtual add_if aif;

virtual function void build_phase (uvm_phase phase);
super.build_phase(phase);
t= transaction::type_id::create("TRANS");

if(!uvm_config_db #(virtual add_if)::get(this,"","aif",aif))
  `uvm_error("MON","Unable to Access uvm_config_db");
endfunction


virtual task run_phase (uvm_phase phase);
@(negedge aif.rst);
forever begin
 @(posedge aif.clk);
t.a = aif.a;
t.b = aif.b;
t.cin = aif.cin;
//t.sum = aif.sum;
//t.cout = aif.cout;

//`uvm_info("MON", $sformatf("Data send to Scoreboard a : %0d , b : %0d ,cin:%d and sum : %0d , cout:%d", t.a, t.b, t.cin, t.sum,t.cout), UVM_NONE);
send.write(t);
end
endtask

endclass
