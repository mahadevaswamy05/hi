//Write constraint to generate dynamic array elements in the below fashion
//if N = 5, elements should be 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
class packet;
  rand bit [4:0] a[];
  int N=5;
  
  function int calculateSizeFunc(int n);
   return n*(n+1)/2;
  endfunction

  function int series(int n);
    return $sqrt(2*n);
  endfunction
  constraint a2{a.size == calculateSizeFunc(N);}
  constraint a3{foreach(a[i]) a[i] == series(i+1);}
endclass

module tb;
int size;
initial begin
  packet p1;
  p1 = new();
  void'(p1.randomize());
  $display("%0p",p1.a);
end
endmodule
