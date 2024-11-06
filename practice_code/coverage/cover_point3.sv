
module tb;
logic [7:0] addr;

covergroup c_name();
  c1:coverpoint addr { bins b1 = {0,2,7};
                       bins b2[] = {[11:20]};
  bins b3 = {[!30:40]};
  bins b4[] = {[79:99],[110:130],140};
  bins b5[] = {160,170,180};
  bins b6   = {[200:$]};
  bins b7 = default;}
endgroup
c_name cg = new();
initial begin
  repeat(90) begin
   addr = $urandom(33);//;[30:40],[50:60],77,[79:99],[110:130],140,160,170,180,200);
    cg.sample();
    $display("the add=%0d,cov=%2.f %%",addr,cg.get_inst_coverage());
  end
end
endmodule
