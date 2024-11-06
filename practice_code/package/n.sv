`define name 10

module hi;
int a;
initial begin
  $display("[%0t] a = %0d",$time,a);
  #1 a = `name;
  $display("[%0t] a = %0d",$time,a);
end
endmodule
