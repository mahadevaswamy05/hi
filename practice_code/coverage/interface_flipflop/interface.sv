interface intf(input clk);//interface name is intf
  
  logic t;
  logic out;

  clocking cb @(posedge clk);//clocking block name is cb and triggering in clk
    default input #1; //default value for input is 1
    input t; 
    output out;
  endclocking

  modport mod_dut(clocking cb); //modport name is mod_mp
  modport mod_tb(clocking cb,output t,input out);//second modport name is mod_tb

endinterface
