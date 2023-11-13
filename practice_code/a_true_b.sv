
//if a is true and b also true write the code for thiws
//When a is false b must also be false.
  class c;
  rand bit [0:3] a,b;
  constraint addr { (a==1) -> (b==1);
                    (a==0) -> (b==0);}
endclass

module tb;
c c1;
initial begin
  c1 = new();
  void'(c1.randomize);
  $display("the value of a=%0d b=%0d",c1.a,c1.b);
end
endmodule 
