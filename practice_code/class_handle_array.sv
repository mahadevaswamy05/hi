
class packet;
  rand bit [0:4] a;

  constraint a1{a>2;}
endclass

module tb;
packet p[$];

initial begin
  p[0] = new();
  p[1] = new();

  p[0].randomize();
  $display("%0d",p[0].a);
  p[1].rand_mode(0);
  $display("%0d",p[1].a);
end
endmodule
