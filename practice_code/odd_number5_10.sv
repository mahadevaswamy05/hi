//{write constraint for 5 to 10 only odd number
class packet;
  rand bit [0:7] a;
  constraint range_c { a inside {[5:10]};}
  constraint odd_c{a%2!=0;}
endclass

module tb;
packet p1;
initial begin
  p1=new();
  repeat(10) begin
  p1.randomize();
  $display("the value val=%0p",p1.a);
 end
end
endmodule
