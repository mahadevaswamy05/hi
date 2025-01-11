//write constraints for a 16 bit variable for generating odd number ones and ones are coming consecutively

class packet;
rand bit [15:0] oddNumber;
constraint a1 {$countones(oddNumber) % 2 == 1;}
constraint a2{foreach(oddNumber[i])
             {  if(oddNumber[i] == 1 && i<15 )
                      oddNumber[i+1] == 1 ;
              }
            }
endclass

module tb();
packet p1;
initial begin

  p1 = new();
  repeat(7) begin
  p1.randomize();
  $display("%b", p1.oddNumber);
end
end
endmodule
