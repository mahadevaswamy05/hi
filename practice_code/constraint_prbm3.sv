//onstraint a random variable to generate even value ranges from 500 to 700.
//
module tb;
class packet;
  rand bit [9:0] a;
  constraint a1{ a inside {[500:700]};}
  constraint a2 {a%2==0;}
endclass

packet p1;
initial begin
  p1 =new();
  repeat(10) begin
    p1.randomize();
    $display("the output is :%0d",p1.a);
  end
end
endmodule


