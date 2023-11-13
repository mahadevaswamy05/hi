

module top;
int x;
int a,b;

task sum(input int a=5,b=5,output int c);
  c=a+b;
endtask 

initial begin
  a=2;
  b=2;
  sum(a,b,x);
  $display("\t value of x =%0d", x);
end
endmodule


