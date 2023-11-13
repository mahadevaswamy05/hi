
class A;
  integer j =5;
endclass

class B;
  integer i =1;
  A a = new();
endclass

module tb;
B b1,b2;

initial begin
  b1 = new();
  b2 = new() b1;
  $display("the value b2.i=%0d b2.j=%0d",b2.i,b2);
end
endmodule
