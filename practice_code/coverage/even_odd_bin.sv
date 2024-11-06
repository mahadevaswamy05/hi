class packet;
rand bit [7:0] a;
constraint a1 { a%2 == 0;}
  covergroup cgrp;
      c1: coverpoint a{
          wildcard bins even[] = {8'b????_???0};}
    endgroup
cgrp = new();
endclass
module tb;
packet p1;
initial begin
  p1 = new();
  repeat(256) begin
    p1.randomize();
    p1.cgrp.sample();
    $display("the value val=%0d",p1.a);
    $display("a:%0d cov=%2.f %%",p1.a,p1.cgrp.get_inst_coverage());
  end
end
endmodule
