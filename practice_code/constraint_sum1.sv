//constraint to randomize A & B in the range of 20 & 100, such that sum of both is an even cumber.
//


class name;
  rand bit [7:0] a;
  rand bit [7:0] b;
  bit [0:7] sum;
 constraint addr1{ a inside {[20:100]};}
 constraint addr2{ b inside {[20:100]};}

  constraint add_r { (a+b)%2==0; //even number logic
  }                   
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

