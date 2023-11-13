
module tb;

semaphore key = new(1);

initial begin
  for(int i=0;i<3;i++) begin
    fork
      automatic int l = i;
      process_it(l);
    join_none
  end
  wait fork;
#10 $finish;
end

task automatic process_it(int a);
  $display($time,,"a=%0d",a);
 key.get(1);
  $display($time,,"process_it: get key,a=%0d",a);
#2;
  $display($time,," process_it: put key back, a=%0d",a);
  key.put(1);
endtask
endmodule
