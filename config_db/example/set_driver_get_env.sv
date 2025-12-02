//here i'm setting the things the inside the driver of connect_phase and getting the things in the things in inside of the connect_phase of the env.


`include "uvm_macros.svh"
import uvm_pkg::*;


class sequencer extends uvm_sequencer;
  `uvm_component_utils(sequencer)

  function new (string name, uvm_component parent);
    super.new(name, parent); 
  endfunction
endclass

class driver extends uvm_driver;
  `uvm_component_utils(driver)

  int v1 =10;
  function new(input string path = "driver", uvm_component parent = null);
    super.new(path, parent);
  endfunction


  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
    endfunction

   virtual function void connect_phase(uvm_phase phase);
   super.connect_phase(phase);
    uvm_config_db #(int)::set(null,"*","v1",v1);
      `uvm_info("Driver","set success",UVM_LOW); 
 endfunction

virtual task run_phase(uvm_phase phase);
forever begin
  `uvm_info("DRV", "Inside from the driver",UVM_LOW);
 #10;
end
endtask
endclass

class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)

  function new(input string path = "monitor",uvm_component parent = null);
    super.new(path,parent);
  endfunction


  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction
endclass

class agent extends uvm_agent;
  `uvm_component_utils(agent)
  
  //  int v3;
  function new(string name ="agent",uvm_component parent = null);
    super.new(name,parent);
  endfunction

  monitor m;
  driver d;
  sequencer s;

  virtual function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  m= monitor::type_id::create("m",this);
  d = driver::type_id::create("d",this);
  s = sequencer ::type_id::create("s",this);
   endfunction

  virtual function void connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  d.seq_item_port.connect(s.seq_item_export);
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
   endfunction
  
   virtual function void connect_phase(uvm_phase phase);
  super.connect_phase(phase);
   uvm_config_db #(int)::get(null,"","v1",v2);
