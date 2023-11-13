
module tb;
  int a;

initial begin
  do begin
    $display("the value of the a is =%0d",a);
    a++;
  end
  while(a<5);
end
endmodule
