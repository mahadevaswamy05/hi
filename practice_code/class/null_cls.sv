
class packet;
  int i;
endclass

module tb;
packet p1,p2;

initial begin
  p1=new();
  p2 = p1;
  p1 = null;
  p2 = p1;
  p2.i= 5;

  $display("the value of %0d",p1.i);

end
endmodule
