module test;

bit [3:0] a;
covergroup c_name;
  c1: coverpoint a {
    bins low = {[0:5]};
    bins high = {[6:10]};
    illegal_bins b1 = {[11:$]};
  }
endgroup
c_name cg = new();
initial begin
  repeat(10) begin
    a = $random;
    cg.sample();
    $display("value=%0d,cov=%2.f %%",a,cg.get_inst_coverage());
  end
end
endmodule
