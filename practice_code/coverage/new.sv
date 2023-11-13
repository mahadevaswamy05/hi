module tb;
bit [7:0] a;
covergroup cgrp;
  c1: coverpoint a{bins b1 ={[100:200]};}
  endgroup
cgrp cg = new();
initial begin
  repeat(10) begin
    a = $urandom_range(100,200);
    cg.sample();
    $display("a:%0d cov=%2.f %%",a,cg.get_inst_coverage());
//    $display("coverpoint c1 coverage%% = %.2f%%",cg.c1.get_coverage());
  end
end
endmodule

