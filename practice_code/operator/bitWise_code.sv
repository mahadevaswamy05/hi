

module tb;
reg[3:0] a,b,c,d,e,f;

initial begin
  a=4'b1010;
  b=4'b1011;

  $display("A:%0b, B:%0b",a,b);

  c = a&b;
  $display("the A&B output:%b",c);

//  d= a&&b;
//  $display("the A&&B output is:%0b",d);

  e= a^b;
  $display("the a^b output is :%b",e);

  e= a~^b;
  $display("the a~^b output is :%b",e);

  f=a|b;
  $display("the a|b output is :%b",f);
end
endmodule
