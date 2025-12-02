/*
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
*/
class packet;
  rand bit [5:0] pattern[10];
  constraint pattern_c1{foreach(pattern[i])
                       if(i<5) 
                       pattern[i] == 1;
                     else
                       pattern[i] == 0;}
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
  p1.randomize();
  $display("The pattern is %0p",p1.pattern);
end
end
endmodule

