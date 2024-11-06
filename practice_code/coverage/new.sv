module tb;
bit [7:0] a;
covergroup cgrp;
  c1: coverpoint a{ 
                    wildcard bins even[] = {8'b????_???0};}
                  endgroup

cgrp cg = new();
initial begin
  repeat(100) begin
    cg.sample();
    a = $urandom_range(0,255);
  $display("a:%0d cov=%2.f %%",a,cg.get_inst_coverage());
 end
end
endmodule

