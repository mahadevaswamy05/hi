//writethe code each time inrcement by 4


class packet;
  rand bit [7:0] a[];

  constraint a_ddrr {a.size()==10;
  foreach(a[i])
    if(i==0)
      a[i]==4;
      else if (i==1)
        a[i]==8;
        else
          a[i]-a[i-1]==4;}
        endclass

  module tb;
  packet n1;
  initial begin
    n1 = new();

    repeat(5) begin
      void'(n1.randomize);
      $display("the a=%0p", n1.a);
    end
  end
  endmodule


