//There are two random variables(a,b). if a>15, b must be odd.   if a<15, b must be even. Write a constraint.

  class packet;
    rand bit [0:7] a;
    rand bit [0:7] b;
    constraint a1 {if(a>=15)
    b%2!=0;
    else if(a<15)
      b%2==0;}

  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
    p1.randomize();
    $display("a :%0d, b:%0d",p1.a,p1.b);
  end
end
endmodule


