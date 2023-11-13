
class packet;
  rand bit a;
  constraint a1{ a==1;}
  //constraint a1{ $countones(a)==1;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
    p1.constraint_mode(0);
    $display("the value %0d",p1.a);
    p1.constraint_mode(1);
    
end 
repeat(5) begin
    p1.randomize();
    $display("the value %d",p1.a);
  end 
end
endmodule


