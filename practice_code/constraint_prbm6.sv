
//constraint with some sum of values
class packet;
  // >>
  rand bit [7:0] a;
  rand bit [7:0] b;
  rand bit [7:0] c;
// <<
  constraint a1{ a>=0;
  b>=0;
  c>=0;
  (a+b+c)<1212;
  (a+b+b) >= 500;}
  function void post_randomize;
    bit [9:0] sum;
    sum =a+b+c;
    $display("%0d",sum);
  endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  if(p1.randomize());
  $display("%0d %0d %0d ",p1.a,p1.b,p1.c);
end
endmodule

