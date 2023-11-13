

module tb;
class sv;
  rand bit[7:0]a;
  constraint c1{foreach(a[i])
  ($countones(a))%2!=0;}
endclass
sv sv_h;
initial begin
  sv_h=new();
  repeat(10)
begin
  sv_h.randomize();
  $display("a is %b",sv_h.a);
end
end
endmodule
