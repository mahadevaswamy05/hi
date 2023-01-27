
`include "uvm_macros.svh"
import uvm_pkg::*;


class my_sequence extends uvm_sequence #(transaction);
`uvm_object_utils(my_sequence)

transaction t;
integer i; 

 function new (input string name = "my_sequence");
 super.new(name);
 endfunction

 virtual task body();
 t=transaction::type_id::create("t");

repeat(5)
begin 
start_item(t);

void'(t.randomize());

`uvm_info("My_sequence", $sformatf("Data send to Driver a :%0d, b :%0d,cin :%0d",t.a,t.b,t.cin),UVM_NONE);

finish_item(t);
end
endtask 
endclass
