module top;
bit [0:3] a;
initial begin
  repeat(4) begin
    void'(std::randomize(a));
$display("value of a %0d",a);
  end
end
endmodule
/*class m ;
  rand bit [0:3] a;
$display("swamy");
endclass

class hi extends m;
  rand bit [0:3] a;
  constraint addr{ a >5;}

function new(string name = "hi");
  super.new(name);
  if(std::randomize(a))begin
    $display("a=%0d",a);
  end
    else
      $finish;
endfunction
endclass

module test;
hi h;
initial begin
  h = new();
  repeat(4) begin
end
end
endmodule
*/



