/*ow to write constraint for this md array
md_array=‘{‘{‘h0,’h0,’h0,’h0},’{‘h1111,’h0,’h0,’h0},’{‘h1111,’h1111,’h0,’h0},’{‘h1111,’h1111,’h1111,’h0}}
*/
class c;
  rand bit [15:0] array[4][4];
  constraint c_addr 
  {
    foreach(array[i,j]) {
      if(i<j)
         array[i][j]==16'h1111;
         else
         array[i][j]==16'h0000;
    }
  }

  endclass
    module tb;
    c c1;
    initial begin
      c1= new();
      repeat(5) begin
      void'(c1.randomize);
      $display("the value a=%0p",c1.array);
    end
  end
  endmodule
