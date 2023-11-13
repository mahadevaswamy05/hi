
//Write constraint to generate random values 25,27,30,36,40,45 without using "set membership".
module tb;

class packet;
  rand bit [9:0] a;
  constraint a1 { a inside {25,27,30,36,40,45};}
endclass

packet p1;
initial begin
  p1 = new();
  repeat(10) begin
p1.randomize();
$display("the value of a=%0d",p1.a);
end end

endmodule
