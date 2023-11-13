
module tb;

class name;
  const bit [0:3] b;

  function new();
    b=10;
  endfunction

  constraint c_addr{ b==11;}

endclass
name n1;
initial 
begin
  n1=new();
  repeat(10) 
begin
    void'(n1.randomize());
    $display("the value of the b=%0d",n1.b);
  end
end
endmodule
