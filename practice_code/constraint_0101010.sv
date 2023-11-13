//it will print 0 and 1 constantly that to 16 bit
class packet;
  rand bit [15:0] a;
  constraint a1{ foreach(a[i])
  if(i%2==0)
    a[i] ==0;
    else
      a[i] ==1;}
    endclass

    module tb;
    packet p1;
    initial begin
      p1 = new();
      p1.randomize();
      $display("output:%b",p1.a);
    end
    endmodule
