class packet;
  rand bit [1:0]a,b;
  constraint a1{a>=2 && b inside {0,1};}
endclass

module tb;
packet p1;
covergroup cg;
  ca: coverpoint p1.a {
    bins a0 = {2};
    bins a1 = {3};
    bins a2 = {[1:0]};
  }
  cb: coverpoint p1.b {
    bins b0 = {0};
    bins b1 = {1};
    bins b2 = {[2:3]};
  }
  cc: cross ca,cb{
    ignore_bins ab1 = binsof(ca.a2);
    ignore_bins ab2 = binsof(cb.b2);
  }
endgroup
cg cg1;
initial begin
  p1 = new();
  cg1 = new();
  repeat(10) begin
    p1.randomize();
    cg1.sample();
    $display("a:%0d b:%0d",p1.a,p1.b);
    $display("a=%0d,b=%0d cov=%2.f%%",p1.a,p1.b,cg1.get_inst_coverage());
  end
end
endmodule

