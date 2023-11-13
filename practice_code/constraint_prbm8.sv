
//Write a constraint for two random variables such that one variable should not match with the other & the total number of bits toggled in one variable should be 5 w.r.t the other.

class packet;
  rand bit [7:0] a;
  rand bit [7:0] b;
  constraint a1{ a!=b;}
  constraint a2{ $countones(a^b)==5;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  repeat(5) begin
  $display("the first variable value is :%b \nsecond variable value is :%b",p1.a,p1.b);
  end
end
endmodule
