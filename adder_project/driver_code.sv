`include "uvm_macros.svh"
import uvm_pkg::*;


class driver extends uvm_driver #(transaction);
  `uvm_component_utils(driver)

  function new(input string name = "driver", uvm_component parent = null);
  super.new(name, parent);
  endfunction 


transaction data;
virtual add_if aif;


//logic for reset 
//
task rest_dut();
  aif.rst<=1'b1;
  aif.a <=0;
  aif.b <=0;
  aif.cin <=0;
  repeat(5)begin
    @(posedge aif.clk);
  aif.rst<=1'b0;
end

  `uvm_info("DRV","Reset is Done",UVM_NONE);
endtask


//build_phase 
//

  virtual function void build_phase(uvm_phase phase);
 super.build_phase(phase);
  data = transaction::type_id::create("data");

  if(!uvm_config_db #(virtual add_if )::get(this,"","aif",aif))
    `uvm_error("DRV","Unable to access the UVM_CONFIG_DB");
  endfunction


virtual task run_phase(uvm_phase phase);
rest_dut();

repeat(5) begin 
seq_item_port.get_next_item(data);
aif.a <=data.a;
aif.b <=data.b;
aif.cin <= data.cin;


  `uvm_info("DRV",$sformatf("Trigger DUT a:%0d, b:%0d,cin:%0d",data.a,data.b,data.cin),UVM_NONE);

seq_item_port.item_done();
  @(posedge aif.clk);
 // @(posedge aif.clk);
end
endtask
endclass 

