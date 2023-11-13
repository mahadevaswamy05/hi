
class packet;
  rand bit a;
endclass
module tb;

packet n1;
initial begin
  n1 = new();
$display("%s",$typename (n1));
end
endmodule
