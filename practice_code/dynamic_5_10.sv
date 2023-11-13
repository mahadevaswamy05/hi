
//Consider a Dynamic array having 0 to 10, need to get display greater than 5?

module tb;
int a[] = '{1,2,9,7,8,6,4,3,5,0};
int b[$];

  initial begin
   $display("the value of the dynamic array is :%p",a);
   b = a.find() with (item > 5);
   $display("the output elements greater than 55555 is %0p",b);
   end
   endmodule
