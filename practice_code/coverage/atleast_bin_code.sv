class samp;
rand  bit [3:0]a;
rand bit [2:0] b;

covergroup cg;
  c1: coverpoint a{bins b1 = {1};
  bins b2 ={2};
  bins b3 ={4};
  bins b4 = {8};
  option.at_least=2;}
  c2: coverpoint b{option.auto_bin_max=4;}
endgroup
cg = new();
endclass

module tb;
 samp s;
 initial begin
 s = new();
  repeat (20)begin
    void'(s.randomize());
   s.cg.sample();
    $display("a=%d  coverage %%= %.2f",s.a,s.cg.c1.get_inst_coverage());
    $display("b:%d  coverage %%= %.2f",s.b,s.cg.c2.get_inst_coverage());

  end
end
endmodule
