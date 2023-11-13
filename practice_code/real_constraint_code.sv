class name;
rand int a;
real b;
constraint c1 { a inside {[299:399]};}

function void post_randomize();
  b = real'((a%100));
  b = (a/100)+ b/100;

endfunction
endclass

module tb;
name n1;
initial begin
  repeat(10)
begin
  n1=new();
  void'(n1.randomize());
  $display("the value of real data type output is a=%0d b=%.2f",n1.a,n1.b);
end
end
endmodule
