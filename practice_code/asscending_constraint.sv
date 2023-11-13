
module tb;
class name;
  rand bit[0:3] a[$];
  constraint c_addr{a.size inside {[0:10]};}
 // constraint c_addr1{unique {a};}
function void post_randomize ();
//  a.sort();
  a.rsort();
endfunction 
endclass


name n1;
initial begin
  n1=new();
  repeat(5)
begin
  n1.randomize();

  $display("the value of the value a=0%p",n1.a);
end
end
endmodule
  
