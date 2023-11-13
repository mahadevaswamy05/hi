//write an 8 bit register all the fields of register must be one.write a constraint for it.

class packet;
  rand bit[7:0] a;
  constraint a1{$countones(a) ==8;
                }
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
p1.randomize();
$display("%0b",p1.a);
end end
endmodule
