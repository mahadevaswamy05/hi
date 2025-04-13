//write the code for multiply by 6 each time like 6 12 18 24
class a;
  rand bit[4:0] b;  
  constraint range {{b%6 == 0};}
endclass

module top();
  a A;
  initial begin
    A = new();
    repeat(4) begin
      A.randomize();
      $display (" %0d",A.b);
    end
  end
  endmodule
