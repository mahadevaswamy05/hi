
class name;
  rand bit [7:0] a;

  constraint addr_r { a inside {[0:100]};}
  constraint sddd_r { a inside {[200:500]};}
endclass

module tb;

name n1;
initial begin
  n1 = new();
  void'(n1.randomize());
  $display("the value a=%0d",n1.a);
end
endmodule
