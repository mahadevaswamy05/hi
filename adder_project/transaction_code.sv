`include "uvm_macros.svh"
import uvm_pkg::*;

class transaction extends uvm_sequence_item;

  rand bit [3:0]a;
  rand bit [3:0]b;
  rand bit cin;
  bit [3:0] sum;
  bit cout;
  bit rst;
  bit clk;

  `uvm_object_utils_begin(transaction)
  `uvm_field_int(a,UVM_ALL_ON);
  `uvm_field_int(b,UVM_ALL_ON);
  //  `uvm_field_int(cin,UVM_ALL_ON);
  `uvm_field_int(sum,UVM_DEFAULT);
  `uvm_field_int(cout,UVM_DEFAULT);
  `uvm_field_int(cin,UVM_ALL_ON);
  `uvm_field_int(rst,UVM_ALL_ON);
  `uvm_field_int(clk,UVM_DEFAULT);
  `uvm_object_utils_end  
  
  function new(input string name = "transaction"); 
    super.new(name);
  endfunction

endclass
