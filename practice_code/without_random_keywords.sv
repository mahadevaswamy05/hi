//1Q. Without using randomization or random keywords, generates an array of random values between 10 to 50.

module randWithout();
bit[7:0] a[];
initial begin
  a = new[5];
  foreach(a[i]) begin
  a[i] = $urandom_range(10,50);
  $display("values of the a without using the randomization :%0d",a[i]);
  end
  $display("the array values %0p",a);
end
endmodule
