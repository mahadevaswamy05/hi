//without using randc achieving randc behaviors
class packet;
  rand bit [1:0] a;
  int que[$];
  constraint a1{ !(a inside{que});}

  function void post_randomize();
    que.push_front(a);
    if(que.size()==4)
      que.delete();
    endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(20) begin
    p1.randomize();
    $display("%0d:",p1.a);
  end end
  endmodule
