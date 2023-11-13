{write constraint for 5 to 10 only odd number
class name;
  rand bit [0:7] a;

  constraint iddr1 { a inside {[5:10]};}
  constraint addr{a%2!=0;}
endclass

module tb;
name n1;
initial begin
  n1=new();
  repeat(10) begin
    n1.randomize();
    $display("the value val=%0p",n1.a);
  end
end
endmodule
