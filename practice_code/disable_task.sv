class abc;
 task display_task();
   begin : task_A
      $display("\t @ %0t ns , task_A initiated",$time);
      #30 $display("\t @ %0t ns , task_A finished",$time);
    end :task_A

  begin : task_B
    $display("\t @ %0t ns , task_B initiated",$time);
    #10 $display("\t @ %0t ns , task_B finished",$time);
  end :task_B
endtask endclass

module test;
abc a;
initial begin
  a=new();
  $display("the inside module calling");
  fork
  a.display_task();
#40 disable a.display_task.task_A;
join_any
end
endmodule
