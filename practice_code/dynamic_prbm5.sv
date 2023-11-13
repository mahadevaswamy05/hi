//declared the variable as a rand with size of 10, 
//need to get unique values in each location without using build unique method and 
//for any of 2 locations we need to get same value in the array.

class packet;
  rand bit [3:0] array[10]; 
  constraint a1{ 
  foreach(array[i]) { 
    if(i>0) { 
      if(i == 9) 
        array[i] == array[i-1]; 
        else 
          array[i] > array[i-1];
        } } }
      endclass                      

      module tb; 
      initial begin 
        packet p1;
        p1 = new(); 
        repeat(5) begin
          p1.randomize(); 
          $display("Array = %p", p1.array);
        end end
        endmodule  
