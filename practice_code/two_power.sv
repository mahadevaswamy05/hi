
class packet;
  rand bit [7:0] a;
  //constraint c1{ $onehot0(a) == 1; }
  constraint a2{  a!= 0;(a & (a-1)) == 0;} 
  constraint a1 { unique {a};} 
endclass
module tb;
packet p1;
initial begin
  p1 = new();
  repeat(20) begin
    p1.randomize();
    $display("the value a = %0d",p1.a);
  end end
  endmodule

