
module tb;
reg[3:0] a,b,c,d,e,f;

initial begin
  a=4'b1010;
  b=4'b1011;

  c = a&b;
  $display("the c output:%b",c);

  d= a&&b;
  $display("the D output is:%0d",d);

  e= ^a;
  $display("the e output is :%b",e);

  f=|b;
  $display("the f output is :%b",f);
end
endmodule
