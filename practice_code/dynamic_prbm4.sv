//constraint to generate a dynamic array of size 128 to 256 elements.each. element has a difference of 4 wrt neighbour
//

class packet;
  rand bit [9:0] a[];
  constraint a1{a.size() inside {[128:256]};}
  constraint a2{foreach(a[i])
  if(i>0)(a[i] - a[i-1]) ==4;}

  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
      p1.randomize();
      $display("output :%p",p1.a);
    end end 
    endmodule
