
//Write a function to pass a dynamic array who has 20 locations. Add an element on 11th location and print the values
module tb;
function automatic dynamic_array_function(ref int array[]);
  array[10] = 999; //Here adding the new values on the 10 th locations as 999
  $display("Array values");
  foreach(array[i])
    $display("Array elements[%0d]=%0d",i,array[i]);
endfunction

initial begin
  int main_array[];
  main_array = new[20];
  foreach(main_array[i])
    main_array[i] = i;
    dynamic_array_function(main_array);
  end
endmodule
