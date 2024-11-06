
module tb;
initial begin
  $display("main thread");
  fork
  begin
   fork
    print(20,"thread 1_0");
    print(30,"thread 1_1");
   join_none
  $display("[%0t] Nested fork has finished", $time);
end
print(10,"Thread2");
join_none
$display("[%0t] Main Thread :fork join has finished",$time);
end

  task automatic print(int _time,string name);
  #(_time)
  $display("%t %s",$time,name);;
  endtask 
endmodule
