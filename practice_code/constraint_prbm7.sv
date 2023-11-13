//Constraint to generate bit[7:0] array1[10] with unique values and also multiple of 3.

class packet;
  rand bit [7:0] a[10];
  constraint a1{foreach(a[i])
  a[i]%3==0 && a[i] inside {[1:100]};}
  constraint a2{unique{a};}

endclass

module tb;
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  $display("%p",p1.a);
end
endmodule
