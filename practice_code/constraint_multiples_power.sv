//Write a constraint to generate multiples of power 2.

class name;
  rand bit [4:0] a;
  constraint d1 { a !=0;
                (a & (a-1)) == 0;}
endclass

module tb;
name n1;
initial begin
n1 = new();
repeat(5) begin
void'(n1.randomize);
$display("the value of a=%0d",n1.a);
end
end
endmodule

