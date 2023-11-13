// 32 bit array, while randomizing  you should not get same value for 2  elements. Write constraint for that.
//

class packet;
  rand bit [3:0] a[];
  constraint a1{a.size()==10;
               foreach(a[i])
                 if(i>0)
                   a[i]!=a[i-1];}
  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(5) begin
      p1.randomize();
      $display("a:%0p",p1.a);
    end
  end
  endmodule
