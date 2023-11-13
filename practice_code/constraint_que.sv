
class name;
  bit [7:0] array[$];
endclass

function void add_value();
  for(int i =0; i<=10;i++)
    array.push_back(i);
  endfunction 


  task display_value();
    foreach(array)
      $display("value at index of %0d %0d",idx.array[idx]);
    endtask 
  endclass

  module tb;
  name n1;
  initial begin
    n1 = new();
    n1.add_value();
    n1.display_value();
    n1.array.delete(4);
    n1.array.delete(5);
  end
  endmodule

/*
module tb;
name n1;
initial begin
  n1 = new();
  n1.array = '{1,2,3,4,5,6,7,9,8,0};
  $display("the value array=%0p",n1.array);
 n1.array.delete(4);
 n1.array.delete(5);
  $display("the value array=%0p",n1.array);
end
endmodule*/
