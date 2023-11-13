
module relational_code;
logic [2:0]a,b;

initial begin
  a = 4'b1110;
  b = 4'b001x;
  $display("\n \t Value of a is %0b",a);
  $display("\n \t Value of b is %0b",b);
  $display("\n \t the output of the a < b is %0d",a<b);
  $display("\n \t the output of the a > b is %0d",a>b);
  $display("\n \t the output of the a <= b is %0d",a <= b);
  $display("\n \t the output of the a >= b is %0d",a >= b);

end
endmodule
