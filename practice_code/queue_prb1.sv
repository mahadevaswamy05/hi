//condition to check till 4 location it has to give error
module tb;
bit [6:0] queue[$];

initial begin
  queue = '{11,22,33,44,55,66,77,88,99,10};
  foreach(queue[i]) begin
    if(i>5)
      $display("queue=%d",i,queue[i]);
      else
        $error("queue =%0d",i,queue[i]);
      end end
      endmodule
