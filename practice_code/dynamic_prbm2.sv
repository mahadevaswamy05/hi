//write a code for dynamic array for storing 8 values in empty array after add 4 more values.
//
module tb;
int array[];
initial begin
  array = new[8];
  array = {1,2,3,4,5,6,7,8};
  $display("array = %0p",array);
  array = new[12](array);
  $display("after adding the 4 element in the array",array);
 array = {1,2,3,4,5,6,7,8,9,10,11,12,13};
  $display("after adding the  element in the array",array);

end
endmodule
