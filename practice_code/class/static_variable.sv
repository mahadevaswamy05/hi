
class packet;
function int name();
  static int a;
  int b;
  a++;
  b++;
  $display("the value of a static vale is =%0d and normal b %0d",a,b);
endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
  p1.name(); 
end end
endmodule


