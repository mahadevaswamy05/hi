
//module code for Out of order using the event and achieve it;

module tb;
event e1, e2, e3;

task First_task();
  #5;
  ->e1;
  $display("@%0t: First_task: event e1 is triggered", $time);
endtask

task Second_task();
  #15;
  ->e2;
  $display("@%0t: Second_task: event e2 is triggered", $time);
endtask

task Third_task();
  #10;
  ->e3;
  $display("@%0t: Third_task: event e3 is triggered", $time);
endtask

task event_order();
  $display("@%0t: waiting for the events e1, e2, e3", $time);
  //wait_order(e1, e3, e2)
  $display("Events are triggered in order");
  //else
    $display("Events are triggered out of order");
  endtask

  initial begin
    fork
      First_task();
      Second_task();
      Third_task();
      event_order();
    join
  end
  endmodule

