
module tb;
function int diff_count(input logic [31:0] a, input logic [31:0] b);
static int count = 0;
for (int i = 0; i < 32; i++) begin
  if (a[i] != b[i])
    count++;
  end
  return count;
endfunction

initial begin
  logic [31:0] a,b;
  repeat(10) begin
  a = $random;
  b = $random;
 diff_count(a,b);
 $display("a is \n %b and b is \n%b",diff_count.a,diff_count.b);
 $display("the count is =%b",diff_count.count);
 end end
 endmodule

