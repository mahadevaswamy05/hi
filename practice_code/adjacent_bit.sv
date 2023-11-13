
//Constraint to generate two adjacent bits to be 1 and remaining bits to be 0 for bit [7:0]a;
class packet;
  rand bit [7:0] a;
  rand bit [7:0] b;
  constraint add1{ a<7;
                  b==(192>>a);}
 endclass

  module tb;
  packet p1;

  initial begin
    p1 = new();
    repeat(10) begin
   void'( p1.randomize());
   $display("the value two adjacent=%b",p1.b);
 end
 end
 endmodule

