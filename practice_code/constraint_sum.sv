// a, b are two variables write a constraint with their sume <150 and sum also even number

class name;
  rand bit [7:0] a;
  rand bit [7:0] b;
  bit [0:7] sum;
  constraint add_r { (a%2==0);(b%2==0);}
constraint a1{(a+b)<150;}                   
  //a and b value is not more than 120
  //even number logic
endclass


module tb;
name n1;
initial begin
  n1 = new();
  repeat(5) begin
    void'(n1.randomize);
    n1.sum = n1.a+n1.b;
    $display("the value of the a=%0d,b=%0d sum=%0d",n1.a,n1.b,n1.sum);
  end
end
endmodule

