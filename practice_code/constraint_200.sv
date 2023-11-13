
class packet;
   rand bit[7:0] addr;
  constraint c_addr{( addr inside {[0:100],[200:50]}); }
endclass

module tb;

packet p;
initial begin
  p=new();
  void'(p.randomize());
  repeat(20); begin
  $display("the value of addr=%0d",p.addr);
end
end
endmodule 
