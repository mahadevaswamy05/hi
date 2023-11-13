//i.Signal 'a' Randomize 'a' between 0-3 70% , Randomize 'a' between 4-10 30%
//ii.Continuing above b should be 1 if a has 70% distribution, b should be 0 if a has 30% distribution
  class packet;
    rand bit [3:0] a;
    rand bit b;
    constraint a1{ a dist {[0:3]:=70,[4:10]:=30};}
    constraint a2{ if(a inside {[0:3]})
      b==1;
      else if(a inside {[4:10]})
        b==0;}
        constraint a3{solve a before b;}
      endclass

      module tb;
      packet p1;
      initial begin
        p1=new();
        repeat(10) begin
          void'(p1.randomize());
          $display("a:%0d , b:%0d",p1.a,p1.b);
        end end
        endmodule 



