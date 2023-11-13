//I want to constraint a dynamic array so that its values on some of the indexes are equal to a constant value.

class name ;

rand bit [0:3] array[];
const bit [0:3] value =5 ;

constraint array_c{
  array.size == 5;
  foreach (array[i])
    if (i inside {[0:5]})
       array[i] == value[i];
    }
  
  endclass

  module tb;
  name n1;
  initial begin
    n1 = new();
    repeat(1) begin
      void'(n1.randomize);
      $display("the vlaue of the array=%0p",n1.array);
       $display("the vlaue of the constantvalue=%0d",n1.value);
     end
   end
   endmodule
