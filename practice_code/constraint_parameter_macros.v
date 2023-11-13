`define START_ADDR 2
`define END_ADDR 8
`define VALUE =22;
parameter p1=2,p3=8;
class packet;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [4:0] c;
  constraint a1{ a inside {[p1:p3]};}
  constraint a2{ b inside {[`START_ADDR:`END_ADDR]};}
  constraint a3{ c == `VALUE;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
    p1.randomize();
    $display("a:%d,b:%d c:%d",p1.a,p1.b,p1.c);
  end
end
endmodule
