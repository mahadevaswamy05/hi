
module set_of_trans_bin;

bit [0:3] a;

covergroup cov_grp;
  c1 : coverpoint a {
  bins a1 = (0=>1=>2=>3);
  bins a2 = (7=>6=>5=>4);}
endgroup

cov_grp cg = new();
initial
begin
  repeat(50) begin  
  a=$urandom_range(0,7);
  cg.sample();
  $display("val=%d,cov = %.2f %%",a,cg.get_inst_coverage());
  end end
endmodule
