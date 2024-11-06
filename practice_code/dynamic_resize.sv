//dynamic array in resize code 

module tb;
int array[];

initial begin
  array = new[5];
  array={2,5,6,99,17};

    $display("array =%0p",array);
    array = new[10](array);
    $display("array size change=%0p",array);
 
    array = new[7](array); // i'm deleting some element in the dynamic array
    $display("the after deleting some element the array",array);

end
endmodule

