
class packet;
  rand bit [3:0] a;
endclass

class top_packet;
  randc packet p1;
  function new();  
    p1 = new();
  endfunction
endclass

module tb;
top_packet t1;
initial begin
  t1 = new();
  repeat(10) begin
  t1.randomize();
  $display("%0d",t1.p1.a);
end end
endmodule
