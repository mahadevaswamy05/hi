
class name;

  rand bit [0:3] a[];
  constraint add_r {a.size==10; }
function void  post_randomize;
  a.reverse();
  $display("the value of post_randomiz=%0P",a);
endfunction

  
endclass


module top;

name n1;
initial begin
  n1=new();

  void'(n1.randomize);
  $display("the value a =%0p",n1.a);
  end


  
  endmodule
