
class name;
  rand bit [0:5] a[];

  constraint addr{a.size() inside {[1:20]};}

  constraint addr2{foreach(a[i]){ 
    a[i]%2==0;}}

      endclass

  module tb;
  name n1;
  initial begin
    n1 = new();
    repeat(10) begin
    void'(n1.randomize);
    $display("the value of a=%0p",n1.a);
  end 
end
endmodule

//logic og even and odd number generation
/*foreach(a[i])
      if(i%2==0)
        a[i]%2==0
        else(a[i]%2!=0)


