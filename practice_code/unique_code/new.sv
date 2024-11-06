class packet;
  rand bit [7:0] a;
  rand bit [7:0] b;
  constraint a1 { a != b;}
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  repeat(20) begin
  if(p1.randomize());
    $display("a: %0d b:%0d ", p1.a,p1.b);
  end
end
endmodule
