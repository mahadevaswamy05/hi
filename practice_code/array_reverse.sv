
// Write a program to reverse an array. 

module tb();
  int array[];

initial begin
  int temp,i;
  array = new[5];
  array = {1,22,33,42,23};
  $display("The arraySize %0p",array.size());
  $display("The array values are %0p",array);
//  array.reverse();
  for(i=0; i<array.size()/2; i++) begin
     temp = array[i];
     array[i] =array[array.size() - 1 -i]; //array[0] <--> array[4];  // i = 0, array.size() = 5
     array[array.size()-1-i] = temp; //array[4] =temp which is 1
     end
  $display("After reverse the array values are %0p",array);
end
endmodule
