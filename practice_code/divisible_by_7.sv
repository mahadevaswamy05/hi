
//print the values like 7,14,21,28 without using the any operator.
class packet;
 rand  bit [5:0] a;
// constraint c1 {$countones(a)==4;}
constraint c1{ a %7 == 0;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(5) begin
  p1.randomize();
  $display("%0d",p1.a);
end
end
endmodule
   //output 7,14,21,28,35__, 
   //7 - 00111 
   //14 - 01110 
   //21 - 10101
   //28 - 11100
   //35 - 100011
