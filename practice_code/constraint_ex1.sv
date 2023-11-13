//A as to print 1 to 20 and B as 1 to 10 and C as hals the B value and D will same a A
class packet;
  rand int  a,b,c;
  rand bit [3:0] d[];
  real e;

  constraint a1 {a inside {[1:20]};}
  constraint b1 {b inside {[1:10]};}
  constraint c1 {c==b/2;}
  constraint d1 {d.size()==a;}

  function void post_randomize();
    e = real'(b)/2;
  endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(6) begin  
  p1.randomize();
  $display("the value a=%0d b=%0d c=%0d e=%f d=%0d ",p1.a,p1.b,p1.c,p1.e,p1.d.size);
end end 
endmodule


