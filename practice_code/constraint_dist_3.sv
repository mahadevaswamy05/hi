//If I as the variable x such that the values range [20:100] should have weight 30 percent,[101:200] should weight 50 percent and  [200:300] should have the weight of 20. write a constraint

  class packet;
    rand bit [6:0] a;

    constraint a1{ a dist {[20:100]:=30,[101:200]:=50, [200:300]:=20};}
  endclass

module tb;

packet p1;
initial begin
  p1 = new();
repeat(10) begin
  void'(p1.randomize());
  $display("the value is %0d",p1.a);
end 
  end
endmodule
