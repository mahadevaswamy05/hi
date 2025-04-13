//write the function which needs to do the mutiple of the 6 like 6,18,30,24,36
class packet;
  function int multiple (input int a);
    int y = a*6;
    $display("a: %0d output:%0d",a,y); 
    return y;
  endfunction
endclass

module tb();
packet p1;
initial begin
  int localRand;
  p1 = new();
  repeat(5) begin
  localRand = $urandom_range(1,10);
  p1.multiple(localRand);
end
end
endmodule
