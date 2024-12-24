//write a constraint such that for a memory of 1kb , 30 to 70 addresses would not select

class packet;
  rand bit [9:0] memory;
  //  constraint a1 { memory inside {[0:1023]};}
  constraint a2 {! (memory inside {[30:70]});}
endclass
module tb();
packet p1;
  int i;
initial begin
  p1 = new();
  repeat(1000) begin
  p1.randomize();
  if((p1.memory) >= 30 &&(p1.memory<=70)) begin 
  i++;
end
  $display("the Memory side is :%0d", p1.memory);
  end
  $display("the Memory side is i :%0d", i);
end
endmodule
