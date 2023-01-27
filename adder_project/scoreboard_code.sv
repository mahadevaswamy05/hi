
//score_board code

`uvm_analysis_imp_decl(_1)
`uvm_analysis_imp_decl(_2)

`include "uvm_macros.svh"
import uvm_pkg::*; 

class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)

//here they are using uvm_analysis_imp 
  uvm_analysis_imp_1  #(transaction,scoreboard) recv1;
  uvm_analysis_imp_2  #(transaction,scoreboard) recv2; 

 transaction data1, data2;
 virtual add_if aif; 

function new(input string name = "scoreboard", uvm_component parent = null);
  super.new(name,parent);
  recv1 = new("recv1", this);
  recv2 = new("recv2", this);
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
data1 = transaction ::type_id::create("data1");
data2 = transaction ::type_id::create("data2");


if(!uvm_config_db #(virtual add_if)::get(this,"","aif",aif))
  `uvm_error("Sco","Unable to access uvm_config_db");
endfunction 

function void write_1(input transaction t);
data1 = t;
`uvm_info("SCO",$sformatf("Data Received1 from monitor1 a:%0d, b:%0d,cin:%0d",data1.a,data1.b,data1.cin),UVM_NONE);
endfunction  

function void write_2(input transaction t);
data2 = t;
`uvm_info("SCO",$sformatf("Data Received-2 from monitor-2 sum :%0d, cout:%0d",data2.sum,data2.cout),UVM_NONE);
endfunction  



//if(data.y == data.a + data.b)

  virtual task run_phase(uvm_phase phase);
  forever begin 
  @(posedge aif.clk);
  #20;
  if({data2.cout,data2.sum} == data1.a+data1.b+data1.cin)
    `uvm_info("SCO",$sformatf(" Test passed data2.sum=%0d data2.cout=%0d",data2.sum,data2.cout),UVM_NONE)
  else
    `uvm_info("SCO",$sformatf("Test Failed"),UVM_NONE)
  end 
endtask

oendclass 
