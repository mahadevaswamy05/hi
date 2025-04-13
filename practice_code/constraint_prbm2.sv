
class packet;
  rand bit [5:0] array [100];
  constraint a1 {foreach(array[i])
    array[i] inside {[1:50]};}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(3) begin
  p1.randomize()with{ foreach(array[i])
                      array[i] inside {10,20};};
  $display("%0p",p1.array);
end end
endmodule 
