//Write a constraint by declaring the dynamic array and only 5th element of each index should be taken 20 times 
/*
class packet;
  rand bit [5:0] a[];
  constraint a1{a.size()==20;
 foreach(a[i])  a[i] inside {[1:20]};}

 function void post_randomize();
 foreach(a[i])
   if(i==5) begin
     repeat(20) begin
       $display("the array 5th element is a:%0d",a[i-1]);
     end
   end
 endfunction
 endclass


module tb;
initial begin
  packet p1;
  p1 = new();
  repeat(5) begin 
  void'(p1.randomize);
    $display("%p",p1.a);
  end end
  endmodule
  */

  module tb;
  int a [];
  initial begin
    a = new[20];
    a = '{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
    $display("%0p",a);
    foreach(a[i])
      if(i==5) begin
        repeat(20) begin
          $display("now 5th location element will repeat 20 times :%0d",a[i]);
        end
      end
    end
  endmodule


