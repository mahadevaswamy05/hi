

class packet;
  rand bit [6:0] a[];
  constraint a1{a.size()==20;}
  constraint a2{foreach(a[i])
                  if(i>0)
                  a[i]!= a[i-1];}
  endclass
  module tb;

  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
      void'(p1.randomize());
      $display("%0p",p1.a);
    end
  end
  endmodule
