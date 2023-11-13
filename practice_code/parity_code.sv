
class packet;
  rand bit [0:31] a;

  constraint addr1 {a inside {[0:31]};}

  function void parity_f (ref bit [0:31] a);
    bit parity =0;
    foreach (a[i])
      parity ^= a[i];
      $display("a=%0b",a);
      $display("parity=%0p",parity);
    endfunction
  endclass
module tb;
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
    p1.randomize();
    p1.parity_f(p1.a);
  end
end
endmodule
