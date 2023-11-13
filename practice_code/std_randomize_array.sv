//std_randomization using array
module tb;
bit [7:0] array[];

initial begin
  repeat(10) begin
    std::randomize(array) with{
      array.size() == 5;
      array.sum() with (item >10? item:0) == 100;};
      $display("%0p",array);
    end
  end
  endmodule
