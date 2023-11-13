
class name;
  rand bit [0:6] array[100];
  constraint addr {foreach(array[i]) 
                      array[i] inside {[1:50]}; } 
endclass

module tb;
name n1;
initial begin
n1=new();
  repeat(5) begin
  void'(n1.randomize);
  $display("theb value of array=%p",n1.array);
end
end
endmodule
