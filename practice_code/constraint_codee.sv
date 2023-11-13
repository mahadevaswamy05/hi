//pattern generation code
//
//

class packet;
  rand  bit [0:3] a[];
  constraint a2{a.size() inside {[10:20]};}
  constraint a1{unique {a};}

  endclass

module tb;
packet s1;
initial begin
  s1 = new();
  repeat(5) begin
    void'(s1.randomize ());
    $display("the value of the a=%0p",s1.a);
  end
end
endmodule
