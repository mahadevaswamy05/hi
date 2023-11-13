

class packet;
  rand bit [4:0] a;
  constraint add1 {a inside {[0:10]};}
  endclass
  
  module tb;
  bit [7:0]b;
  packet p1;
  initial begin
    p1 = new();
    repeat(5) begin
    void'(p1.randomize);
    b=(p1.a)**2;
    $display("the randomize number is =%0p",p1.a);
    $display("the square number is =%0d",b);
  end
end
  endmodule

