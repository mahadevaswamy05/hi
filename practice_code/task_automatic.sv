
module tb;
int a,b;
int c,d;

task automatic adder(const ref int i,j, ref int k);
  c = i+j;
#10;
k=i+j;
#10;
endtask

initial begin
  a = 5;
#5  b = 5;
#45;
a = 22;
b = 0;
#5 b = 11;
end

initial begin
  adder(a,b,d);
#30;
adder(a,b,d);
#30;
end
endmodule 

