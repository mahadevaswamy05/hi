/*er needs a constraint that size of dynamic array "b" is 100 & value of array elements should be its index.

 - User needs a size of dynamic array "b" to be 100 as default and also he will change it when needed. How is it possible ?    */
class name;
  rand bit [0:6] array[];
  constraint addr{array.size()==100;
  foreach(array[i]) 
    array[i]==i;} 

  endclass


  module tb;
  name n1;
  initial begin
    n1 = new();
    void'(n1.randomize);
    foreach(n1.array[i])
      $display("the index=%0d,array=%0p",i,n1.array[i]);
    end
    endmodule


