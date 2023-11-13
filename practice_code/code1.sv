class name;
  rand bit [3:0]port_num;
  constraint add_r { port_num inside {[1:5]};}
endclass

module tb;
name n1;
initial begin
  n1 = new();
  repeat(5) begin 
  void'(n1.randomize);
  $display("the value port_num=%0d",n1.port_num);
end end
endmodule
