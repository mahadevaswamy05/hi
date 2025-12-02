//Write the constraint for the pattern 1100_1100_1100_1100
//Here i have written code with Uses modulus to check index pattern 
class packet;
rand bit[5:0] a[];
constraint a1{ a.size == 10;}
constraint a2{ foreach(a[i])
                if(i%4 == 0 || i%4 == 1)
                     {a[i] == 1;}
                  else 
                    {a[i] == 0;}}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
  p1.randomize();
  $display("%0p",p1.a);
end
end
endmodule
                    
