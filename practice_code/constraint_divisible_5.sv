
class c1;
  rand bit [0:3] a;

  constraint diviby5 {a%5 ==0;}
endclass 

module tb;
c1 c;
initial begin 
  c=new();
  repeat(5) begin 
  void'(c.randomize);
  $display("the a%0d",c.a);
end
end
endmodule
