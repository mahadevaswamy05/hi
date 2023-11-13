//Write a constraint for the array[100] to generate a values in the range from 1 to 50. b)if i want 20 value in some random indexes how will you write the constraint 

class name;
  rand int a[100];
 constraint add_r{foreach (a[i]) a[i]  inside {[1:50]};}

 constraint d3 {foreach (a[i]) a[i] dist {20:/50,[1:19]:/20,[21:50]:/30};}

 endclass

 module top;
 name n1;
 initial begin
   n1=new();
   repeat(5) begin
   void'(n1.randomize);
   $display("the value a=%0p,index=%0d",n1.a,n1.index);
 end
 end
 endmodule


