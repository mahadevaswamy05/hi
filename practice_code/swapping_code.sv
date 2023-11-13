//moduleve an 8 bit variable, we need to swap bit 5 and bit 2 of that variable. What kind of logic you can code in C and SV?
/*module tb;
bit [7:0] a,b;

initial
begin
  a=16;
  b=20;
  $display("\t Value Before Swapping a=%b & b=%b",a,b, $time);
end

initial
begin
  #10;
  a[4]<=b[1];
  b[1]<=a[4];
  $monitor("\t Value After Swapping a=%b & b=%b",a,b,$time);
end
endmodule
*/

module tb;
bit [7:0] a,b;

always
begin
  a=16;
  b=20;
  $display("\t Value Before Swapping a=%d & b=%d",a,b, $time);
 #10;
  a<=b;
  b<=a;
  $monitor("\t Value After Swapping a=%d & b=%d",a,b,$time);
end

initial begin
#15;
$finish();
end
endmodule
