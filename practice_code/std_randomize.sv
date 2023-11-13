//without using constraint method, randomize the value of variable (a)between 10 to 15. how to write using constraint.
//
module tb;

bit [0:5] a;


initial begin

  repeat(5) begin 
  std::randomize(a) with{a>15;a<20;};
  $display("the value of %0d",a);
end end 
endmodule
