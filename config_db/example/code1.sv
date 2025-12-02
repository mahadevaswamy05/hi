`include "uvm_macros.svh"
 import uvm_pkg::*;

module fa(a,b,c,sum,carry);
input [0:3] a,b;
input c;
output reg [0:3] sum;
output reg carry;
//assign {cout,sum}=a+b+c;
assign sum = a ^ b ^ c;
assign carry = (a & b) |(a & c) | (b & c);

endmodule 

interface fa_if();
  logic [3:0]a;
  logic [3:0] b;
  logic c;
  logic [3:0] sum;
  logic carry;
endinterface


class transaction extends uvm_sequence_item;
  rand bit [3:0]  a;
  rand bit [3:0] b;
  rand bit c;
  bit  [3:0] sum;
  bit carry;
 
  

  function new(input string path = "transaction");
    super.new(path);
  endfunction
 
`uvm_object_utils_begin(transaction)
`uvm_field_int(a, UVM_DEFAULT)
`uvm_field_int(b, UVM_DEFAULT)
`uvm_field_int(c, UVM_DEFAULT)
`uvm_field_int(carry, UVM_DEFAULT)
`uvm_field_int(sum, UVM_DEFAULT)
`uvm_object_utils_end
 
endclass
 
class generator extends uvm_sequence #(transaction);
`uvm_object_utils(generator)
 
transaction tr;

  function new(input string path = "generator");
    super.new(path);
  endfunction

 
virtual task body();
  tr = transaction::type_id::create("tr");
  repeat(5) 
    begin
    start_item(tr);
    tr.randomize();
      `uvm_info("GEN",$sformatf("Data send to Driver a :%0b , b :%0b , cin=%0b ",tr.a,tr.b,tr.c), UVM_NONE);
    finish_item(tr);
    end
endtask
 
endclass

class driver extends uvm_driver #(transaction);
`uvm_component_utils(driver)
 
    function new(input string path = "driver", uvm_component parent = null);
      super.new(path, parent);
     endfunction
 
transaction tc;
virtual fa_if aif;
  
    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      tc = transaction::type_id::create("tc");
      if(!uvm_config_db #(virtual fa_if)::get(this,"","aif",aif)) 
      `uvm_fatal("DRV","Unable to access uvm_config_db");
    endfunction
 
    virtual task run_phase(uvm_phase phase);
    forever begin
      
    seq_item_port.get_next_item(tc);
    aif.a <= tc.a;
    aif.b <= tc.b;
    aif.c <= tc.c;
    `uvm_info("DRV", $sformatf("Trigger DUT a: %0b ,b :  %0b, c : %0b",tc.a, tc.b,tc.c), UVM_NONE); 
    seq_item_port.item_done();
    #10;  
      
    end
    endtask
endclass

class monitor extends uvm_monitor;
`uvm_component_utils(monitor) 
uvm_analysis_port #(transaction) send;
 
  function new(input string path = "monitor", uvm_component parent = null);
    super.new(path, parent);
    send = new("send", this);
  endfunction
 
  transaction tr;
  virtual fa_if aif;
 
  virtual function void build_phase(uvm_phase phase);
   super.build_phase(phase);
    tr = transaction::type_id::create("tr");
    
   if(!uvm_config_db #(virtual fa_if)::get(this,"","aif",aif)) 
   `uvm_fatal("MON","Unable to access uvm_config_db");
  endfunction
 
    virtual task run_phase(uvm_phase phase);
    forever begin
    #10;
    tr.a = aif.a;
    tr.b = aif.b;
    tr.c = aif.c;
    tr.sum = aif.sum;
      tr.carry = aif.carry;
      `uvm_info("MON", $sformatf("Data send to Scoreboard a : %0b , b : %0b, c : %0b and sum : %0b, carry :%0b", tr.a,tr.b,tr.c,tr.sum,tr.carry), UVM_NONE);
    send.write(tr);
    end
    endtask
endclass

class agent extends uvm_agent;
`uvm_component_utils(agent)
 
 
function new(input string inst = "AGENT", uvm_component c);
super.new(inst, c);
endfunction
 
monitor m;
driver d;
uvm_sequencer #(transaction) seqr;
 
 
virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
  m = monitor::type_id::create("m",this);
  d = driver::type_id::create("d",this);
  seqr = uvm_sequencer #(transaction)::type_id::create("seqr",this);
endfunction
 
virtual function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
  d.seq_item_port.connect(seqr.seq_item_export);
endfunction
endclass


class scoreboard extends uvm_scoreboard;
`uvm_component_utils(scoreboard)
 
uvm_analysis_imp #(transaction,scoreboard) recv;
 
transaction tr;
 
  function new(input string path = "scoreboard", uvm_component parent = null);
    super.new(path, parent);
    recv = new("recv", this);
  endfunction
 
  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
    tr = transaction::type_id::create("tr");
  endfunction
 
  virtual function void write(input transaction t);
   tr = t;
    `uvm_info("SCO",$sformatf("Data rcvd from Monitor a: %0b , b : %0b c: %0b and sum : %0b, carry
    : %0b",tr.a,tr.b,tr.c,tr.sum,tr.carry), UVM_NONE);
//if((tr.sum==tr.a+tr.b))// &&
 // (tr.carry==tr.a[3]+tr.b[3]))

if((tr.sum == ((tr.a) ^ (tr.b) ^ (tr.c))) && 
   (tr.carry == ((tr.a & tr.b) | (tr.b & tr.c) | (tr.c & tr.a))))
       `uvm_info("SCO","Test Passed", UVM_NONE)
   else
       `uvm_info("SCO","Test Failed", UVM_NONE);
   endfunction  
endclass

class env extends uvm_env;
`uvm_component_utils(env)
 
 
function new(input string inst = "ENV", uvm_component c);
super.new(inst, c);
endfunction
 
scoreboard s;
agent a;
 
virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
  s = scoreboard::type_id::create("s",this);
  a = agent::type_id::create("a",this);
endfunction
 
 
virtual function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
a.m.send.connect(s.recv);
endfunction
 
/*function void end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);
  a.m.send.connect(s.recv);
endfunction*/
endclass

class test extends uvm_test;
`uvm_component_utils(test)
  
function new(input string inst = "TEST", uvm_component parent = null );
super.new(inst, parent);
endfunction
 
generator gen;
env e;
 
virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
  gen = generator::type_id::create("gen");
  e = env::type_id::create("e",this);
endfunction
 
virtual task run_phase(uvm_phase phase);
   phase.raise_objection(this);
   gen.start(e.a.seqr);
   #10;
   phase.drop_objection(this);
endtask
endclass


module adder_tb;

fa_if aif();

  fa dut(.a(aif.a), .b(aif.b), .c(aif.c), .sum(aif.sum), .carry(aif.carry));
  
initial begin  
  uvm_config_db #(virtual fa_if)::set(null, "uvm_test_top.e.a*", "aif", aif);
  run_test("test");
end
 
endmodule
