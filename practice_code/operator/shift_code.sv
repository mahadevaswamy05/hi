module shift_code;

logic [7:0] a,c,y;
reg signed [7:0] b;

initial begin
  a=8'b10100010;
  b=8'b11001101;

  $display("\n \t the value of a is %0b",a);

  $display("\n \t the value signed number of b is %0b",b);

  $display("\n \t the a of logical left shift(a<<2) operator output is %0b",a<< 2);

  $display("\n \t the b logical right shift(b>>2) operator output is %0b",b>>4);

  $display("\n \t the a Arithmetic left shift(a<<<1) operator output is %0b",a <<< 3);

  $display("\n \t the b Arithmetic right shift(b>>>3) operator output is %0b",b>>>4);

end
endmodule 
