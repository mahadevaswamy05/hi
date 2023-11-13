
//write constraint such that when rand bit[3:0] a is randomized,
//the value of “a” should not be same as 5 previous occurrences of the
//value of “a";

class packet;
  rand bit [3:0]a;
  int queue[$];
  constraint addr{!(a inside {queue});}

  function void post_randomize();
    queue.push_front(a);//adding new randomize data of avalue to the queue
    $display("value of a=%0d",a);
    if(queue.size ==6)
    queue.pop_back();//removing last data of queue and adding new value
    $display("the prev_occuences = %p",queue);
    endfunction

  endclass

  module tb;
 packet h1;
  initial begin
    h1 = new();
    repeat(20) begin
      h1.randomize();
    end
  end
  endmodule
