
//Fibanocci number from 1 to 55 totally 10 values
module fibanocci();
int a,b,c,i;
initial begin
  a = 0;
  b = 1;
  $display("Fibonacci Series Number: %0d",a);
  for(i =0 ; i<10;i=i+1) begin
    c = a + b;
    a = b;
    b = c;
    $display("Fibonacci :%0d",a);
  end
end
endmodule

