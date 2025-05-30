//Here we have the coverage collected methods like get_inst_coverage and get_coverage
//Like How to use those methods
module tb;
bit  [3:0] a,b;
covergroup c_name;
  c1: coverpoint a { ignore_bins a1[]= {1};
                     bins a2[]={2,3,4};} 
  c2: coverpoint b { bins b1[] = {5,6,7,8};}

 c3: cross c1,c2{
   bins ab = ! binsof(c1) intersect{1};}
endgroup
c_name cg = new();
initial begin
  repeat(20) begin
    a = $random;
    b = $random;
    cg.sample();
    $display("the value of a=%1d and b=%0d, cov =%2.f%%",a,b,cg.get_inst_coverage());
    $display("the value of a=%1d and b=%0d, cov =%2.f%%",a,b,c_name::get_coverage());
  end
end
endmodule


