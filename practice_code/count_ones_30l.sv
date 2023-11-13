
class my;
  rand bit [31:0]a;
  constraint c1{$countones (a) ==10;
  foreach (a[i]){
    if(i>0 && a[i] ==1) 
      a[i]!=a[i-1];}}
  endclass


  module tom;
  my m1;
  initial begin
    m1=new();

    repeat(5) begin
    m1.randomize();
      $display("the value of the a=%0b",m1.a);
    end
  end
  endmodule
