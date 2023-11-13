//array[3][3] (9 elements) needs to be randomized such that sum of rows and columns is the same and all elements are unique.
class packet;
  rand bit[7:0] a [3][3];
  rand bit [7:0] b;

  constraint a1 { b inside {[1:100]};}
  constraint b1 {solve a before b;}

  constraint a2{foreach(a[i]){
    a[i].sum==b;
    unique{a};}}

    constraint addr2{foreach(a[j])
    a[0][j]+a[1][j]+a[2][j]==b;}

    function void disp();
      foreach(a[i]) begin
        $display();
        foreach(a[i][j]) begin
          $write("%0d\t",a[i][j]);
        end end
        $display();
      endfunction
    endclass
    module tb;
    packet p1;
    initial begin
      p1 = new();
      repeat(10) begin
        p1.randomize();
        p1.disp();
      end end
      endmodule