`uvm_info("Env","Success",UVM_MEDIUM);
$display("the getting the data in inside the Env v2:%d",v2);
endfunction
endclass

  class test extends uvm_test;
    `uvm_component_utils(test)

    env e1;

    function new(string name ="test",uvm_component parent = null);
      super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    e1=env::type_id::create("e1",this); 
  endfunction

  virtual task run_phase(uvm_phase phase);
  phase.raise_objection(this);
  #10;
  `uvm_info("1,Test","waiting for test",UVM_LOW);
  `uvm_info("2,Test","waiting for test",UVM_LOW);
  `uvm_info("3,Test","waiting for test",UVM_LOW);
  `uvm_info("4,Test","waiting for test",UVM_LOW);
  `uvm_info("5,Test","waiting for test",UVM_LOW);
  `uvm_info("6,Test","waiting for test",UVM_LOW);
  `uvm_info("7,Test","waiting for test",UVM_LOW);
  `uvm_info("8,Test","waiting for test",UVM_LOW);
  `uvm_info("9,Test","waiting for test",UVM_LOW);
  `uvm_info("10,Test","waiting for test",UVM_LOW);
  `uvm_info("11,Test","waiting for test",UVM_LOW);
  `uvm_info("12,Test","waiting for test",UVM_LOW);
  `uvm_info("13,Test","waiting for test",UVM_LOW);
  `uvm_info("14,Test","waiting for test",UVM_LOW);
  `uvm_info("15,Test","waiting for test",UVM_LOW);
  `uvm_info("16,Test","waiting for test",UVM_LOW);
  `uvm_info("17,Test","waiting for test",UVM_LOW);
  `uvm_info("18,Test","waiting for test",UVM_LOW);
  `uvm_info("19,Test","waiting for test",UVM_LOW);
  `uvm_info("20,Test","waiting for test",UVM_LOW);
  `uvm_info("21,Test","waiting for test",UVM_LOW);
  `uvm_info("22,Test","waiting for test",UVM_LOW);
  `uvm_info("23,Test","waiting for test",UVM_LOW);
  `uvm_info("24,Test","waiting for test",UVM_LOW);
  `uvm_info("25,Test","waiting for test",UVM_LOW);
  `uvm_info("26,Test","waiting for test",UVM_LOW);
  `uvm_info("27,Test","waiting for test",UVM_LOW);
  `uvm_info("28,Test","waiting for test",UVM_LOW);
  `uvm_info("29,Test","waiting for test",UVM_LOW);
  `uvm_info("30,Test","waiting for test",UVM_LOW);
  `uvm_info("31,Test","waiting for test",UVM_LOW);
  `uvm_info("32,Test","waiting for test",UVM_LOW);
  `uvm_info("33,Test","waiting for test",UVM_LOW);
  `uvm_info("34,Test","waiting for test",UVM_LOW);
  `uvm_info("35,Test","waiting for test",UVM_LOW);
  `uvm_info("36,Test","waiting for test",UVM_LOW);
  `uvm_info("37,Test","waiting for test",UVM_LOW);
  `uvm_info("38,Test","waiting for test",UVM_LOW);
  `uvm_info("39,Test","waiting for test",UVM_LOW);
  `uvm_info("40,Test","waiting for test",UVM_LOW);
  `uvm_info("41,Test","waiting for test",UVM_LOW);
  `uvm_info("42,Test","waiting for test",UVM_LOW);
  `uvm_info("43,Test","waiting for test",UVM_LOW);
  `uvm_info("44,Test","waiting for test",UVM_LOW);
  `uvm_info("45,Test","waiting for test",UVM_LOW);
  `uvm_info("46,Test","waiting for test",UVM_LOW);
  `uvm_info("47,Test","waiting for test",UVM_LOW);
  `uvm_info("48,Test","waiting for test",UVM_LOW);
  `uvm_info("49,Test","waiting for test",UVM_LOW);
  `uvm_info("50,Test","waiting for test",UVM_LOW);
  `uvm_info("51,Test","waiting for test",UVM_LOW); 
  `uvm_info("52,Test","waiting for test",UVM_LOW);
  `uvm_info("53,Test","waiting for test",UVM_LOW);
  `uvm_info("54,Test","waiting for test",UVM_LOW);
  `uvm_info("55,Test","waiting for test",UVM_LOW);
  `uvm_info("56,Test","waiting for test",UVM_LOW);
  `uvm_info("57,Test","waiting for test",UVM_LOW);
  `uvm_info("58,Test","waiting for test",UVM_LOW);
  `uvm_info("59,Test","waiting for test",UVM_LOW);
  `uvm_info("60,Test","waiting for test",UVM_LOW);
  `uvm_info("61,Test","waiting for test",UVM_LOW);
  `uvm_info("62,Test","waiting for test",UVM_LOW);
  `uvm_info("63,Test","waiting for test",UVM_LOW);
  `uvm_info("64,Test","waiting for test",UVM_LOW);
  `uvm_info("65,Test","waiting for test",UVM_LOW);
  `uvm_info("66,Test","waiting for test",UVM_LOW);
  `uvm_info("67,Test","waiting for test",UVM_LOW);
  `uvm_info("68,Test","waiting for test",UVM_LOW);
  `uvm_info("69,Test","waiting for test",UVM_LOW);
  `uvm_info("70,Test","waiting for test",UVM_LOW);
  `uvm_info("71,Test","waiting for test",UVM_LOW);
  `uvm_info("72,Test","waiting for test",UVM_LOW);
  `uvm_info("73,Test","waiting for test",UVM_LOW);
  `uvm_info("74,Test","waiting for test",UVM_LOW);
  `uvm_info("75,Test","waiting for test",UVM_LOW);
  `uvm_info("76,Test","waiting for test",UVM_LOW);
  `uvm_info("77,Test","waiting for test",UVM_LOW);
  `uvm_info("78,Test","waiting for test",UVM_LOW);
  `uvm_info("79,Test","waiting for test",UVM_LOW);
  `uvm_info("80,Test","waiting for test",UVM_LOW);
  `uvm_info("81,Test","waiting for test",UVM_LOW);
  `uvm_info("82,Test","waiting for test",UVM_LOW);
  `uvm_info("83,Test","waiting for test",UVM_LOW);
  `uvm_info("84,Test","waiting for test",UVM_LOW);
  `uvm_info("85,Test","waiting for test",UVM_LOW);
  `uvm_info("86,Test","waiting for test",UVM_LOW);
  `uvm_info("87,Test","waiting for test",UVM_LOW);
  `uvm_info("88,Test","waiting for test",UVM_LOW);
  `uvm_info("89,Test","waiting for test",UVM_LOW);
  `uvm_info("90,Test","waiting for test",UVM_LOW);
  `uvm_info("91,Test","waiting for test",UVM_LOW);
  `uvm_info("92,Test","waiting for test",UVM_LOW);
  `uvm_info("93,Test","waiting for test",UVM_LOW);
  `uvm_info("94,Test","waiting for test",UVM_LOW);
  `uvm_info("95,Test","waiting for test",UVM_LOW);
  `uvm_info("96,Test","waiting for test",UVM_LOW);
  `uvm_info("97,Test","waiting for test",UVM_LOW);
  `uvm_info("98,Test","waiting for test",UVM_LOW);
  `uvm_info("99,Test","waiting for test",UVM_LOW);
  `uvm_info("100,Test","waiting for test",UVM_LOW);
  `uvm_info("101,Test","waiting for test",UVM_LOW);

  `uvm_info("102,Test","waiting for test",UVM_LOW);
  `uvm_info("103,Test","waiting for test",UVM_LOW);
  `uvm_info("104,Test","waiting for test",UVM_LOW);
  `uvm_info("105,Test","waiting for test",UVM_LOW);


  phase.drop_objection(this);
endtask
endclass


module top;
initial begin
  run_test("test");
end
endmodule
