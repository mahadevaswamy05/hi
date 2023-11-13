

string name = "mahadeva";

module tb();
string name = "mmm";

task task_name();
  $display({"You've got 1",$unit::name,"!"});
  $display({"I've got 1", name,"!"});
  $display({"I've got 2",$root.tb.name,"!"});
endtask :task_name

initial begin
  task_name();
end
endmodule


