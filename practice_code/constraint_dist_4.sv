//contraint to generate 9 bit variable a to be less than 255 for half number of simulations i.e if you are randomizing 10 times , 5 times a should be less than 255

  class packet;
    rand bit [0:8] a;
    constraint a1{ a dist {[0:255]:=500,[256:512]:=500};}
    endclass

    module tb;
    packet p1;
    initial begin
      p1 = new();
      repeat(10) begin
      p1.randomize();
      $display("%0d",p1.a);
    end
  end
  endmodule
