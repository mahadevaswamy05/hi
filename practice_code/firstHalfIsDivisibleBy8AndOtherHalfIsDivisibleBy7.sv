//Constraints for a random array of number in which first half of number are divisible by 8 and other half are divisible by 7

class packet;
  rand bit [5:0] array [];
  constraint array_size_c1 { array.size()==10;}
  constraint array_first_half { foreach(array[i]) {
                                if(i < array.size() / 2)
                                  array[i]%8 == 0;
                                else
                                  array[i]%7 == 0;
                                }
                              }
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
  p1.randomize();
  $display("THE array output is :%0p ",p1.array);
end
end
endmodule
