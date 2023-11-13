
class mon;
  rand bit [8:0] h;
  function new (int seed);
    this.srandom(seed);
  endfunction
endclass

module tb;
mon m1;
initial begin
  m1=new();
  m1.srandom();
 $display("the value of the seed=%0d",m1.seed);
end
endmodule
