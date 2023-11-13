//constraint to generate min 2 -1's and Max 5-1's in that variable.
class packet;
  rand bit [7:0] a;
  constraint c1 {       
      $countones(a) inside {[3:6]};}
    endclass
    module test;
    packet p1;
    initial begin
      p1 = new();
      repeat(10) begin
        p1.randomize();
        $display("a=%0b %0d",p1.a,p1.a);
      end
    end
    endmodule

