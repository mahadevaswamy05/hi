
class packet;
function void f_name(int a,b);
  $display("a=%0d,b=%0d",a,b);
  while(a>=b)
begin
  a=a-b;
end
$display("remainder is %d",a);
endfunction
endclass

module tb;

packet p1;
initial begin
  p1 = new();
  p1.f_name(15,6);
end
endmodule
