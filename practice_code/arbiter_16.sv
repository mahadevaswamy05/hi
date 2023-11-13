
//there is a 16-bit arbiter. At any time, one bit is enabled to activate the corresponding master. Write a constraint to implement this

class packet;
rand bit [15:0] valid;
constraint a1 { $countones (valid) ==1;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(10) begin
    p1.randomize();
    $display("%b",p1.valid);
  end
end
endmodule

