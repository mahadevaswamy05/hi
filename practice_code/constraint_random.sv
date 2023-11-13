//Without inside operator generate random values for the range 34-43
class swamy;
  rand logic [7:0] a;
  constraint addr {(a>34) && (a<45);}
endclass

module tb;
swamy s1;
initial begin
  s1 = new();

  repeat(15) begin
    void'(s1.randomize);
    $display("\t\t a=%0d",s1.a);
  end
end
endmodule
