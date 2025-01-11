class packet;
  rand bit [3:0] a;
endclass

module tb();
packet p1;
packet p2;
initial begin
  p1 = new();
  p2 = new();

  if(p1.randomize()) begin
  $display("Class p1 Output: %0d",p1.a);
  end

  p1 = null;
  if(p1 == null) begin
    $display("Class p1 deleted successfully");
  end 
  else begin
    $display("Class p1 Output after deletion: %0d", p1.a);
end
end
endmodule

