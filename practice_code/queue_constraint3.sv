//10 elements in a queue, the elements value greater than 3 should be stored into the queue, How will you do that.


class name;
  rand bit [0:3] que[$];
  constraint addr {que.size() == 10;
  foreach(que[i])
    que[i]>3;}
 
  
  
   constraint addr {que.size() == 10; 


 endclass



  module tb;
  name n1;
  initial begin
    n1 = new();
    repeat(5)
  begin
    void'(n1.randomize());
    $display("the value of queue=%0p",n1.que);
  end
end
endmodule
