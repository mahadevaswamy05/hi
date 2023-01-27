`include "uvm_macros.svh"
import uvm_pkg::*;


`include "uvm_macros.svh"
`include "design.sv"
`include "interface.sv"
`include "transaction_code.sv"
`include "sequence_code.sv"
`include "sequencer_code.sv"
`include "driver_code.sv"
`include "monitor_code.sv"
`include "monitor_code2.sv"
`include "agent_code.sv"
`include "agent2_code.sv"
`include "scoreboard_code.sv"
`include "env_code.sv"
`include "test_code.sv"

module top();

add_if aif();

initial begin 
  aif.clk = 0;
  aif.rst = 0;
end

always #10 aif.clk = ~aif.clk;

adder dut (.a(aif.a),
          .b(aif.b), 
          .cin(aif.cin), 
          .clk(aif.clk), 
          .rst(aif.rst),
          .sum(aif.sum),
          .cout(aif.cout));

initial begin  
uvm_config_db #(virtual add_if)::set(null, "*", "aif", aif);
run_test("test");
end

endmodule
