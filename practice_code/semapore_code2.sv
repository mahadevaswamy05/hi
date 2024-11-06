
module tb;

semaphore key = new(1);

initial begin
  for(int i=0;i<3;i++) begin
    fork
      automatic int l = i;
      processTask(l);
    join_none
  end
  wait fork;
#10 $finish;
end

task automatic processTask(int a);
  $display($time,,"a=%0d",a);
 key.get(1);
  $display($time,,"processTask: get key,a=%0d",a);
#2;
  $display($time,," processTask: put key back, a=%0d",a);
  key.put(1);
endtask
endmodule
