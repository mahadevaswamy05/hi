//if given the hard weighted value to distributionconstarint in my class during creating the class. but in future if want to override the weighted value.So how to make them generic or parameterized based,explain with example.

  parameter p1=3,p2=5,p3=8;
  class packet;
    rand bit [3:0] a;
    constraint a1{ a dist {5:=p1,7:=p2,1:=p3};}
  endclass

  module tb;  
  packet p1;
  initial begin
    p1 = new();
    repeat(5) begin
      void'(p1.randomize());
      $display("a:%0d ",p1.a);
    end
  end
  endmodule

