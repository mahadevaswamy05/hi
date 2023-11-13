//Write a code to generate random number between 1.35 and 2.57
class cons;
rand int a;
real b;
constraint size{a inside {[1350:2570]};}

function void post_randomize();
  b=a/1000.0;
  $display("Random number in between 1.35 and 2.57 is %0f",b);
endfunction
endclass

cons c;

module top;
initial
begin
  c=new();
  repeat(10)
  assert(c.randomize);
end
endmodule
