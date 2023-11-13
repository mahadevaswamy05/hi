
class packet;

  rand bit[3:0] a[];
  constraint a_dd{a.size==10;}
  constraint a_ss{unique{a};}

  function void post_randomize();
    a.shuffle();
    $display("%0p",a);
  endfunction

endclass

module tb;
packet b1;
initial begin
  b1=new();
  repeat(10) begin
    void'(b1.randomize);
    $display("the value of the a=%p",b1.a);
  end
end
endmodule

