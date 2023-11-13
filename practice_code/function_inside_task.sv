
module test;  
initial begin  
  void'(function_name);  
end  

function function_name;    
  $display($time, "\t I'm in function");
  fork 
    $display("\t calling task inside a function");
    task_name;
  join_none
endfunction  

task task_name;    
  #5 $display($time,"\t Now I'm in task");   
endtask  

endmodule  
