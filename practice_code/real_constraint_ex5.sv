
//write constraint to print unique values from 99 to 100
class packet;
  randc int a;
  real b;
  constraint a1{a inside {[990:1000]};}
  //constraint a2{ unique{a};}

  function void post_randomize();
  //     b= a/10.0;
    b= real'(a/10.0);
    $display("%2f",b);
  endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
    p1.randomize();
  end end
  endmodule
