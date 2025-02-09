
module alias_ex(
  inout [5:0] a,b);
  alias b = a;
  assign b = 24;
  initial begin
  $display("a:%0d, b:%0d ",a,b);
  end
  endmodule
