class name;
  rand bit [3:0]a[];
  constraint consti{a.size==10;
  foreach(a[i])
    a[i]>5;}
  endclass

  module tb;
  name d1;
  initial begin
    d1=new();
    repeat(1) begin
      void'(d1.randomize);
      $display("array elements=%0p",d1.a);
    end
  end
  endmodule
