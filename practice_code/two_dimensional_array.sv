//dimensional array with a[3][3]. Constraint for sum rows will be 100
class packet;
  rand int a [3] [3];
    constraint addr1 {foreach(a[i,j])
    a[i][j] inside {[1:50]};}

      constraint addr4 {foreach(a[i])
                        {a[i].sum==100;}}
    endclass
    module tb;
    initial begin
      packet p1;
      p1 = new();
      repeat(10) begin
        p1.randomize();
        $display("the value a=%p",p1.a);
      end end
      endmodule
