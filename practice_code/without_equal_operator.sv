//we can use & AND operator 
//we can use ^~ XNOR operator

module tb;

bit [3:0] a ,b;
initial begin
a = 10;
b = 10;
if(a & b)
  $display("the number is same");
  else
    $display("the number is not same");
  end
  endmodule

