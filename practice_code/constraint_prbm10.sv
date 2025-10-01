//Write a constraint such that 80% of the numbers are EVEN and 20% are ODD

/*class packet;
rand bit [7:0] evenOdd[];
int sizeOf = 10;

constraint c1_size{evenOdd.size == sizeOf;}
constraint c2_evenOdd{foreach(evenOdd[i])
              { if(i < (sizeOf*80)/100)
                evenOdd[i]%2 == 0;
                else 
                  evenOdd[i]%2 == 1;}}
endclass

module tb();
packet p1;
initial begin
  p1 = new();
p1.randomize();
$display("output is %0p",p1.evenOdd);
end
endmodule
*/

class abc;
  rand bit[7:0] data;
  constraint c1 {
    (data%2 == 0) dist { 1 := 80, 0:= 20};
  }
endclass
module top;
  initial begin
    abc a1 = new;
    repeat(11) begin
      a1.randomize();
      $display("%0d",a1.data);
    end
  end
endmodule

