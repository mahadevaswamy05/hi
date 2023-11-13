
module tb;
bit [3:0] a;

covergroup c_name;
  coverpoint a{
  wildcard bins a1[] = {4'b11?? };}
 endgroup
 c_name cg = new();

 initial begin
   repeat(30) begin
     a =$random();
     cg.sample();
     $display("the a=%0d cov=%2.f %%",a,cg.get_inst_coverage());
   end
 end
 endmodule
