module tb;
bit [31:0] a,b;
bit [1:0] c;

covergroup cg;
  ca: coverpoint a {
    bins eq0 = {1'b0};
    bins eq1_31[] = {[1:31]};
  }
 cb: coverpoint b {
    bins eq0 = {1'b1};
    bins eq1_31[] = {[1:31]};
  } 
  cc: coverpoint c {
    bins eq0 = {1'b0};
    bins eq1 = {1'b1};
  }
abc: cross ca,cb,cc {
  ignore_bins ignore00 = binsof(ca.eq0);
  ignore_bins ignore01 = binsof(cb.eq0);
  ignore_bins ignore02 = binsof(cc.eq0);
  ignore_bins not_equal = abc with (ca != cb);
}
endgroup
 cg cg1 = new();
 initial begin
   repeat(20) begin
     a = $random;
     b = $random;
     c = $random;
     cg1.sample();
     $display("a=%0d,b=%0d,c=%0d cov=%2.f %%",a,b,c,cg1.get_inst_coverage());
    end
  end
  endmodule

