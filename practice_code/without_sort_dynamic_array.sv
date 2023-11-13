
class packet;
  rand bit [3:0] a[];
  constraint a2{a.size==10;}
  function void post_randomize();
    int temp;
    foreach(a[i])
      foreach(a[i])
        if(a[i]<=a[i+1]) begin
          temp = a[i+1];
          a[i+1] = a[i];
          a[i] = temp;
        end
        $display("the descending order output is :%0p",a);

      endfunction

    endclass

    module tb;
    packet p1;
    initial begin
      p1 = new();
      repeat(5) begin
        p1.randomize();
      end end
      endmodule

      
