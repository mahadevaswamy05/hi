
//What is the constraint that generates input of 11 bit with odd zeros in SystemVerilog?

//solution  in the 11 bit varibale if there are odd number of zeros means, it will have even numbers of ones. So we can write a constraint to get even number of ones

  class packet;
    rand bit [10:0] a;
    rand bit [3:0] b;
    //    constraint a1{b==$countones(a);
    //                    b%2==1;}
    constraint a1{$countones(a)%2==0;}
  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(5) begin
      p1.randomize();
      $display("%b %d",p1.a,p1.a);
      $display("%0d",p1.b);
    end end
    endmodule
