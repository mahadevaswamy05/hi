// constraint to generate the below pattern 9 19 29 39 49 59 69 79
//1st class methods is correct
class packet; //Using the variable as a Dynamic array
  rand int a[];
  constraint x{a.size==9;}
  constraint y{foreach(a[i])
               a[i]==(i*10)+9;
             }
endclass

class packet1; // Using the normal variables
  rand int a;
  constraint a1{ a inside {[9:99]};
                 a%10==9;}
endclass


module tb;
packet p;
packet1 p1;
initial begin
  p = new();
  p1 = new();
  repeat(8) begin
    p.randomize();
    p1.randomize();
    $display("the 1st class output is =%0p",p.a);
    $display("the 2nd class output is =%0d",p1.a);
  end 
end
endmodule



