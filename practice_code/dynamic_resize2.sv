//dynamic array in resize code 

module tb;
int array[];

initial begin
  array = new[10];
  array={2,5,6,99,17,1,2,9,8,11};
  $display("array =%0p",array);
  array = new[array.size() +5] (array);
  $display("after adding one size to array:%0p",array);
end
endmodule


