
//`include "../new.sv"
module tb;
import pkg::*;
initial begin
`define VALUE = WIDTH;
  pkg::two(2,3);
  $display("the macros %0d",VALUE);
end
endmodule
