

module tb;
int v;
task automatic t1 (input int a,output int y);
  static int x = 0;
  x = a+x;
  y = a;
  $display("x:%0d y:%0d",x,y);
endtask

initial begin
#5;
t1(100,v);
#20;
t1(500,v);
#30;
t1(500,v);
end

initial begin
#5;
t1(50,v);
#20;
t1(550,v);
#30;
t1(600,v);
end
endmodule
