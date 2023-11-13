//sum of all array elements must be 17 

class packet;
  rand bit[7:0] a[];
  constraint addr {a.size() inside {[2:20]};}
  constraint a1{a.sum() with (17'(item))==17;}
  constraint a2{a.or() with ((17'(item)) % 4 ==0);}

    function void post_randomize();
      $display("the value a: %p ",a);
    endfunction

  endclass

  module tb;
  packet n1;
  initial begin
    n1=new();
    repeat(10) begin
      void'(n1.randomize());
    end
  end
  endmodule
