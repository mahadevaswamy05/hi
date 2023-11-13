
class pair;
  rand integer x, y;
endclass

class expair extends pair;

  function void pre_randomize();
    super.pre_randomize(); 
    $display("Before randomize x=%0d, y=%0d", x, y);
  endfunction

  function void post_randomize();
    super.post_randomize();
    $display("After randomize x=%0d, y=%0d", x, y);
  endfunction

endclass

module tb;
pair p1;
expair p2;
initial begin
  p1=new();
  p2=new();

repeat(10);begin
  void'(p1.randomize);
  void'(p2.randomize);
  $display("the value of the x=%0d,y=%0d",p1.x,p1.y);
  $display("the value of the x=%0d,y=%0d",p2.x,p2.y);

end
end
endmodule
