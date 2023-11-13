
//Write a constraint for 32 ait address in which the numaer of ones is 10 and no ones is consecutive i.e two aits next to each other are not 1 ?
//

class packet;
  rand bit [31:0] a;
  constraint a1 {$countones(a) == 10;
  foreach(a[i])
    {
      if(i>0) (a[i] & a[i-1]) == 0 ;
    }
  }

endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
  p1.randomize();
  $display("the value %0b",p1.a);
end end
endmodule
