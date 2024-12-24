//// Write a constraint for a 32-bit variable, in such a way that it should be between 2000 and 6000 and 50% of the value should be even in the given range Using the Array
class packet;
rand bit [31:0] array[];
constraint c1{ array.size == 20;}
constraint c2{ foreach(array[i]) array[i] inside {[2000:6000]};}
constraint c2_evenOdd{foreach(array[i])
                      { if(i < (20*80)/100)
                          array[i]%2 == 0;
                        else
                          array[i]%2 == 1;}}
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
  p1.randomize();
  $display("the value of the %0p", p1.array);
end
end
endmodule

//// Write a constraint for a 32-bit variable, in such a way that it should be between 2000 and 6000 and 50% of the value should be even in the given range Using the variable
/*class packet;
  rand bit [31:0] evenOdd;
  static int count;
  int randomize_value=10;
  

  constraint c1{evenOdd inside{[20:60]};
                if(count<(randomize_value*80)/100)
    				evenOdd%2==0;
                else
                  evenOdd%2==1;}
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  repeat(p1.randomize_value) begin
    p1.randomize();
    $display("output is %0d",p1.evenOdd);
    p1.count++;
  end
  
end
endmodule
*/
