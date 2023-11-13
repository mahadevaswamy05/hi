/*packet class is randomized used
some class variables which are rand are changed to specific values. Now you want to check if you could use the same packet without randomization but you are not sure if all the variables hold the legal values.


  How would you find out?
  */ 

 class name;
   rand bit [0:3] a=5;
   rand bit [0:3] b=5; 
   rand bit [0:3] c;

   constraint addr { a;b;c;}
 endclass

 module tb;
 initial begin
   name n1 = new();
   repeat(5) begin
     //     n1.rand_mode(0);
  assert(n1.randomize(null));
     $display("the value of the a=%0d , b=%0d c=%0d",n1.a,n1.b,n1.c);
   end end
   endmodule
