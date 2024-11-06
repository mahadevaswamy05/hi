//how to print the largest number using the constraint to the dynamic array 

class packet;
  rand bit [3:0] a[];
  rand bit [3:0] b;
  constraint a1{a.size()==10;}
  constraint a2{foreach(a[i]){
    if(i==0)
      b ==a[i];
      else if(a[i] > b)
        b == a[i];}}

function void post_randomize();
    $display("the value %0p",a);
    $display("the largest number is %0d",b);
  endfunction
endclass

module tb;
  packet p1;
  initial begin
    p1 = new();
    repeat(5) begin
    void'(p1.randomize());
  end
  end
endmodule
